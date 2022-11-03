# %% Imports

import numpy as np
import pyomo.environ as pyo

# %%


def deterministic_model(data):
    # fmt: off
    
    # Initialize model
    model = pyo.ConcreteModel(name="Deterministic model")
    timesteps, price_charge, price_discharge, soc_init, soc_min, e_max, p_min, p_max = data
    
    # Define set and variable
    model.t = pyo.Set(initialize=timesteps)
    model.price_charge = pyo.Param(initialize=price_charge)
    model.price_discharge = pyo.Param(model.t, initialize=price_discharge)
    model.soc_min = pyo.Param(model.t, initialize=soc_min)
    model.soc_init = pyo.Param(initialize=soc_init)
    # model.e_min = pyo.Param(initialize=e_min)
    model.e_max = pyo.Param(initialize=e_max)
    model.p_min = pyo.Param(initialize=p_min)
    model.p_max = pyo.Param(initialize=p_max)
    model.e = pyo.Var(model.t, within=pyo.Reals)
    model.soc = pyo.Var(model.t, within=pyo.PositiveReals)
    model.on_off = pyo.Var(model.t, within=pyo.Binary)
    
    # Objective function: minimize costs
    def obj_rule(mdl):
        return sum(mdl.price_discharge[t] * mdl.e[t] * mdl.on_off[t] - mdl.price_charge * mdl.e[t] * (1 - mdl.on_off[t]) for t in model.t)
    model.objective = pyo.Objective(rule=obj_rule, sense=pyo.maximize)

    # Define soc initial equality constraint
    def soc_init_rule(mdl, t):
        if t == 1:
            return mdl.soc[t] == mdl.soc_init
        else:
            return pyo.Constraint.Skip
    model.soc_init_constraint = pyo.Constraint(model.t, rule=soc_init_rule)
    
    # Define soc equality constraint
    def soc_rule(mdl, t):
        if t > 1:
            return mdl.soc[t] == mdl.soc[t-1] + mdl.e[t]
        else:
            return pyo.Constraint.Skip
    model.soc_constraint = pyo.Constraint(model.t, rule=soc_rule)
    
    # Define soc lower limit
    def soc_lower_rule(mdl, t):
        return mdl.soc[t] >= mdl.soc_min[t]
    model.soc_lower_constraint = pyo.Constraint(model.t, rule=soc_lower_rule)
    
    # Define soc upper limit
    def soc_upper_rule(mdl, t):
        return mdl.soc[t] <= mdl.e_max
    model.soc_upper_constraint = pyo.Constraint(model.t, rule=soc_upper_rule)
    
    # Define power lower limit
    def power_lower_rule(mdl, t):
        return mdl.e[t] >= mdl.p_min
    model.power_lower_constraint = pyo.Constraint(model.t, rule=power_lower_rule)
    
    # Define power upper limit
    def power_upper_rule(mdl, t):
        return mdl.e[t] <= mdl.p_max
    model.power_upper_constraint = pyo.Constraint(model.t, rule=power_upper_rule)

    # Define soc upper limit
    def binary_rule(mdl, t):
        return mdl.on_off[t] >= mdl.price_discharge[t] / mdl.price_charge
    model.binary_constraint = pyo.Constraint(model.t, rule=binary_rule)

    # fmt: on
    return model
