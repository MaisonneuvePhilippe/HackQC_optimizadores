# -*- coding: utf-8 -*-
"""
Created on Sun Oct 30 13:09:52 2022

@author: Julien Pallage

"""

import pandas as pd
import numpy as np
import json
import requests
import urllib3
import json
from datetime import datetime
import pytz


## TEST WITH API FROM DONNEES QUEBEC

## API test for QUARTER HOURLY demand dataset given by Hydro-Quebec:
http = urllib3.PoolManager()
r = http.request(
    "GET",
    "https://www.hydroquebec.com/data/documents-donnees/donnees-ouvertes/json/demande.json",
)
dataset_demand = json.loads(r.data.decode("utf-8"))


def get_recent_demand(dataset_HQ):
    return dataset_HQ["details"][dataset_HQ["indexDonneePlusRecent"]]["valeurs"][
        "demandeTotal"
    ]


# gives the past n demands (increments of 15 minutes) in chronological order
def get_n_last_demand(dataset_HQ, n):
    lastIndex = dataset_HQ["indexDonneePlusRecent"]
    ndemands = []
    test = lastIndex - n + 1
    test = test if test >= 0 else 0
    for i in np.arange(test, lastIndex + 1):
        ndemands.append(dataset_HQ["details"][i]["valeurs"]["demandeTotal"])
    return ndemands


## API test for HOURLY information about importations, exportations and GES
r = http.request(
    "GET",
    "https://donnees.solutions.hydroquebec.com/donnees-ouvertes/data/json/ges-electricite.json",
)
dataset_market_ges = json.loads(r.data.decode("utf-8"))

# note : no easy way to find the last update in the dataset, this is a quick fix
# but doesn't consider exceptions when changing months or years
def get_recent_market(dataset):
    qcTime = pytz.timezone("US/Eastern")
    timeInQc = datetime.now(qcTime)
    if timeInQc.hour == 0 and timeInQc.minute <= 35:
        lastUpdate = f"{timeInQc.year}-{timeInQc.month}-{timeInQc.day - 1}T23:00:00"
    elif timeInQc.minute < 35:
        lastUpdate = f"{timeInQc.year}-{timeInQc.month}-{timeInQc.day}0T{timeInQc.hour - 1:02}:00:00"
    else:
        lastUpdate = (
            f"{timeInQc.year}-{timeInQc.month}-{timeInQc.day}T{timeInQc.hour:02}:00:00"
        )
    return [
        dictionary
        for dictionary in dataset["details"]
        if dictionary["date"] == lastUpdate
    ][0]


HIGH_GES = 50000  # total des émissions directes de GES, en kilogrammes d’équivalent CO2 (kg), random number, should do research first
# returns true if GES due to power consumption goes higher than HIGH_GES
# could send a notification to the user if that's the case
def get_ges_and_alert(dataset):
    lastMarket = get_recent_market(dataset)
    ges = lastMarket["Quebec_Consommation_GES"]["total"]
    alert = ges > HIGH_GES
    return [ges, alert]


get_ges_and_alert(dataset_market_ges)

## API for bi-hourly production :
r = http.request(
    "GET",
    "https://www.hydroquebec.com/data/documents-donnees/donnees-ouvertes/json/production.json",
)
dataset_production = json.loads(r.data.decode("utf-8"))

# returns only the total energy production
def get_recent_production_total(dataset_HQ):
    return dataset_HQ["details"][dataset_HQ["indexDonneePlusRecent"]]["valeurs"][
        "total"
    ]


# gives the past n total power (increments of 30 minutes) in chronological order
def get_n_last_production_total(dataset_HQ, n):
    lastIndex = dataset_HQ["indexDonneePlusRecent"]
    nprod = []
    test = lastIndex - n + 1
    test = test if test >= 0 else 0  # if index is negative, start at 0
    for i in np.arange(test, lastIndex + 1):
        nprod.append(dataset_HQ["details"][i]["valeurs"]["total"])
    return nprod


def get_recent_production_sources(dataset_HQ):
    return dataset_HQ["details"][dataset_HQ["indexDonneePlusRecent"]]["valeurs"]


# API for debit rivieres :
r = http.request(
    "GET",
    "https://www.hydroquebec.com/data/documents-donnees/donnees-ouvertes/json/Donnees_VUE_CENTRALES_ET_OUVRAGES.json",
)
dataset_debit = json.loads(r.data.decode("utf-8"))


# not elegant, but gets the job done
def get_aggregated_water_flow(dataset):
    total_flow = 0
    for site in dataset["Site"]:
        for element in site["Composition"]:
            if element["type_point_donnee"] == "Débit total":
                total_flow += float((list(element["Donnees"].values())[-1]))
    return total_flow
