if (missionNamespace getVariable ["mcd_playersTeleported",false]) exitWith {
    [objNull,"Players already teleported."] call BIS_fnc_showCuratorFeedbackMessage;
};
missionNamespace setVariable ["mcd_playersTeleported",true,true];
missionNamespace setVariable ["ace_map_BFT_Enabled",true,true];

{
    [{
        params ["_unit","_forEachIndex"];
        _pos = mcd_teleportPositionsASL param [_forEachIndex,[0,0,0]];
        [_unit,_pos] remoteExec ["mcd_fnc_teleport",_unit,false];
    },[_x,_forEachIndex],random 3] call CBA_fnc_waitAndExecute;
} forEach playableUnits;
