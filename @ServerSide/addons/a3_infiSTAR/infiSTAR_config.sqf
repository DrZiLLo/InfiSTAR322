_serverCommandPassword = '';

_passwordAdmin = '';
/* _serverCommandPassword and _passwordAdmin should always be different passwords or it could cause problems! */



/*
	_MOD can be 'Epoch', 'AltisLife', 'KOTH', 'WASTELAND' or 'Other'.
	You have to set the mod you run manually
	e.g.
	_MOD = 'KOTH';

	(should be AltisLife for any "Life" Mod - if it doesn't work you can still change it to other / empty string)
*/
_MOD = 'Other';







/* "_OPEN_ADMIN_MENU_KEY": Key to open the menu (google DIK_KeyCodes (0x3B is F1))   */
_OPEN_ADMIN_MENU_KEY = 0x3B;

/* What ESCAPE Menu shows */
_ESCMNUTOP = '';
_ESCMNUBOT = '';
_BRIEFING_MSG = false;	/* use mission briefing message: if   "_BRIEFING_MSG = false;"   then the message will be replaced by infiSTAR */

/* shows RESTART IN X MINS */
_USE_RESTART_TIMER = false;	/* true or false */
_RESTART_TIME_IN_M = 180;		/* restart time in minutes */
_SHOW_TIMER_IN_MIN = [1,2,3,5,10];	/* minutes before restart, when message is shown */

/* The following 3 options can be disabled by putting the value to -1. For example "_TGV = -1;" */
/* Terrain Grid Value   */ _TGV = -1;		/* 50, 25, 12.5  */	/* if set to 50 grass will be very low for better client FPS.. default is 25 ~35 is good performance and grass :) */
/* ViewDistance Value   */ _VDV = -1;
/* ObjectViewDistance   */ _VOV = -1;

/* "_LogAdminActions": Sends actions done by each admin to the server to log it to the .txt file and .rpt file + sends it back to all other admins. */
_LogAdminActions = true;	/* true or false */
_enableIngameLogs = true;	/* true or false */

/* Use infiSTAR Tild (CommandingMenu) */
_useTildMenu = false;	/* true or false */

/* "_startAsNormal": if you add admin UIDs in here as well, they will start as almost "normal" player instead of with admin menu and such. */
_startAsNormal =
[
	'0','0','0'
];
/* if one of the admins with the UIDs in "_startAsNormal" uses the !admin command to login as admin, it will be announced to ANYONE on the server if "_announce_adminstate_changed" is true. */
_announce_adminstate_changed = false;	/* true or false */
_use_html_load_on_adminmenu = false;		/* default and recommended is TRUE. infiSTAR updates and news are announced in the top right corner when you open the AdminMenu if this is true! */


_adminUIDandAccess =
[
	[
		["","","",""],
		[
			'Teleport On Map Click','Teleport - Target To Me','Teleport - Me To Target','Teleport In Facing Direction (10m steps)',
			'spectating','AdminConsole','Delete Vehicle','FlyUp','EjectTarget','ToggleVehLock','ShowGear',
			'HealSelf','HealRepairNear','AdminStart','AdminLog','Freeze Target','UnFreeze Target',
			'==== Loadouts ====','==== WeatherLord ====','==== Base Deleter ====','==== VirtualItems ====',
			'==== Weapons ====','==== Magazines ====','==== Bags ====','==== Vehicles ====','==== Objects ====','==== AltisLife Money ====',
			'Remove Gear','Revive','Heal','Restore','Move In My Vehicle','Move In Target Vehicle','Parachute Target',
			'Spawn UAV','Spawn Cloak','Spawn Sapper','Spawn SapperB','Eject','Eject Crew','Kill','Explode','MineField (around target)','Zeus','Force Disconnect',
			'Kick (Silent)','Kick (Announce)','Ban (Silent)','Ban (Announce)',
			'Default Epoch Player ESP','Default Epoch Vehicle ESP','infiSTAR Player ESP 1',
			'infiSTAR Player ESP 2','infiSTAR Dead ESP','infiSTAR AI ESP',
			'infiSTAR LockBox ESP','infiSTAR Shelf ESP','infiSTAR PlotPole ESP','Fake Epoch group to nearest PlotPole',
			'infiSTAR MapIcons','PlotPole Marker','Vehicle Marker','Construction Marker','LockBox Marker','DeadPlayer Marker',
			'God Mode','Vehicle God Mode','Lower Terrain','Vehboost','UnlimAmmo','noRecoil','FastFire','Stealth / Invisible',
			'Disable Announces','Show FPS','Give All Licenses','Call EMP','Mass Message','DayTime','NightTime','Add / Remove Crypto',
			'Spawn Epoch-Box','Spawn Support-Box1','Spawn Support-Box2','Spawn Support-Box3',
			'Spawn Ammo','showinfo','Login as Arma Admin','BIS FreeRoam Cam (works with ESP)','FreeRoam Cam (does not work with ESP)',
			'Request Steam Name','Dump unique client variables',
			'Restrain','Unrestrain',
			'Arsenal'
		]
	]
];


