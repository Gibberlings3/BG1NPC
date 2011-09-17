BEGIN ~X#GARAR~

IF ~OR(2) !InParty("garrick") StateCheck("garrick",CD_STATE_NOTVALID)~ THEN BEGIN BogOffCharname
	SAY @0
	IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN BEGIN ArchibaldIntro
	SAY @1
	++ @2 DO ~SetGlobal("X#ArchibaldSpoken","GLOBAL",2)~ + Arch1
	++ @3 DO ~SetGlobal("X#ArchibaldSpoken","GLOBAL",2)~ + Arch2
	++ @4 DO ~SetGlobal("X#ArchibaldSpoken","GLOBAL",2)~ + Arch1
END

IF ~~ THEN BEGIN Arch1
	SAY @5
	IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Arch2
	SAY @6
	++ @7 + Arch3
	++ @8 + Arch1
END

IF ~~ THEN BEGIN Arch3
	SAY @9
	++ @10 + Arch4
	++ @11 + ArchGarri
	++ @12 + ArchGarri
END

IF ~~ THEN BEGIN Arch4
	SAY @13
	= @14
	= @15
	++ @16 + ArchGarri
END

CHAIN ~X#GARAR~ ArchGarri
@17
== ~%GARRICK_JOINED%~ @18
== ~X#GARAR~ @19
== ~%GARRICK_JOINED%~ @20
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @21
== ~X#GARAR~ @22
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @23
== ~%GARRICK_JOINED%~ @24
END
IF ~~ THEN DO ~ActionOverride("archibald",GiveItem("X#GARBK",Player1)) SetGlobal("X#GarrickQuest","GLOBAL",1) SetGlobalTimer("X#GarrickBookTalkTimer","GLOBAL",10)~
EXIT

APPEND ~%GARRICK_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#GarrickReadBook","GLOBAL",1)~ THEN BEGIN GarrickReadBook
	SAY @25
	++ @26 DO ~SetGlobal("X#GarrickReadBook","GLOBAL",2)~ GOTO BookQuestOK
	++ @27 DO ~SetGlobal("X#GarrickReadBook","GLOBAL",2)~ GOTO GarrickBookNo
END

IF ~~ THEN BEGIN BookQuestOK
	SAY @28
	IF ~~ THEN UNSOLVED_JOURNAL @29 EXIT
END

IF ~~ THEN BEGIN GarrickBookNo
	SAY @30
	IF ~~ THEN UNSOLVED_JOURNAL @29 EXIT
END

END
