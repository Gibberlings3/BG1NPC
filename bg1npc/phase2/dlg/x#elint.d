ADD_STATE_TRIGGER ~%ELDOTH_JOINED%~ 10 ~Global("X#EldothRansom","GLOBAL",0)~

EXTEND_BOTTOM ~%ELDOTH_JOINED%~ 10
IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("X#EldothRansom","GLOBAL",1)~ EXIT
END

//I_C_T2 ~%tutu_scriptbg%WILLIA~ 10 X#ManyInt9
//== ~%ELDOTH_JOINED%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @0
//== ~%tutu_scriptbg%WILLIA~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @1
//END

/* Eldoth Interjection (meeting Priilmu, in chapter 7. He's the beggar/priest of Ilmater in area FW0149 whose idea of suffering includes visits to the Undercellar, and who can take you there.) */
EXTEND_BOTTOM ~%tutu_var%PRIILMU~ 0
IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN EXTERN ~%ELDOTH_BANTER%~ EldothPriest
END

CHAIN ~%ELDOTH_BANTER%~ EldothPriest
@2
== ~%tutu_var%PRIILMU~ @3
== ~%ELDOTH_BANTER%~ @4
== ~%tutu_var%PRIILMU~ @5
== ~%ELDOTH_BANTER%~ @6
== ~%tutu_var%PRIILMU~ @7
== ~%ELDOTH_BANTER%~ @8
== ~%tutu_var%PRIILMU~ @9
END
++ @10 DO ~SetGlobal("X#EldPriest1","GLOBAL",1)~ EXTERN ~%tutu_var%PRIILMU~ PriEld1.10
+ ~PartyHasItem("%tutu_var%scrl3f")!PartyHasItem("%tutu_var%MISC78")~ + @11 DO ~SetGlobal("X#EldPriest1","GLOBAL",1)~ EXTERN ~%tutu_var%PRIILMU~ PriEld1.11
IF ~PartyHasItem("%tutu_var%MISC78")~ THEN REPLY @12 DO ~SetGlobal("X#EldPriest1","GLOBAL",1)~ EXTERN ~%tutu_var%PRIILMU~ PriEld1.12

CHAIN IF ~%BGT_VAR% Global("X#EldPriest1","GLOBAL",1) !Global("X#PRIELD","GLOBAL",3)~ THEN ~%tutu_var%PRIILMU~ PriEld1.10
@13
== ~%ELDOTH_BANTER%~ @14
DO ~TakePartyGold(100) SetGlobal("X#PRIELD","GLOBAL",1) RealSetGlobalTimer("X#EldPoetPri","GLOBAL",10)
ActionOverride(Player1,LeaveAreaLUAPanic("%NEBaldursGate%","",[1053.1330],12))
ActionOverride(Player1,LeaveAreaLUA("%NEBaldursGate%","",[1053.1330],12))
ActionOverride(Player1,SetMasterArea("%NEBaldursGate%"))
ActionOverride(Player2,LeaveAreaLUA("%NEBaldursGate%","",[1077.1360],12))
ActionOverride(Player3,LeaveAreaLUA("%NEBaldursGate%","",[1113.1384],12))
ActionOverride(Player4,LeaveAreaLUA("%NEBaldursGate%","",[1145.1358],12))
ActionOverride(Player5,LeaveAreaLUA("%NEBaldursGate%","",[1121.1333],12))
ActionOverride(Player6,LeaveAreaLUA("%NEBaldursGate%","",[1086.1310],12))~
EXIT

/* Eldoth FAI */

APPEND ~%tutu_var%BENTLY~

IF WEIGHT #-1 ~%BGT_VAR% InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) Global("X#BentEld","GLOBAL",0)~ THEN BEGIN BentEld1.1
SAY @15
IF ~~ THEN DO ~SetGlobal("X#BentEld","GLOBAL",1)~ EXTERN ~%ELDOTH_JOINED%~ 
BentEld1.2
END

IF ~~ THEN BEGIN BentEld1.3
SAY @16
IF ~~ THEN REPLY @17 GOTO BentEld1.4
END

