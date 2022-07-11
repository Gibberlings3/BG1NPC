//CHAIN ~%MINSC_JOINED%~ X#MinscThalanChain
//@0
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @2
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @3
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @4
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @5
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @6
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @7
//== ~%TIAX_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN @8
//== ~%tutu_var%THALAN~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @9
//= @10
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @11
//== ~%tutu_var%THALAN~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @12
//= @13
//= @14
//EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#MIDY3","LOCALS",0) Global("TransformedChicken","GLOBAL",1) Global("X#MinscThalan","GLOBAL",1) !See([ENEMY]) See("dynaheir") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%MINSC_BANTER%~ MIDY3
@176
DO ~SetGlobal("X#MIDY3","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @177
== ~%MINSC_BANTER%~ @0
== ~%DYNAHEIR_BANTER%~ @1
== ~%MINSC_BANTER%~ @2
== ~%DYNAHEIR_BANTER%~ @3
== ~%MINSC_BANTER%~ @4
== ~%DYNAHEIR_BANTER%~ @5
== ~%MINSC_BANTER%~ @6
== ~%DYNAHEIR_BANTER%~ @7
EXIT

I_C_T ~%tutu_var%THALAN~ 32 X#MinscThalan
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @43
== ~%tutu_var%THALAN~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @10
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @11
== ~%tutu_var%THALAN~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @12 
END

CHAIN ~%tutu_var%ELMIN5~ X#ElminBoo
@15
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @16
== ~%tutu_var%ELMIN5~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @17
== ~%tutu_var%ELMIN5~ @18
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @19
END
IF ~~ THEN JOURNAL @20 DO ~ActionOverride("elminster5",EscapeArea())~
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#MinscVitiare","GLOBAL",2)~ THEN ~%MINSC_JOINED%~ X#MinscVitiareTalk
@21
DO ~SetGlobal("X#MinscVitiare","GLOBAL",3)~
== ~%IMOEN_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @22
== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @23
== ~%tutu_var%VITIAR~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @24
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @25
== ~%tutu_var%VITIAR~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @26
== ~%AJANTIS_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("ajantis")~ THEN @27
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @28
== ~%tutu_var%VITIAR~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @29
= @30
DO ~GiveGoldForce(120) SetGlobal("X#MinscVitiare","GLOBAL",4)~
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#MinscVitiare","GLOBAL",5)~ THEN ~%MINSC_JOINED%~ X#MinscViatre2
@31
== ~%tutu_var%VITIAR~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @32
DO ~ActionOverride("vitiare",EscapeArea()) SetGlobal("X#MinscVitiare","GLOBAL",6)~
== ~%AJANTIS_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @33
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @34
== ~%AJANTIS_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @35
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @36
== ~%AJANTIS_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @37
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @38
== ~%AJANTIS_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @39
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @40
EXIT

EXTEND_BOTTOM ~%tutu_var%VITIAR~ 0
IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN DO ~TakePartyGold(100) SetGlobal("X#MinscVitiare","GLOBAL",1)~
EXIT
END

//EXTEND_BOTTOM ~%tutu_var%THALAN~ 32
//IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN SOLVED_JOURNAL @41
//EXTERN ~%MINSC_JOINED%~ X#MinscThalanChain
//END

EXTEND_BOTTOM ~%tutu_var%HAIRTO~ 0
IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !Dead("dynaheir") !InParty("dynaheir")~
DO ~SetGlobal("X#MinscGnarl","GLOBAL",1)~ EXTERN ~%MINSC_JOINED%~ X#MinscGnarlChain
END

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#Minsc3600","GLOBAL",1)~ THEN ~%MINSC_JOINED%~ X#Minsc3600Talk
@42
DO ~SetGlobal("X#Minsc3600","GLOBAL",2)~
== ~%MINSC_JOINED%~ @43 
= @44
= @45 
= @46
== ~%XZAR_JOINED%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @47
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#MinscGnarl","GLOBAL",1)~ THEN ~%MINSC_JOINED%~ X#MinscGnarlChain
@48
= @49 
== ~%tutu_var%HAIRTO~ @50
DO ~SetGlobal("X#MinscGnarl","GLOBAL",2) ActionOverride("gnarl",Enemy()) Enemy()~
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#Minsc2100","GLOBAL",1)~ THEN ~%MINSC_JOINED%~ X#Minsc2100Talk
@51
DO ~SetGlobal("X#Minsc2100","GLOBAL",2)~
EXIT

/* REPLACED MISSING DIALOGUE TRIGGER */

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#Minsc2615","GLOBAL",1)~ THEN ~%MINSC_JOINED%~ X#Minsc2615Talk
@52
DO ~SetGlobal("X#Minsc2615","GLOBAL",2)~
== ~%MINSC_JOINED%~ @43 
= @53
= @54
== ~%MINSC_JOINED%~ @49 
= @55
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @56
== ~%MINSC_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @57
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @58
== ~%MINSC_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @49 
= @59
EXIT

INTERJECT ~%tutu_var%INGOT~ 1 MinscIngot
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !Global("HelpMinsc","GLOBAL",2)~ THEN @60
== ~%tutu_var%INGOT~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !Global("HelpMinsc","GLOBAL",2)~ THEN @61
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !Global("HelpMinsc","GLOBAL",2)~ THEN @62
END
IF ~~ THEN JOURNAL @63
DO ~ActionOverride("minsc",ReallyForceSpellRES("SPIN117",Myself)) ActionOverride("ingot",Enemy())~
EXIT

//I_C_T ~%tutu_scripts%LAVLEAD~ 2 X#MinscRillTalk
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @64
//== ~%tutu_scripts%LAVLEAD~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @65
//END

//I_C_T ~%tutu_var%PERDUE~ 0 X#MinscPerdueTalk
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @66
//== ~%tutu_var%PERDUE~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @67
//END

//I_C_T2 ~%tutu_var%GARKLA~ 0 X#MinscGarklaxTalk
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @68
//END

//I_C_T2 ~%tutu_var%AMARAN~ 4 X#MinscAmarandeTalk
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @69
//== ~%MINSC_JOINED%~ @45 
//= @70
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @71
//== ~%KHALID_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @72
//== ~%JAHEIRA_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @73
//== ~%KHALID_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @74
//== ~%tutu_var%AMARAN~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @75
//END

//I_C_T2 ~%tutu_var%COKSMTH~ 3 X#MinscPeter1
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @76
//== ~%tutu_var%COKSMTH~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @77
//END

//I_C_T2 ~%tutu_var%COKSMTH~ 5 X#MinscPeter2
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @78
//== ~%tutu_var%COKSMTH~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @79
//END

//I_C_T2 ~%tutu_var%COKSMTH~ 6 X#MinscPeter3
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @78
//== ~%tutu_var%COKSMTH~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @79
//END

I_C_T ~%tutu_var%DOPMER~ 6 X#MinscSeven1
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @80
== ~%tutu_var%DOPMER~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @81
END

I_C_T ~%tutu_var%DOPMER~ 9 X#MinscSeven2
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @80
== ~%tutu_var%DOPMER~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @81
END

I_C_T ~%tutu_var%DOPMER~ 11 X#MinscSeven3
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @80
== ~%tutu_var%DOPMER~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @81
END

I_C_T ~%tutu_var%DOPMER~ 12 X#MinscSeven4
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @80
== ~%tutu_var%DOPMER~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @81
END

I_C_T ~%tutu_var%DOPMER~ 13 X#MinscSeven5
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @80
== ~%tutu_var%DOPMER~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @81
END

//I_C_T ~%tutu_var%DYNAHE~ 0 X#MinscDynahSaved
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @82
//== ~%tutu_var%DYNAHE~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @83
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @84
//== ~%KHALID_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") HPPercentGT("khalid",90)~ THEN @85
//== ~%KHALID_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !HPPercentGT("khalid",90)~ THEN @86
//== ~%tutu_var%DYNAHE~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @87
//END

//I_C_T2 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState0% X#MinscEdwinDyna2
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @88
//== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @89
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @90
//== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @91
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @92
//== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @93
//END

//I_C_T2 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState1% X#MinscEdwinDyna2a
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @88
//== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @89
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @90
//== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @91
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @92
//== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @93
//END

//I_C_T2 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState2% X#MinscEdwinDyna2b
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @88
//== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @89
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @90
//== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @91
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @92
//== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @93
//END

I_C_T ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState7% X#MinscEdwinDyna3
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @94
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @95
END

I_C_T ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState6% X#MinscEdwinDyna4
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @94
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @95
END

I_C_T ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState5% X#MinscEdwinDyna5
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @94
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @95
END

//I_C_T2 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState8% X#MinscEdwinDyna6
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @96
//DO ~SetGlobal("X#MinscProtestsEdwin","GLOBAL",1)~
//== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @95
//END

INTERJECT ~%tutu_var%ELMIN5~ 9 X#MinscBoo
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @97
== ~%tutu_var%ELMIN5~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @98
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @99
== ~%tutu_var%ELMIN5~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @100
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @45 
== ~%tutu_var%ELMIN5~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @101
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @49 
== ~%tutu_var%ELMIN5~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @102
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @49 
== ~%tutu_var%ELMIN5~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @103
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @49 
== ~%tutu_var%ELMIN5~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @104
END
++ @105 EXTERN ~%tutu_var%ELMIN5~ X#ElminBoo

I_C_T ~%EDWIN_JOINED%~ %BGTEDWINJState6% X#MinscEdwinDyna1
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @106
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @107
END

//I_C_T2 ~%tutu_scriptbg%WILLIA~ 10 X#ManyInt7
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @108
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @109
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @110
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InParty("xan") InParty("coran") InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @111
//== ~%tutu_scriptbg%WILLIA~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @112
//END

//I_C_T2 ~%tutu_scriptbg%WILLIA~ 10 X#ManyInt8
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, MALE)~ THEN @113
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, MALE)~ THEN @114
//== ~%MINSC_JOINED%~ IF ~InParty("dynaheir") InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1, MALE)~ THEN @115
//== ~%tutu_scriptbg%WILLIA~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) Gender(Player1,MALE)~ THEN @116
//END

