# -*- coding: utf-8 -*-
"""
Created on Mon Oct 31 13:59:14 2022

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

# ## TEST WITH OPEN DATA ON EV
# f = open('ev-data.json')
# evdata = json.load(f)

# # Normalizing data
# evdf = pd.DataFrame.from_dict(evdata["data"], orient = "columns")

# class EV :    
#     def batterySizeData(self, brand, model, year):
#         i = evdf.loc[(evdf["brand"] == brand) & (evdf["model"] == model) & (evdf["release_year"] == year)].index
#         return evdf.usable_battery_size[i[0]]
    
#     def __init__(self, brand, model, year):
#         self.brand = brand
#         self.model = model
#         self.year = year
#         self.battery = self.batterySizeData(brand, model, year)
         
# myEV1 = EV("Nissan", "Leaf", 2019)
# i = evdf.loc[(evdf["brand"] == "Nissan") & (evdf["model"] == "Leaf") & (evdf["release_year"] == 2019)].index
# evdf.usable_battery_size[i[0]]

ev = [["Nissan", "Leaf e+", 59.0, 340],
      ["Nissan", "Leaf", 39.0, 235],
      ["Ford", "F-150 Lightning ex. range", 131, 515],
      ["Ford", "F-150 Lightning", 98.0, 375]]

ev_df = pd.DataFrame(ev, columns = ["brand","model","battery","range"])
    
class EV:
    def batterydata(self, brand, model):
        return float(ev_df.loc[(ev_df.brand == brand) & (ev_df.model == model)].battery)
    
    def rangedata(self, brand, model):
        return  float(ev_df.loc[(ev_df.brand == brand) & (ev_df.model == model)].range)
    
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model
        self.batteryCapacity = self.batterydata(brand, model)
        self.range =  self.rangedata(brand, model)
        self.batteryPercentage = 80;
        
    # def __init__(self):
    #     pass
    
    def get_range(self):
        return self.range
    
    def get_batteryPercentage(self):
        return self.batteryPercentage
    
    def get_batteryCapacity(self):
        return self.batteryCapacity
    
    def get_brand(self):
        return self.brand
    
    def get_model(self):
        return self.model 
    
    def set_range(self, distance):
        self.range = distance
    
    def set_batteryCapacity(self, batteryCapacity):
        self.batteryCapacity = batteryCapacity
    
    def set_brand(self, brand):
        self.brand = brand
    
    def set_model(self, model):
        self.model = model
    
    def set_batteryPercentage(self, percentage):
        self.batteryPercentage = percentage
    
class Garage:
    def __init__(self):
        self.nbCars = 0
        self.cars = [] 
        
    def addCar(self, car):
        self.cars.append(car)
        self.nbCars += 1
    
    def removeCar(self, car):
        self.cars.remove(car)
        self.nbCars -= 1
        

# myEV1 = EV("Nissan", "Leaf e+")  
# myEV2 = EV("Nissan", "Leaf") 
# myGarage = Garage()
# myGarage.addCar(myEV1)
# myGarage.addCar(myEV2)
# myGarage.removeCar(myEV1)
# myGarage.cars[0].get_model()