IF ~~ THEN BEGIN BentEld1.4
SAY @18
IF ~~ THEN EXTERN ~%ELDOTH_JOINED%~ BentEld1.5
END

IF ~~ THEN BEGIN BentEld1.6
SAY @19
IF ~~ THEN EXTERN ~%ELDOTH_JOINED%~ BentEld1.7
END

IF ~~ THEN BEGIN BentEld1.8
SAY @20
IF ~~ THEN DO ~StartStore("X#FRIED2",LastTalkedToBy(Myself))~
EXIT
END

IF WEIGHT #-1 ~%BGT_VAR% InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) GlobalGT("X#BentEld","GLOBAL",0)~ THEN BEGIN BentEld1.9
SAY @21
IF ~~ THEN DO ~StartStore("X#FRIED2",LastTalkedToBy(Myself))~
EXIT
END
END

/* Priest of Ilmaater */

APPEND ~%tutu_var%PRIILMU~

IF ~~ THEN BEGIN PriEld1.11
SAY @22
IF ~~ THEN REPLY @23 GOTO PriEld1.14
END

IF ~~ THEN BEGIN PriEld1.12
SAY @24
IF ~~ THEN EXTERN ~%ELDOTH_JOINED%~ PriEld1.16
END

IF ~~ THEN BEGIN PriEld1.14
SAY @25
IF ~~ THEN EXTERN ~%ELDOTH_JOINED%~ PriEld1.15
END

IF ~~ THEN BEGIN PriEld1.17
SAY @26
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) Global("X#PRIELD","GLOBAL",4) Global("X#EldPriest1","GLOBAL",1)~ THEN BEGIN PriEld2.1
SAY @27
IF ~~ REPLY @28 GOTO PriEld2.2
IF ~~ REPLY @29 EXIT
END

IF ~~ THEN BEGIN PriEld2.2
SAY @30
IF ~~ THEN
DO ~TakePartyGold(100) SetGlobal("X#PRIELD","GLOBAL",2) RealSetGlobalTimer("X#EldPoetPri","GLOBAL",10)
ActionOverride(Player1,LeaveAreaLUAPanic("%BaldursGate_Undercellars%","",[132.282],12))
ActionOverride(Player1,LeaveAreaLUA("%BaldursGate_Undercellars%","",[132.282],12))
ActionOverride(Player1,SetMasterArea("%BaldursGate_Undercellars%"))
ActionOverride(Player2,LeaveAreaLUA("%BaldursGate_Undercellars%","",[176.247],12))
ActionOverride(Player3,LeaveAreaLUA("%BaldursGate_Undercellars%","",[231.197],12))
ActionOverride(Player4,LeaveAreaLUA("%BaldursGate_Undercellars%","",[185.327],12))
ActionOverride(Player5,LeaveAreaLUA("%BaldursGate_Undercellars%","",[262.299],12))
ActionOverride(Player6,LeaveAreaLUA("%BaldursGate_Undercellars%","",[352.268],12))~ EXIT
END

END

APPEND ~%ELDOTH_JOINED%~

IF ~~ THEN BEGIN BentEld1.2
SAY @31
IF ~~ THEN EXTERN ~%tutu_var%BENTLY~ BentEld1.3
END

IF ~~ THEN BEGIN BentEld1.5
SAY @32
IF ~~ THEN EXTERN ~%tutu_var%BENTLY~ BentEld1.6
END

IF ~~ THEN BEGIN BentEld1.7
SAY @33
IF ~~ THEN EXTERN ~%tutu_var%BENTLY~ BentEld1.8
END

