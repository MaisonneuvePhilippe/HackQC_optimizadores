from datetime import datetime
from datetime import timedelta
from webscraping import get_meteo
from utils import is_holiday, is_week_end
import re


import pickle
import pandas as pd
import numpy as np
import requests
import urllib3
import json
import pytz


loaded_model = pickle.load(open("./200x200x200NN.sav", "rb"))


NORMALIZATION_FACTORS = {
    "hour": {"mean": 12.49988592288387, "std": 6.922466540875834},
    "month": {"mean": 6.5238421172712755, "std": 3.4488784841025004},
    "temperature": {"mean": 7.976209217430983, "std": 12.094890010453868},
    "wind": {"mean": 16.138061829796943, "std": 8.959418919100523},
    "humidity": {"mean": 68.31602213096053, "std": 17.735078701122347},
    "production": {"mean": 25391.06642140087, "std": 5532.814149841583},
}


def hour_rounded_up(t):
    return t.replace(second=0, microsecond=0, minute=0, hour=t.hour) + timedelta(
        hours=1
    )


def interpolate_list_linear(l, n):
    interpolated = []
    for i in range(len(l) - 1):
        delta = l[i + 1] - l[i]
        for j in range(n):
            interpolated.append(l[i] + delta * j / n)
    interpolated.append(l[-1])
    return interpolated


def get_future_production(n):
    next_production = []
    now = datetime.now()

    next_hour = hour_rounded_up(now)
    meteo = get_meteo(n)
    http = urllib3.PoolManager()
    r = http.request(
        "GET",
        "https://www.hydroquebec.com/data/documents-donnees/donnees-ouvertes/json/demande.json",
    )
    dataset = json.loads(r.data.decode("utf-8"))

    production_minus1H = dataset["details"][dataset["indexDonneePlusRecent"] - 4][
        "valeurs"
    ]["demandeTotal"]

    production_instant = dataset["details"][dataset["indexDonneePlusRecent"]][
        "valeurs"
    ]["demandeTotal"]

    for i in range(n):

        month = next_hour.month
        hour = next_hour.hour
        meteo_line = meteo.iloc[i]
        month_normalized = (
            month - NORMALIZATION_FACTORS["month"]["mean"]
        ) / NORMALIZATION_FACTORS["month"]["std"]

        hour_normalized = (
            hour - NORMALIZATION_FACTORS["hour"]["mean"]
        ) / NORMALIZATION_FACTORS["hour"]["std"]

        temperature = re.findall(r"\d+", meteo_line["temperature"])[0]
        wind = re.findall(r"\d+", meteo_line["wind"])[0]
        humidity = re.findall(r"\d+", meteo_line["humidity"])[0]

        temperature_normalized = (
            int(temperature) - NORMALIZATION_FACTORS["temperature"]["mean"]
        ) / NORMALIZATION_FACTORS["temperature"]["std"]

        wind_normalized = (
            int(wind) - NORMALIZATION_FACTORS["wind"]["mean"]
        ) / NORMALIZATION_FACTORS["wind"]["std"]

        humidity_normalized = (
            int(humidity) - NORMALIZATION_FACTORS["humidity"]["mean"]
        ) / NORMALIZATION_FACTORS["humidity"]["std"]

        production_instant_normalized = (
            production_instant - NORMALIZATION_FACTORS["production"]["mean"]
        ) / NORMALIZATION_FACTORS["production"]["std"]

        production_minus1H_normalized = (
            production_minus1H - NORMALIZATION_FACTORS["production"]["mean"]
        ) / NORMALIZATION_FACTORS["production"]["std"]

        X = pd.DataFrame(
            [
                {
                    "hour": hour_normalized,
                    "month": month_normalized,
                    "temperature": temperature_normalized,
                    "wind_speed": wind_normalized,
                    "relative_humidity": humidity_normalized,
                    "is_holiday": is_holiday(next_hour),
                    "is_weekend": is_week_end(next_hour),
                    "normalize_production_minus_1": production_instant_normalized,
                    "normalize_production_minus_2": production_minus1H_normalized,
                }
            ]
        )

        next_hour_production = loaded_model.predict(X)[0]

        next_production.append(next_hour_production)
        production_minus1H = production_instant
        production_instant = next_hour_production

        next_hour += timedelta(hours=1)
    return next_production


def production_to_price(production):
    price = []

    for i in range(len(production)):
        price.append(
            2.6983 * 10**-12 * production[i] ** 3
            - 7.6478 * 10**-8 * production[i] ** 2
            + 3.5189 * 10**-4 * production[i]
            + 6,
        )
    return price


import matplotlib.pyplot as plt

prod = get_future_production(8)


print(prod)
prod = interpolate_list_linear(prod, 4)
plt.plot(prod)
plt.show()


price = production_to_price(prod)
print(price)
plt.plot(price)
plt.show()
