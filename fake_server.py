# -*- coding: utf-8 -*-
"""
Created on Fri Nov  4 03:14:53 2022

@author: jgpal
"""

import pandas as pd
import numpy as np
import json
import requests
import urllib3
import json
from datetime import datetime
import pytz
import brainstorm as br
http = urllib3.PoolManager()

while(1):
    ## API test for HOURLY information about importations, exportations and GES 
    r = http.request('GET', "https://donnees.solutions.hydroquebec.com/donnees-ouvertes/data/json/ges-electricite.json")
    dataset_market_ges = json.loads(r.data.decode('utf-8'))
    [ges, alert] = br.get_ges_and_alert(dataset_market_ges)
    
    