/* Eldoth Reacts to being teleported by the priest */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#PRIELD","GLOBAL",3)~ THEN BEGIN PriEld3.1
SAY @34
= @35
IF ~~ THEN REPLY @36 DO ~SetGlobal("X#PRIELD","GLOBAL",4)~ GOTO PriEld3.2
IF ~~ THEN REPLY @37 DO ~SetGlobal("X#PRIELD","GLOBAL",4)~ GOTO PriEld3.3
IF ~~ THEN REPLY @38 DO ~SetGlobal("X#PRIELD","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN PriEld1.13
SAY @14
IF ~~ THEN DO ~SetGlobal("X#EldPriest1","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN PriEld1.15
SAY @39
IF ~~ THEN DO ~TakePartyGold(100) SetGlobal("X#PRIELD","GLOBAL",2) RealSetGlobalTimer("X#EldPoetPri","GLOBAL",10)
ActionOverride(Player1,LeaveAreaLUAPanic("%BaldursGate_Undercellars%","",[132.282],12))
ActionOverride(Player1,LeaveAreaLUA("%BaldursGate_Undercellars%","",[132.282],12))
ActionOverride(Player1,SetMasterArea("%BaldursGate_Undercellars%"))
ActionOverride(Player2,LeaveAreaLUA("%BaldursGate_Undercellars%","",[176.247],12))
ActionOverride(Player3,LeaveAreaLUA("%BaldursGate_Undercellars%","",[231.197],12))
ActionOverride(Player4,LeaveAreaLUA("%BaldursGate_Undercellars%","",[185.327],12))
ActionOverride(Player5,LeaveAreaLUA("%BaldursGate_Undercellars%","",[262.299],12))
ActionOverride(Player6,LeaveAreaLUA("%BaldursGate_Undercellars%","",[352.268],12))~ EXIT
END

IF ~~ THEN BEGIN PriEld1.16
SAY @40
IF ~~ THEN EXTERN ~%tutu_var%PRIILMU~ PriEld1.17
END

IF ~~ THEN BEGIN PriEld3.2
SAY @41
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PriEld3.3
SAY @42
IF ~~ THEN EXIT
END

/* Eldoth, Upon Entering Thieve's Guild For The First Time */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#EUETGFTFT","GLOBAL",1)~ THEN BEGIN EUETGFTFT1
SAY @43
IF ~~ THEN DO ~SetGlobal("X#EUETGFTFT","GLOBAL",2)~ EXIT
END

/* Eldoth, Upon Entering Temple Of Tymora For The First Time */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#EUETOTFTFT","GLOBAL",1)~ THEN BEGIN EUETOTFTFT1
SAY @44
++ @45 DO ~SetGlobal("X#EUETOTFTFT","GLOBAL",2)~ + EUETOTFTFT2
END

/* Eldoth, Upon Entering Temple Of Tymora For The First Time (reply to PC) */
IF ~~ EUETOTFTFT2
SAY @46
IF ~~ EXIT
END

/* Eldoth, On First Floor Of Candlekeep Library */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#EOFFOCL","GLOBAL",1)~ THEN BEGIN EOFFOCL1
SAY @47
++ @48 DO ~SetGlobal("X#EOFFOCL","GLOBAL",2)~ + EOFFOCL2
END

/* Eldoth, On First Floor Of Candlekeep Library (reply to PC) */
IF ~~ EOFFOCL2
SAY @49
IF ~~ EXIT
END
 
/* Eldoth, On Reaching The First Level Of The Low Lantern (gambling ship) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#EORTFLOTLL","GLOBAL",1)~ THEN BEGIN EORTFLOTLL1
SAY @50
++ @51 DO ~SetGlobal("X#EORTFLOTLL","GLOBAL",2)~ + EORTFLOTLL2
END

/* Eldoth, On Reaching The First Level Of The Low Lantern (gambling ship) (reply to PC)  */
IF ~~ EORTFLOTLL2
SAY @52
++ @53 + EORTFLOTLL3
END

/* Eldoth, On Reaching The First Level Of The Low Lantern (gambling ship) (reply to PC) */
IF ~~ EORTFLOTLL3
SAY @54
IF ~~ EXIT
END
END

/* rumours file for FAI */

BEGIN ~%tutu_var%rfried2~
IF ~True()~ THEN BEGIN Rumor1
SAY @55
IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN Rumor2
SAY @56
IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN Rumor3
SAY @57
IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN Rumor4
SAY @58
IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN Rumor5
SAY @59
IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN Rumor5
SAY @60
IF ~~ THEN EXIT
END
