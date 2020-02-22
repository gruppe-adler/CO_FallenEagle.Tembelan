params ["_pos","_droppedOnObj"];

mcd_endMissionConfirmationCount = (missionNamespace getVariable ["mcd_endMissionConfirmationCount",0]) + 1;

if (mcd_endMissionConfirmationCount < 2) exitWith {
    [objNull,"Erneut platzieren, um wirklich zu beenden."] call BIS_fnc_showCuratorFeedbackMessage;
};

if (missionNamespace getVariable ["mcd_missionEnding",false]) exitWith {
    [objNull,"Mission endet bereits."] call BIS_fnc_showCuratorFeedbackMessage;
};

missionNamespace setVariable ["mcd_missionEnding",true,true];

sleep 5;
[[],{
    ["end1",true, true, true, true] spawn BIS_fnc_endMission;
}] remoteExec ["spawn",0,false];
