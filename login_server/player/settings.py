#!/usr/bin/env python3
#
# Copyright (C) 2018  Joseph Spearritt <mcoot@tamods.org>
#
# This file is part of taserver
#
# taserver is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# taserver is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with taserver.  If not, see <http://www.gnu.org/licenses/>.
#

import json
import datetime
from common.game_items import UNMODDED_GAME_SETTING_MODE
from common.statetracer import statetracer

DEFAULT_LAST_WIN_DATETIME_STAMP = datetime.datetime(1970, 1, 1).isoformat()


class PlayerProgression:
    def __init__(self, rank_xp=0, last_win_timestamp=DEFAULT_LAST_WIN_DATETIME_STAMP):
        self.rank_xp = rank_xp
        self.last_win_time = datetime.datetime.fromisoformat(last_win_timestamp)

    @classmethod
    def from_dict(cls, d):
        return cls(d.get('rank_xp', 0), d.get('last_win_time',
                                              datetime.datetime.fromisoformat(DEFAULT_LAST_WIN_DATETIME_STAMP)))

    def to_dict(self):
        return {key: getattr(self, key) for key in vars(self)}


defaults = {
    'clan_tag': '',
    'game_setting_mode': UNMODDED_GAME_SETTING_MODE,
    'progression': dict()
}

load_transforms = {
    'progression': PlayerProgression.from_dict
}

save_transforms = {
    'progression': PlayerProgression.to_dict
}


@statetracer('clan_tag', 'game_setting_mode')
class PlayerSettings:
    def __init__(self):
        self.clan_tag = None
        self.game_setting_mode = None
        self.progression = {}
        self.init_settings_from_dict({})

    def init_settings_from_dict(self, d):
        for key in defaults:
            val = d.get(key, defaults[key])
            if key in load_transforms:
                val = load_transforms[key](val)
            setattr(self, key, val)

    def load(self, filename):
        try:
            with open(filename, 'rt') as infile:
                d = json.load(infile)
        except OSError:
            d = {}

        self.init_settings_from_dict(d)

    def save(self, filename):
        current_values = {key: getattr(self, key) for key in defaults}
        for key, transform in save_transforms.items():
            current_values[key] = transform(current_values[key])
        with open(filename, 'wt') as outfile:
            json.dump(current_values, outfile, indent=4, sort_keys=True)
