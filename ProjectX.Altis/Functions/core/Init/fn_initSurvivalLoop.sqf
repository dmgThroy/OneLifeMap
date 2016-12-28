/*
Author: Kerkkoh
First Edit: 19.4.2016
*/

for "_i" from 0 to 1 step 0 do {
	sleep 240;
	RLP_hunger = RLP_hunger + 1;
	RLP_thirst = RLP_thirst + 2;
	switch (true) do {
		case (RLP_hunger >= 100): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#750016' size='1.2'>Starvation imminent!!</t>";
			_newdmg = (damage player) + 0.2;
			if (_newdmg >= 1) then {
				RLP_hunger = 0;
				RLP_thirst = 0;
				player setDamage 1;
			} else {
				player setDamage _newdmg;
			};
			hint _hint;
		};
		case (RLP_hunger >= 90): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#B80000'>You are starving!</t>";
			hint _hint;
		};
	};
	switch (true) do {
		case (RLP_thirst >= 100): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#0F0094' size='1.2'>You are dying of thirst!!</t>";
			_newdmg = (damage player) + 0.2;
			if (_newdmg >= 1) then {
				RLP_hunger = 0;
				RLP_thirst = 0;
				player setDamage 1;
			} else {
				player setDamage _newdmg;
			};
			hint _hint;
		};
		case (RLP_thirst >= 90): {
			_hint = parseText "<t color='#fff95b' size='1.3' align='center'>Survival:<br /></t><t color='#1700E6'>You really need a drink!</t>";
			hint _hint;
		};
	};
};