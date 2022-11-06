class agent:
    def __init__(
        self,
        batterie_init,
        capacity,
        charging_speed,
        maximum_driving_distance,
        dynamic_pricing=True,
    ):
        self.batterie = batterie_init
        self.capacity = capacity
        self.charging_speed = charging_speed
        self.maximum_driving_distance = maximum_driving_distance
        self.is_dynamic = dynamic_pricing
        charging_level = []
        profit = []
        avoided_co2 = 0