I_C_T ~%tutu_var%MULAHE~ 6 X#MinscTricked
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @117
== ~%tutu_var%MULAHE~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @118
END

//I_C_T2 ~%tutu_var%NOOBER~ 10 X#MinscNoober
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @119
//== ~%IMOEN_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @120
//== ~%tutu_var%NOOBER~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @121
//DO ~EscapeArea()~
//END

INTERJECT ~%tutu_var%LARZE~ 5 X#MinscLarze1
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @122
== ~%tutu_var%LARZE~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @123
== ~%QUAYLE_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @124
== ~%EDWIN_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @125
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @126
END
IF ~~ THEN DO ~ActionOverride("larze",Enemy())~
EXIT

I_C_T ~%tutu_var%KOVERA~ 9 X#MinscKoveras
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @127
END

//I_C_T2 ~%tutu_var%ELMINS4~ 3 X#MinscMeetsDopplegangers
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @128
//== ~%EDWIN_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @129
//== ~%AJANTIS_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @130
//END

//I_C_T2 ~%tutu_var%TIBER~ 2 X#MinscTiber
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @131
//END

//I_C_T2 ~%tutu_var%JENKAL~ 0 X#MinscJenkal
//== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @132
//= @49 
//= @133
//END

APPEND ~%MINSC_JOINED%~