/*
	What is this?
	infiSTAR has a global ban system so hackers don't jump around servers and learn how to bypass infiSTAR.

	There was a situation where a group of people asked why their friend could not join the server.
	Well he was globally banned for hacking.. anyways - if you as a server admin want him to get in even tho he is globally banned,
	just ask for his UID and add the UID in the array below.
*/
_USE_GLOBAL_BAN_CHECK = false;		/* if false, it can not kick or ban global banned people but it will still "log" them. So you know a globally banned person joined your server. */
_BAN_GLOBAL_BANNED_LOCALLY = false;	/* if false, it will kick global banned people */
_UID_SKIP_GLOBAL_BAN_CHECK =
[
	"","","",""
];
/* ********************************************************************************* */
/*            many checks should be set to true instead of false.                    */
/*     These are just diabled because the average user doesn't read this file..      */
/* ********************************************************************************* */
/*  Items Added Check    */ _IAC = false;	/* true or false */	/* checks if Items are being added unrightful! */
/*  Local Vehicle Check  */ _LVC = false;	/* true or false */
/*  unitRecoil checks    */ _URC = false;	/* true or false */	/* checks unitRecoilCoefficient and resets default unitRecoilCoefficient */
/*  Notification check   */ _UNC = false;	/* true or false */	/* _UNC = false; on AltisLife! - showNotification check */
/*  Use MPInterrupt check*/ _UMP = false;	/* true or false */
/*  Check BTTNs on D49   */ _B49 = false;	/* true or false */	/* will announce: BadButton on 49 */
/*  whitelist for _B49   */ _excludedButtons = [];	/* Will Kick for BadButton XYZ if a customnized button is not white-listed here. Example: _excludedButtons = [1010]; */
/*  Block Hold Actions   */ _BHA = false;	/* true or false */	/* recommended:  true  Used for Hackmenus. */
/*  Check Actions Plr    */ _CAP = false;	/* true or false */	/* "Actions: xxx/xxx possible scroll menu hack (or you added custom actions..)" */
/*  Remove Actions Plr   */ _OAP = false;	/* true or false */	/* Remove ALL Actions on Player Object: (mousewheel actions) needs to be  false  for AltisLife for e.g. gathering */
/*  Remove Actions Objs  */ _OAO = false;	/* true or false */	/* Remove ALL Actions on Objects near Player: (mousewheel actions) needs to be  false  when using e.g. IgiLoad */
/*  Check Attached Objs  */ _CAO = false;	/* true or false */	/* needs to be  false  when using e.g. IgiLoad */
/*  Use Anti Teleport    */ _UAT = false;	/* true or false */	/* might need to be set to false on other mods than Epoch! */
/*  Chat-Vote Day/Night  */ _VDN = true;	/* true or false */
/*  Check Vision Mode    */ _CVM = false;	/* true or false */
/*  check view distance  */ _CVD = false;	/* true or false */	/* if the viewdistance is not 1600 - ban. */
/*  check cameraOn       */ _CCO = false;	/* true or false */	/* needs to be false for UAV drones and such things.. */
/*  Map Icon Check       */ _MIC = false;	/* true or false */	/* Needs to be  false  on some WasteLand versions */
/*  Remove All Mines     */ _RAM = false;	/* true or false */
/*  Remove All UAVs      */ _RUS = false;	/* true or false */
/*  custom HandleDamage  */ _CHD = {};		/* this needs to be CODE */
/*  Revert allowDamage   */ _RAD = false;	/* true or false */	/* if you have safezones using "player allowDamage false;" or similar.. set _RAD = false; */
/*  Revert HandleDamage  */ _RHD = false;	/* true or false */	/* Needs to be  false  for Paintball script */
/*  EH_Draw3D check      */ _C3D = false;	/* true or false */	/* announces: "EH_Draw3D x should be y" */
/*  Revert KeyUp         */ _RUK = false;	/* true or false */	/* recommended:  true  Removes custom KeyUps and sets back the default ones (false with Task Force Radio ?) */
/*  Revert KeyDown       */ _RDK = false;	/* true or false */	/* recommended:  true  Removes custom KeyDowns and sets back the default ones (false with Task Force Radio ?) */
/*  Check Keybinds       */ _CKB = false;	/* true or false */	/* recommended:  true  _RKB needs to be true! Checks Keybinds, if it finds added ones it shows: "KeyBinds added   %1 should be %2" */
/*  check MapSingleClick */ _OMC = false;	/* true or false */	/* announces: "MapSingleClick modified", if modification is found - NEEDS _MBC to be true! */
/*  Remove Hit Handler   */ _REH = false;	/* true or false */	/* Needs to be  false  for Paintball script */
/*  Revert InventoryOpen */ _RIO = false;	/* true or false */	/* AltisLife only: Sets the custom InventoryOpened Handler */
/*  Revert Killed EH     */ _RKH = false;	/* true or false */
/*  check for RscDisplayArsenal */ _checkRscDisplayArsenal = true;	/* true or false */


