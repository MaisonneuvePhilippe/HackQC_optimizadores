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
    model.e_charge = pyo.Var(model.t, within=pyo.PositiveReals)
    model.e_discharge = pyo.Var(model.t, within=pyo.PositiveReals)
    model.soc = pyo.Var(model.t, within=pyo.PositiveReals)
    model.on_off_charge = pyo.Var(model.t, within=pyo.Binary)
    model.on_off_discharge = pyo.Var(model.t, within=pyo.Binary)
    
    # Objective function: minimize costs
    def obj_rule(mdl):
        return sum(mdl.price_discharge[t] * mdl.e_discharge[t] - mdl.price_charge * mdl.e_charge[t] for t in model.t)
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
            return mdl.soc[t] == mdl.soc[t-1] + mdl.e_charge[t] - mdl.e_discharge[t]
        else:
            return pyo.Constraint.Skip
    model.soc_constraint = pyo.Constraint(model.t, rule=soc_rule)
    
    # # Define soc equality constraint
    # def soc_rule(mdl, t):
    #     if t < 2:
    #         return mdl.soc[t] == mdl.soc_init
    #     else:
    #         return mdl.soc[t] == mdl.soc[t-1] + mdl.e_charge[t] - mdl.e_discharge[t]
    # model.soc_constraint = pyo.Constraint(model.t, rule=soc_rule)
    
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
        return mdl.e_discharge[t] <= - mdl.p_min * mdl.on_off_discharge[t]
    model.power_lower_constraint = pyo.Constraint(model.t, rule=power_lower_rule)
    
    # Define power upper limit
    def power_upper_rule(mdl, t):
        return mdl.e_charge[t] <= mdl.p_max * mdl.on_off_charge[t]
    model.power_upper_constraint = pyo.Constraint(model.t, rule=power_upper_rule)

    # # Define binary charge
    # def binary_discharge_rule(mdl, t):
    #     return mdl.on_off_discharge[t] <= mdl.price_discharge[t] / mdl.price_charge
    # model.binary_discharge_constraint = pyo.Constraint(model.t, rule=binary_discharge_rule)
    
    # Define binary balance
    def binary_rule(mdl, t):
        return mdl.on_off_charge[t] + mdl.on_off_discharge[t] == 1
    model.binary_balance_constraint = pyo.Constraint(model.t, rule=binary_rule)

    # fmt: on
    return model
