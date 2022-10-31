# -*- coding: utf-8 -*-
"""
Created on Sun Oct 30 13:09:52 2022

@author: jgpal

"""

import pandas as pd
import json
import requests
import urllib3
import json
from datetime import datetime
import pytz

## TEST WITH OPEN DATA ON EV
f = open('ev-data.json')
evdata = json.load(f)

# Normalizing data
evdf = pd.DataFrame.from_dict(evdata["data"], orient = "columns")

class EV :    
    def batterySizeData(self, brand, model, year):
        i = evdf.loc[(evdf["brand"] == brand) & (evdf["model"] == model) & (evdf["release_year"] == year)].index
        return evdf.usable_battery_size[i[0]]
    
    def __init__(self, brand, model, year):
        self.brand = brand
        self.model = model
        self.year = year
        self.battery = self.batterySizeData(brand, model, year)
         

myEV1 = EV("Nissan", "Leaf", 2019)
i = evdf.loc[(evdf["brand"] == "Nissan") & (evdf["model"] == "Leaf") & (evdf["release_year"] == 2019)].index
evdf.usable_battery_size[i[0]]






## TEST WITH API FROM DONNEES QUEBEC

# API test for QUARTER HOURLY demand dataset given by Hydro-Quebec:
http = urllib3.PoolManager()
r = http.request('GET', 'https://www.hydroquebec.com/data/documents-donnees/donnees-ouvertes/json/demande.json')
dataset = json.loads(r.data.decode('utf-8'))

def get_recent_demand(dataset_HQ):
    return dataset_HQ["details"][dataset_HQ["indexDonneePlusRecent"]]["valeurs"]["demandeTotal"]
    

# API test for HOURLY information about importations, exportations and GES 

r = http.request('GET', "https://donnees.solutions.hydroquebec.com/donnees-ouvertes/data/json/ges-electricite.json")
dataset = json.loads(r.data.decode('utf-8'))

def get_recent_market(dataset):
    qcTime = pytz.timezone("US/Eastern") 
    timeInQc = datetime.now(qcTime)
    lastUpdate = f"{timeInQc.year}-{timeInQc.month}-{timeInQc.day}T{timeInQc.hour}:00:00"
    return [dictionary for dictionary in dataset["details"] if dictionary["date"] == lastUpdate ][0]
    
    
dic = get_recent_market(dataset)

# API for quarter hourly production :
    
    