/*
	this needs to be CODE
	Example:
	_customOnPlayerConnected = {
		params['_id','_uid','_name','_jip','_owner'];
		diag_log format['%1(%2) connected!',_name,_uid];
	};
*/
_customOnPlayerConnected = {};	




/* ------- MONEY CHECKS - BELOW ------- */
_USE_MONEY_CHECKS = false;			// Enable/disable these checks (off by default)

_LIFE_CASH_VAR = "life_cash";
_LIFE_CASH_ADD_LOG = 1000;			// Log if x was added within 0.1 seconds
_LIFE_CASH_ADD_KICK = 1000;			// Kick if x was added within 0.1 seconds

_LIFE_BANK_VAR = "life_bank";
_LIFE_BANK_ADD_LOG = 1000000;			// Log if x was added within 0.1 seconds
_LIFE_BANK_ADD_KICK = 2000000;			// Kick if x was added within 0.1 seconds
/* ------- MONEY CHECKS - ABOVE ------- */



/* ------- SOME EPOCH ONLY FUNCTIONS - BELOW ------- */
/*  Use CombatLog checks */ _CLG = false;	/* true or false */	/* "PLAYERNAME CombatLogged GPS X/Y find the dead body!"
/*  Use Anti Glitch      */ _UAG = false;	/* true or false */	/* a try to stop glitching through walls on Doors/Walls */
/*  Use Anti Wall Look   */ _AWL = false;	/* true or false */	/* *experimental* a try to stop people from watching through Epoch Doors/Walls */
/*  MPHit Log            */ _MPH = false;	/* true or false */	/* will create a A3_MPHIT.txt file where logs hits on players */
/* ------- SOME EPOCH ONLY FUNCTIONS - ABOVE ------- */




