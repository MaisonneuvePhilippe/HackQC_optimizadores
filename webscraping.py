import imp
from bs4 import BeautifulSoup
import requests
import pandas as pd

CITY = {
    "Montreal": "https://weather.com/fr-CA/temps/parheure/l/623267a6cbae200f3c71ffba3e29de9696db705ae363efd10c32b3072fa43af4",
    "Quebec": "https://weather.com/fr-CA/temps/parheure/l/9e8fe4026d99ec5975cd95d3fb890e1c93041034b1a243aa640d65d2b90d9441",
    "Gatineau": "https://weather.com/fr-CA/temps/parheure/l/03eb9f889bd959afda59325f2a5ca107c5f6914bd97408accb62cd668acfffdc",
    "Sheerbrooke": "https://weather.com/fr-CA/temps/parheure/l/cc768c900e8a81e07fc501e9021b2350793db46ac55ff74180e594143b491ea9",
}


def get_meteo(n, city):
    html_text = requests.get(CITY[city]).text

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