/*  Minsc Ankhegs */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#MinscAnkhegs","GLOBAL",1)~ X#Minsc1400
SAY @134
IF ~~ THEN DO ~SetGlobal("X#MinscAnkhegs","GLOBAL",2)~ EXIT
END

/* Minsc Gnoll Stronghold */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#MinscStronghold","GLOBAL",1)~ X#MinscGS
SAY @135
= @45 
+ ~Gender(Player1,MALE)~ + @136 DO ~SetGlobal("X#MinscStronghold","GLOBAL",2)~ + X#MIINTGS1
IF ~!Gender(Player1,MALE)~ THEN DO ~SetGlobal("X#MinscStronghold","GLOBAL",2)~ EXIT
END

IF ~~ X#MIINTGS1
SAY @137 
++ @138 + X#MIINTGS2
++ @139 + X#MIINTGS3
++ @140 EXIT
++ @141 + X#MIINTGS5
++ @142 + X#MIINTGS6
END

IF ~~ X#MIINTGS2
SAY @143
= @144
= @145
IF ~~ THEN EXIT
END

IF ~~ X#MIINTGS3
SAY @146
IF ~~ THEN EXIT
END

IF ~~ X#MIINTGS5
SAY @147
= @45 
IF ~~ THEN EXIT
END

IF ~~ X#MIINTGS6
SAY @148
= @149
= @45 
IF ~~ THEN EXIT
END