/* *** ROPING OPTIONS *** */
/*
	"_KFR" and "_RVR" can run together (both be true) but it is recommended to have both options to false and use "_RPR" with "true" state.
	That will allow players to Lift but they won't be able to drop cars full of people anywhere
*/
/* "_KFR": Will not allow any Rope attached to Vehicle Player - Needs to be  false  for some "towing" scripts.. */
_KFR = false;	/* true or false */

/* "_RVR": Will delete any Rope attached to Vehicle Player and close ones - Needs to be  false  for some "towing" scripts.. */
_RVR = false;	/* true or false */

/* "_RPR": Will only delete Ropes if the roped object has a crew! */
_RPR = false;	/* true or false */


/*  CommandingMenu Check */ _CMC = false;	/* true or false */
/*  Close ALL CMD-Menus  */ _KCM = false;	/* true or false */	/* Just closes All Commandingmenus (ignores the white-list below) */
/* _cMenu: if '_CMC = true;' then this array holds the ALLOWED Commanding Menus */
_cMenu = [];


/*  Check Global Markers */ _CGM = false;	/* true or false */	/* you may need to disable this check for A.I. Missions - or whitelist the used Markers in the _aLocalM Array beneath */
/*  Check Local Markers  */ _CLM = false;	/* true or false */	/* false if you do not want LocalMarker to be checked. */
/*  Use _aLocalM array   */ _UMW = false;	/* true or false */	/* use allowed marker array from below (for example AltisLife uses house_ and others in there) or A.I. Missions */
/* _aLocalM: if '_CLM' && _UMW - this array of names will be allowed */
_aLocalM = [];


/*
	if somebody talks on one of the following channels, his channel will be switched to "direct" channel
	0 = Global
	1 = Side
	2 = Command
	3 = Group
	4 = Vehicle
	5 = Direct <-- this is where people get switched too if they talk in one of the blacklisted channels!
	6-15 = Custom Radio (see radioChannelCreate)
*/
_disAllowVon = [];




/* _badIDDsToKick will be checked before _badIDDsToClose, _badIDDsToClose will be checked before _allowedIDDs */
/* _badIDDsToKick: Forbidden Idds that will get you Kicked by the AH */
_badIDDsToKick = [];

/* _badIDDsToClose: Forbidden Idds that will get closed by the AH */
_badIDDsToClose = [];

/* Use IDD White-List ? */ _UDW = false;	/* true or false */
/* _allowedIDDs: Insert IDDs here to prevent them from being closed! */
_allowedIDDs = [];




/*  Use Memoryhack check */ _UMH = false;	/* true or false */
/*  Use on(Un)Load check */ _UOL = false;	/* true or false */
/* _onLoadUnload1: The AntiHack will test if the client has the same entry as the server. (only if _UOL = true;) */
_onLoadUnload1 = [];

/*  Use BadVar #1 */ _UBV = false;	/* true or false */	/* recommended to use */
/*  Use BadVar #2 */ _UBV2 = false;	/* true or false */	/* recommended to use */
/*  Use BadVar #2 CONTENT */ _UBV2C = false;	/* true or false */	/* NEEDS _UBV2 = true;  -  recommended to use */
/* _badVarWhitelist: These variables are not getting checked by the "BadVar#2" check. */
_badVarWhitelist = [];
/* _blacklistedVariables: The AntiHack will check if one of these variables is existing for the client (only if _UBV = true;) */
_blacklistedVariables = [];



_UVC = false;	/* Use Vehicle Check(s) */
_UVW = false;	/* if "_UVW = true;" then it checks all vehicles on the map. If their type is not in "_VehicleWhiteList", they are flagged as hacked in and destroyed. */
_VehicleWhiteList = [];
_ForbiddenVehicles = [];


_UFI = false;	/* Use "_ForbiddenItems"/Item Check(s) */
_UIW = false;	/* if "_UIW = true;" then it checks if the items the individual player has are in "_ItemWhiteList" */
_ItemWhiteList = [];
_ForbiddenItems = [];
/*
	"_ForbiddenOnEpochOnly" Array has some items that Epoch devs removed and/or replaced with their own items.
	Hackers still have them in their loadouts. Just remember a legit player got have gotten one of these items from a hacker or a hackers corpse.
	So you might want to leave this empty.
*/
_ForbiddenOnEpochOnly = [];


