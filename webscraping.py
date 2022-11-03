import imp
from bs4 import BeautifulSoup
import requests
import pandas as pd


def get_meteo(n):
    html_text = requests.get(
        "https://weather.com/fr-CA/temps/parheure/l/623267a6cbae200f3c71ffba3e29de9696db705ae363efd10c32b3072fa43af4"
    ).text

    items = []
    soup = BeautifulSoup(html_text, "lxml")
    for i in range(n):
        bloc = soup.find("details", id="detailIndex" + str(i))
        hour = bloc.find("h3", attrs={"data-testid": "daypartName"}).text
        temperature = bloc.find("span", attrs={"data-testid": "TemperatureValue"}).text
        wind = bloc.find("span", attrs={"data-testid": "Wind"}).text
        humidity = (
            bloc.find("li", attrs={"data-testid": "HumiditySection"})
            .find("span", attrs={"data-testid": "PercentageValue"})
            .text
        )

        item = {
            "hour": hour,
            "temperature": temperature,
            "wind": wind,
            "humidity": humidity,
        }
        items.append(item)
    df = pd.DataFrame(items)
    return df
