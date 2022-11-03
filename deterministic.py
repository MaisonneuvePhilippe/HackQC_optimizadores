import pyomo.environ as pyo

def deterministic_model(Z, T, H, l, p_mda, p_mtr, max_energy_sell, max_energy_buy, thr_price_c, thr_price_v, losses):
    """
    Parameters:
        T (list): Timesteps, e.g., [1, 2, 3, ..., 24]
        Z (list): Zones, e.g. ['Monterrey', 'Saltillo', 'San Juan del Río']
        H (dict): Hedge quantity, e.g., 'MONTERREY' = 2872
        l (dict): Total estimated load; e.g. L['Monterrey', 1] = 125.67
        p_mda (dict): MDA Prices; e.g. P_mda['Monterrey', 1] = 1225.1
        p_mtr (dict): MTR Prices; e.g. P_mtr['Monterrey', 1] = 1992.8
        max_energy_buy (float): Energy threshold when buying extra energy to sell, e.g. 0.4 of load estimate
        max_energy_sell (float): Energy threshold when buying energy on the MTR, e.g. 0.3 of load estimate
        thr_price_c (float): Price threshold when buying
        thr_price_v (float): Price threshold when selling
        losses (dict): Loss percentage per zone, to be added to load estimate.
    """
    
    
    # Initialize model
    model = pyo.ConcreteModel(name="Deterministic model")
    
    # Define set and variable
    model.Z = pyo.Set(initialize=Z)
    model.T = pyo.Set(initialize=T)
    model.hedge = pyo.Param(model.Z, initialize=H)
    model.max_energy_sell = pyo.Param(initialize=max_energy_sell)
    model.max_energy_buy = pyo.Param(initialize=max_energy_buy)
    model.thr_price_c = pyo.Param(initialize=thr_price_c)
    model.thr_price_v = pyo.Param(initialize=thr_price_v)
    model.losses = pyo.Param(model.Z, initialize=losses)
    model.l = pyo.Param(model.Z, model.T, initialize=l)
    model.p_mda = pyo.Param(model.Z, model.T, initialize=p_mda)
    model.p_mtr = pyo.Param(model.Z, model.T, initialize=p_mtr)
    model.e_c_mda = pyo.Var(model.Z, model.T, within=pyo.NonNegativeReals)
    model.e_c_mtr = pyo.Var(model.Z, model.T, within=pyo.NonNegativeReals)
    model.e_v_mtr = pyo.Var(model.Z, model.T, within=pyo.NonNegativeReals)
    model.on_off_c = pyo.Var(model.Z, model.T, within=pyo.Binary)
    model.on_off_v = pyo.Var(model.Z, model.T, within=pyo.Binary)
    
    # Objective function: minimize costs
    def obj_rule(mdl):
        return sum(mdl.e_c_mda[z,t] * mdl.p_mda[z,t] + mdl.e_c_mtr[z,t] * mdl.p_mtr[z,t] - mdl.p_mtr[z,t] * mdl.e_v_mtr[z,t] for z in model.Z for t in model.T)
    model.obj = pyo.Objective(rule=obj_rule)

    # Define load equality constraint
    def load_rule(mdl, z, t):
        return mdl.l[z,t] * (1 + mdl.losses[z]) == mdl.e_c_mda[z,t] + mdl.e_c_mtr[z,t]
    model.load_constraint = pyo.Constraint(model.Z, model.T, rule=load_rule)
    
    # Define revenue constraint
    def revenue_rule_sell(mdl, z, t):
        return mdl.e_v_mtr[z,t] <= mdl.max_energy_sell * mdl.l[z,t] * (1 + mdl.losses[z]) * mdl.on_off_v[z,t]
    model.revenue_sell_energy_constraint = pyo.Constraint(model.Z, model.T, rule=revenue_rule_sell)
    
    # Define revenue constraint quantity
    def revenue_rule_buy(mdl, z, t):
        return mdl.e_c_mtr[z,t] <= mdl.max_energy_buy * mdl.l[z,t] * (1 + mdl.losses[z]) * (1 - mdl.on_off_v[z,t])
    model.revenue_buy_energy_constraint = pyo.Constraint(model.Z, model.T, rule=revenue_rule_buy)
    
    # Define revenue threshold constraint
    def revenue_threshold_rule(mdl, z, t):
        return mdl.on_off_v[z,t] <= ((mdl.p_mtr[z,t] / mdl.p_mda[z,t]) / mdl.thr_price_v)
    model.revenue_price_constraint = pyo.Constraint(model.Z, model.T, rule=revenue_threshold_rule)
    
    # Define revenue threshold constraint
    def mtr_threshold_rule(mdl, z, t):
        return mdl.on_off_c[z,t] <= ((mdl.p_mda[z,t] / mdl.p_mtr[z,t]) / mdl.thr_price_c)
    model.mtr_threshold_constraint = pyo.Constraint(model.Z, model.T, rule=mtr_threshold_rule)
    
    # Define hedge constraint
    def hedge_limit_rule(mdl, z, t):
        return mdl.e_c_mda[z,t] >= mdl.hedge[z] * mdl.on_off_c[z,t]
    model.hedge_constraint = pyo.Constraint(model.Z, model.T, rule=hedge_limit_rule)
    
     # Define hedge constraint
    def mtr_energy_rule(mdl, z, t):
        return mdl.e_c_mda[z,t] >= mdl.l[z,t] * (1 + mdl.losses[z]) * (1 - mdl.on_off_c[z,t])
    model.mtr_energy_constraint = pyo.Constraint(model.Z, model.T, rule=mtr_energy_rule)

    return model