_UFA = false;	/* Use Ammo Check(s) */
_UAW = false;	/* if "_UAW = true;" then it checks if the ammo used by the individual player is in "_AmmoWhiteList" */
_AmmoWhiteList = [];
_ForbiddenAmmo = [];


/*
	custom Box content:
	just an item like it is in the example with   'ItemMap'   will put the item once in the box.
	if an array is used like the   ['ItemGPS',5]   example, well I assume you could guess what it will do.
*/
_SupportBox1Content =
[
	'ItemMap',['ItemGPS',5],'ItemWatch'
];

_SupportBox2Content =
[
	'ItemMap',['ItemGPS',5],'ItemWatch'
];

_SupportBox3Content =
[
	'ItemMap',['ItemGPS',5],'ItemWatch'
];
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ******************************DO NOT TOUCH BELOW********************************* */
EPOCH_server_isPAdmin=compileFinal 'true';
/* ********************************************************************************* */
/* #15179 */
/* ********************************************************************************* */
try {
	_cfgPatches = configFile >> 'CfgPatches';
	for '_i' from 0 to (count _cfgPatches - 1) do
	{
		_patchClass = _cfgPatches select _i;
		if(configName _patchClass == 'A3_epoch_code')exitWith
		{
			_MOD = 'Epoch';
		};
		if(configName _patchClass == 'life_server')exitWith
		{
			_MOD = 'AltisLife';
		};
	};
/****************************************************************************************************/
/****************************************************************************************************/
/****************************************************************************************************/
fnc_CompilableString = {
	_input = _this select 0;
	_output = call {
		if(_input isEqualType {})exitWith{(str(_input)) select [1,((count(str(_input)))-2)]};
		if(_input isEqualType "")exitWith{_input};
		""
	};
	_output
};
fnc_CompilableString = compileFinal ([fnc_CompilableString] call fnc_CompilableString);
publicVariable "fnc_CompilableString";
fn_clean_bad = {
	private _clean = _this;
	_clean = toArray _clean;
	_clean = _clean - [35];
	_clean = toString _clean;
	_clean
};
fn_clean_bad = compileFinal ([fn_clean_bad] call fnc_CompilableString);
IAH_fnc_getIntFromString = {
	params [["_input", "", [""]], ["_pos", 0, [0]]];
	if (_input isEqualTo "") exitWith {-1};
	private _n = (toArray (_input select [_pos, 1])) select 0;
	_n
};
IAH_fnc_getIntFromString = compileFinal ([IAH_fnc_getIntFromString] call fnc_CompilableString);
FN_CALL_ExtDB = if (("extDB3" callExtension "9:VERSION") != "") then {{"extDB3" callExtension _this}} else {{"extDB2" callExtension _this}};
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
	comment 'Antihack & AdminTools - Christian Lorenzen - www.infiSTAR.de - License: (CC)';
	diag_log format['<infiSTAR.de> %1 - run.sqf - including AntiHack',time];
	#include "A3AH.sqf"
	diag_log format['<infiSTAR.de> %1 - run.sqf - AntiHack included!',time];
	diag_log format['<infiSTAR.de> %1 - run.sqf - including AdminTools',time];
	#include "A3AT.sqf"
	diag_log format['<infiSTAR.de> %1 - run.sqf - AdminTools included!',time];
}
catch
{
	for '_i' from 0 to 10 do
	{
		diag_log _exception;
	};
};
/* ********************************************************************************* */
/* *********************************www.infiSTAR.de********************************* */
/* *******************Developed by infiSTAR (infiSTAR23@gmail.com)****************** */
/* **************infiSTAR Copyright®© 2011 - 2017 All rights reserved.************** */
/* ****DayZAntiHack.com***DayZAntiHack.de***ArmaAntiHack.com***Arma3AntiHack.com**** */