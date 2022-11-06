# %% Imports

import pyomo.environ as pyo
import numpy as np
import matplotlib.pyplot as plt
from get_prediction import *
from models import deterministic_model


# %% Dummy data

timesteps = np.linspace(1, 96, 96)
price_charge = 5

prod = [
    23490.0,
    23304.0,
    23101.5,
    23095.5,
    22896.0,
    22947.0,
    23034.0,
    22834.5,
    22824.0,
    22815.0,
    22929.0,
    22822.5,
    22776.0,
    22776.0,
    22735.5,
    22974.0,
    23110.5,
    23007.0,
    23118.0,
    23382.0,
    23727.0,
    23785.5,
    23902.5,
    24414.0,
    24831.0,
    25117.5,
    25018.5,
    25494.0,
    25746.0,
    26121.0,
    26238.0,
    26269.5,
    26577.0,
    26820.0,
    27099.0,
    26931.0,
    27189.0,
    27037.5,
    27219.0,
    27162.0,
    27201.0,
    27196.5,
    27106.5,
    27111.0,
    27159.0,
    27130.5,
    26868.0,
    26791.5,
    26760.0,
    26611.5,
    26440.5,
    26121.0,
    25945.5,
    25926.0,
    25677.0,
    25693.5,
    25530.0,
    25497.0,
    25275.0,
    25513.5,
    25513.5,
    25765.5,
    25726.5,
    26086.5,
    26256.0,
    26352.5,
    26804.5,
    27104.0,
    26927.5,
    26976.0,
    27396.5,
    27547.0,
    27502.0,
    27341.5,
    27398.5,
    27388.0,
    27177.0,
    27542.0,
    27404.5,
    27517.0,
    27328.0,
    27415.0,
    27128.0,
    26507.0,
    26414.5,
    26558.0,
    26097.0,
    25776.0,
    25872.0,
    24950.5,
    25513.5,
    24929.0,
    24718.0,
    23813.5,
    24175.5,
    24125.0,
    23702.0,
]

print("prod:", len(prod))
price = production_to_price(prod)
price = price[0:96]
prod = int(8)
price_discharge_list = price
price_discharge = {i + 1: v for i, v in enumerate(price)}
print(len(price_discharge))
print(price_discharge)
soc_init = 10
soc_min_list = [
    soc_init,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    80,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    50,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
    10,
]
soc_min = {i + 1: v for i, v in enumerate(soc_min_list)}
e_max = 100
p_min = -5
p_max = 5
data = (
    timesteps,
    price_charge,
    price_discharge,
    soc_init,
    soc_min,
    e_max,
    p_min,
    p_max,
)

# %% Define model and run

solver = pyo.SolverFactory("glpk")
model = deterministic_model(data)
results = solver.solve(model)
pyo.assert_optimal_termination(results)

# %% Extract data

soc = model.soc.get_values().values()
e_charge = model.e_charge.get_values().values()
e_discharge = model.e_discharge.get_values().values()

# %% Plot
print(e_charge)
plt.xticks(np.arange(0, len(soc) + 1, 4), labels=[str(i) for i in range(25)])
plt.plot(timesteps, soc, label="SOC")
plt.plot(timesteps, soc_min_list, label="Préférence")

print(soc)
print(soc)

plt.legend()
plt.show()
