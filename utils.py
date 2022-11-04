from calendar import weekday
import datetime
import holidays
from workalendar.america.canada import Quebec


def is_week_end(datetime):
    weekday = datetime.weekday()
    if weekday == 5 or weekday == 6:
        return True
    else:
        return False


def is_holiday(datetime):
    if Quebec().is_working_day(datetime):
        return False
    return True
