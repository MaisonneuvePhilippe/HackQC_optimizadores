# %% Imports

import pyomo.environ as pyo
import numpy as np

from models import deterministic_model


# %% Dummy data

timesteps = np.linspace(1, 24, 24)
price_charge = 5
price_discharge_list = np.random.normal(size=24) + price_charge
price_discharge = {i + 1: v for i, v in enumerate(price_discharge_list)}
soc_init = 0
soc_min_list = [
    10,
    10,
    10,
    10,
    30,
    30,
    30,
    50,
    50,
    30,
    10,
    10,
    10,
    10,
    30,
    30,
    30,
    50,
    50,
    30,
    30,
    50,
    50,
    30,
]
soc_min = {i + 1: v for i, v in enumerate(soc_min_list)}
e_max = 100
p_min = -10
p_max = 10
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

# %%
