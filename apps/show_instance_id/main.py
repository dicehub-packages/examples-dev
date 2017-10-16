"""
Copyright (c) 2014-2017 by DICE Developers
All rights reserved.
"""

# DICE modules
# ============
from dice_tools import *


class ShowInstanceId(Application):

    def __init__(self, **kwargs):
        super().__init__(**kwargs)

        notify("Starting Applications")
