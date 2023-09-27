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

DEFAULT_LAST_WIN_DATETIME = datetime.datetime(1970, 1, 1)
BASE_XP_PER_SECOND = 0.5833
FIRST_WIN_XP_BONUS = 1200

def xp_to_rank(xp=0):
    ranks = {
        1: {'name': 'Recruit', 'xp': 0},
        2: {'name': 'Cadet', 'xp': 1350},
        3: {'name': 'Cadet First Class', 'xp': 2781},
        4: {'name': 'Squadman I', 'xp': 4298},
        5: {'name': 'Squadman II', 'xp': 5906},
        6: {'name': 'Squadman III', 'xp': 11212},
        7: {'name': 'Senior Squadman', 'xp': 16836},
        8: {'name': 'Squad Leader', 'xp': 22798},
        9: {'name': 'Bannerman', 'xp': 31741},
        10: {'name': 'Legionary I', 'xp': 41130},
        11: {'name': 'Legionary II', 'xp': 50990},
        12: {'name': 'Legionary III', 'xp': 61342},
        13: {'name': 'Senior Legionary', 'xp': 76870},
        14: {'name': 'Sworn Sword', 'xp': 93020},
        15: {'name': 'Specialist I', 'xp': 109815},
        16: {'name': 'Specialist II', 'xp': 127283},
        17: {'name': 'Specialist III', 'xp': 145449},
        18: {'name': 'Senior Specialist', 'xp': 172698},
        19: {'name': 'Tech Specialist', 'xp': 200673},
        20: {'name': 'Lieutenant I', 'xp': 229673},
        21: {'name': 'Lieutenant II', 'xp': 259449},
        22: {'name': 'Lieutenant III', 'xp': 290118},
        23: {'name': 'Senior Lieutenant', 'xp': 321707},
        24: {'name': 'Lieutenant Commander', 'xp': 369091},
        25: {'name': 'Commander I', 'xp': 417896},
        26: {'name': 'Commander II', 'xp': 468166},
        27: {'name': 'Commander III', 'xp': 519943},
        28: {'name': 'Senior Commander', 'xp': 573274},
        29: {'name': 'Knight Commander', 'xp': 628205},
        30: {'name': 'Captain I', 'xp': 684783},
        31: {'name': 'Captain II', 'xp': 743059},
        32: {'name': 'Captain III', 'xp': 803084},
        33: {'name': 'Senior Captain', 'xp': 864909},
        34: {'name': 'Knight Captain', 'xp': 928589},
        35: {'name': 'Marshal I', 'xp': 994179},
        36: {'name': 'Marshal II', 'xp': 1061737},
        37: {'name': 'Marshal III', 'xp': 1131321},
        38: {'name': 'High Marshal', 'xp': 1202994},
        39: {'name': 'Holdfast Lord', 'xp': 1276816},
        40: {'name': 'Champion I', 'xp': 1352853},
        41: {'name': 'Champion II', 'xp': 1431171},
        42: {'name': 'Champion III', 'xp': 1511839},
        43: {'name': 'Champion IV', 'xp': 1594926},
        44: {'name': 'Champion V', 'xp': 1680507},
        45: {'name': 'Fusor', 'xp': 1768654},
        46: {'name': 'Ghost', 'xp': 1859447},
        47: {'name': 'Warlord', 'xp': 1952963},
        48: {'name': 'Collosus', 'xp': 2049284},
        49: {'name': 'Avenger', 'xp': 2148495},
        50: {'name': 'Immortal', 'xp': 2250682}
    }

    if xp < 0:
        xp = 0

    found = False
    previous_rank = 1
    for rank in ranks.keys():
        if found == False:
            if xp < ranks[rank][xp]:
                found = previous_rank
            else:
                previous_rank = rank

    if found == False:
        found = 50

    return found


class PlayerProgression:
    def __init__(self, rank=0, rank_xp=0, last_first_win_time=DEFAULT_LAST_WIN_DATETIME):
        self.rank = rank
        self.rank_xp = rank_xp
        self.last_first_win_time = last_first_win_time

    def is_eligible_for_first_win(self) -> bool:
        # Eligible for first win after midnight of every day
        next_eligible_date = self.last_first_win_time.date() + datetime.timedelta(days=1)
        next_eligible_time = datetime.datetime.combine(next_eligible_date, datetime.time(0, 0, 0))
        return datetime.datetime.utcnow() > next_eligible_time

    def earn_xp(self, time_played: int, was_win: bool) -> None:
        # Base XP (purely from time played)
        xp_earned = time_played * BASE_XP_PER_SECOND

        # First Win of the Day bonus
        if self.is_eligible_for_first_win() and was_win:
            xp_earned += FIRST_WIN_XP_BONUS
            self.last_first_win_time = datetime.datetime.utcnow()

        # Round down, XP must be an integer value
        xp_earned = int(xp_earned)

        self.rank_xp += xp_earned
        self.rank = xp_to_rank(self.rank_xp)

    @classmethod
    def from_dict(cls, d):
        last_first_win_time = DEFAULT_LAST_WIN_DATETIME
        if 'last_first_win_time' in d:
            try:
                last_first_win_time = datetime.datetime.strptime(d['last_first_win_time'], '%Y-%m-%dT%H:%M:%S.%fZ')
            except ValueError:
                # Ignore invalid last first win time
                pass
        return cls(d.get('rank_xp', 0), last_first_win_time)

    def to_dict(self):
        return {
            'rank': xp_to_rank(self.rank_xp),
            'rank_xp': self.rank_xp,
            'last_first_win_time': self.last_first_win_time.strftime('%Y-%m-%dT%H:%M:%S.%fZ')
        }


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
