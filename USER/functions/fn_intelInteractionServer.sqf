params ["_target","_caller","_intelID"];

if (isNull _target) exitWith {};
deleteVehicle _target;

private _intelDisplayName = [
    "Ordner",
    "Portemonnaie"
] select _intelID;

private _intelArticle = [
    "einen",
    "ein"
] select _intelID;

["grad_notification1",["INTEL",format ["%1 hat %2 %3 gefunden. (Map >> Briefing)",name _caller,_intelArticle,_intelDisplayName]]] remoteExec ["BIS_fnc_showNotification",0,false];


private _intelDiaryText = [
"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",

"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet."
] select _intelID;

[player,["Diary",[format ["Intel (%1)",_intelDisplayName],_intelDiaryText]]] remoteExec ["createDiaryRecord",0,false];
