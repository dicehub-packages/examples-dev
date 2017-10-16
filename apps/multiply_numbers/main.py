"""
Copyright (c) 2014-2017 by DICE Developers
All rights reserved.
"""

# DICE modules
# ============
from dice_tools import *


class MultiplyNumbers(Application):

    def __init__(self, **kwargs):
        super().__init__(**kwargs)

        notify("Starting Applications")

        self.__result = None

    @diceSlot('QVariant', 'QVariant', name='multiplyNumbers')
    def multiply_numbers(self, number_1, number_2):
        notify("Calculating ... {0} * {1}".format(number_1, number_2))
        self.__result = float(number_1) * float(number_2)
        self.result_changed()

    result_changed = diceSignal(name="resultChanged")

    @diceProperty('QVariant', name='result', notify=result_changed)
    def result(self):
        return self.__result