/* Minsc, When first entering the Candlekeep catacombs */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#MWFETCC","GLOBAL",1)~ X#MWFETCC1
SAY @150
IF ~~ THEN DO ~SetGlobal("X#MWFETCC","GLOBAL",2)~ EXIT
END

/* Minsc, When Entering The First Level Of The Low Lantern (gambling ship)*/
IF WEIGHT #-1 ~%BGT_VAR% Global("X#MWETFLOTLL","GLOBAL",1)~ X#MWETFLOTLL1
SAY @151
= @49 
IF ~~ THEN DO ~SetGlobal("X#MWETFLOTLL","GLOBAL",2)~ EXIT
END

/* Minsc, Upon Entering The Area Where Cloakwood Mines Are Located */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#MUETAWCMAL","GLOBAL",1)~ X#MUETAWCMAL1
SAY @152
= @49 
= @153
IF ~~ THEN DO ~SetGlobal("X#MUETAWCMAL","GLOBAL",2)~ EXIT
END

/* Minsc, Upon entering the Lost City */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#MUETLC","GLOBAL",1)~ X#MUETLC1
SAY @154
= @49 
IF ~~ THEN DO ~SetGlobal("X#MUETLC","GLOBAL",2)~ EXIT
END

/* Minsc, sewers of BG */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#MinscSewer","GLOBAL",1)~ X#MinscSewerTalk
SAY @155
++ @156 DO ~SetGlobal("X#MinscSewer","GLOBAL",2)~ + X#MinscSewer1
++ @157 DO ~SetGlobal("X#MinscSewer","GLOBAL",2)~ + X#MinscSewer2
END

IF ~~ X#MinscSewer1
SAY @158
IF ~~ THEN EXIT
END

IF ~~ X#MinscSewer2
SAY @159
++ @160 + X#MinscSewer3
END

IF ~~ X#MinscSewer3
SAY @161
IF ~~ THEN EXIT
END

/* Minsc protests Edwin */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#MinscProtestsEdwin","GLOBAL",2)~ X#MinscEdwinProtest
SAY @162
++ @163 DO ~SetGlobal("X#MinscProtestsEdwin","GLOBAL",3)~ EXTERN ~%EDWIN_JOINED%~ X#EdwinOffended
++ @164 DO ~SetGlobal("X#MinscProtestsEdwin","GLOBAL",3)~ EXTERN ~%MINSC_JOINED%~ X#EdMinNeutralOpt
++ @165 DO ~SetGlobal("X#MinscProtestsEdwin","GLOBAL",3)~ + X#MinscOffended
END

IF ~~ X#MinscOffended
SAY @166
IF ~~ THEN DO ~LeaveParty() ActionOverride("minsc",Enemy()) ActionOverride("minsc",ReallyForceSpellRES("SPIN117",Myself))~
EXIT
END

END

CHAIN ~%MINSC_JOINED%~ X#EdMinNeutralOpt
@167
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @168
== ~%MINSC_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @169
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @95 EXIT

CHAIN ~%EDWIN_JOINED%~ X#EdwinOffended
@170
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @94
== ~%EDWIN_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @95
END
IF ~~ THEN SOLVED_JOURNAL @171
DO ~SetGlobal("X#EdwinAbandoned","GLOBAL",1) ActionOverride("edwin",LeaveParty()) ActionOverride("edwin", EscapeArea())~
EXIT

CHAIN IF ~%BGT_VAR% Global("X#MinscDTSlimes","GLOBAL",1)~ THEN ~%MINSC_JOINED%~ X#MinscDTSlimes
@172
DO ~SetGlobal("X#MinscDTSlimes","GLOBAL",2)~
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !InParty("dynaheir")~ THEN @173
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @174
== ~%DYNAHEIR_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @175
EXIT

