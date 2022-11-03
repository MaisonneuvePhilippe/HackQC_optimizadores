import cvxpy as cp
import numpy as np

# Problem data.
# m = 30
# n = 20
# np.random.seed(1)
# A = np.random.randn(m, n)
# b = np.random.randn(m)

# # Construct the problem.
# x = cp.Variable(n)
# objective = cp.Minimize(cp.sum_squares(A @ x - b))
# constraints = [0 <= x, x <= 1]
# prob = cp.Problem(objective, constraints)

# # The optimal objective value is returned by `prob.solve()`.
# result = prob.solve()
# # The optimal value for x is stored in `x.value`.
# print(x.value)
# # The optimal Lagrange multiplier for a constraint is stored in
# # `constraint.dual_value`.
# print(constraints[0].dual_value)

M = 100000


def EV_charging_model(
    charging_speed,
    battery_capacity,
    battery_start_charge,
    charge_objective,
    price,
    rolling_horizon=8,
    time_step=0.25,
):
    charging = cp.Variable(int(rolling_horizon / time_step), boolean=True)

    discharging = cp.Variable(int(rolling_horizon / time_step), boolean=True)

    charge_level = cp.Variable(int(rolling_horizon / time_step))

    objective = cp.Maximize(cp.sum(-charging * price) + cp.sum(discharging * price))
    constraints = []
    constraints += [charging + discharging <= 1]
    constraints += [charge_level[0] == battery_start_charge]
    constraints += [
        charge_level[i + 1]
        == charge_level[i] + charging_speed * time_step * (charging[i] - discharging[i])
        for i in range(int(rolling_horizon / time_step) - 1)
    ]
    constraints += [
        charge_level[i] <= battery_capacity
        for i in range(int(rolling_horizon / time_step))
    ]

    constraints += [
        charge_level[i] >= 0 for i in range(int(rolling_horizon / time_step))
    ]

    constraints += [
        charging[i] * M + (charge_level[i] - charge_objective[i]) >= 0
        for i in range(int(rolling_horizon / time_step))
    ]

    prob = cp.Problem(objective, constraints)

    # The optimal objective value is returned by `prob.solve()`.
    result = prob.solve(solver="SCIPY")
    # The optimal value for x is stored in `x.value`.
    print(discharging.value)
    print(charging.value)
    print(charge_level.value)
    print("optimal value", prob.value)


print(cp.installed_solvers())
EV_charging_model(100, 1000, 0, [1] * 32, [1, 6] * 16)
