/*
*   Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/

["FALLEN EAGLE","JDAM",{_this call compile preprocessFileLineNumbers "USER\functions\fn_zeus_jdam.sqf"}] call zen_custom_modules_fnc_register;
["FALLEN EAGLE","Repair Building",{[_this#0,0] call mcd_fnc_zeus_setBuildingDamage}] call zen_custom_modules_fnc_register;
["FALLEN EAGLE","Destroy Building",{[_this#0,1] call mcd_fnc_zeus_setBuildingDamage}] call zen_custom_modules_fnc_register;
