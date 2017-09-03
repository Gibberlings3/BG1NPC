ADD_TRANS_ACTION ~%tutu_scriptd%URLYLE1~ BEGIN 61 63 64 END BEGIN
END
~SetGlobal("X#XanRomanceDurKiss","GLOBAL",1)~

ADD_TRANS_ACTION ~%tutu_scriptd%ELAINY1~ BEGIN 61 63 64 END BEGIN
END
~SetGlobal("X#DynaRomanceDurKiss","GLOBAL",1)~

//I_C_T ~%tutu_scriptd%ELAINY1~ 61 X#BranwenKiss
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(2) Global("P#BranwenRomanceActive","GLOBAL",1) Global("P#BranwenRomanceActive","GLOBAL",2)~ THEN @0
//== ~%tutu_scriptd%ELAINY1~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(2) Global("P#BranwenRomanceActive","GLOBAL",1) Global("P#BranwenRomanceActive","GLOBAL",2)~ THEN @1
//END

//I_C_T ~%tutu_scriptd%ELAINY1~ 63 X#BranwenKiss
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(2) Global("P#BranwenRomanceActive","GLOBAL",1) Global("P#BranwenRomanceActive","GLOBAL",2)~ THEN @0
//== ~%tutu_scriptd%ELAINY1~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(2) Global("P#BranwenRomanceActive","GLOBAL",1) Global("P#BranwenRomanceActive","GLOBAL",2)~ THEN @1
//END

//I_C_T ~%tutu_scriptd%ELAINY1~ 64 X#BranwenKiss
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(2) Global("P#BranwenRomanceActive","GLOBAL",1) Global("P#BranwenRomanceActive","GLOBAL",2)~ THEN @0
//== ~%tutu_scriptd%ELAINY1~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(2) Global("P#BranwenRomanceActive","GLOBAL",1) Global("P#BranwenRomanceActive","GLOBAL",2)~ THEN @1
//END

/* Alora */

I_C_T ~%tutu_var%DELSVIR~ 8 X#AloraDelsvir
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @2
== ~%tutu_var%DELSVIR~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @3
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @4
== ~%tutu_var%DELSVIR~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @5
END

I_C_T ~%tutu_var%DUSHAI~ 11 X#AloraDushai
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @6
END

I_C_T ~%tutu_var%HURGAN~ 1 X#AloraHurgan
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @7
END

I_C_T ~%tutu_var%MENDA1~ 8 X#AloraMendas
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @8
== ~%tutu_var%MENDA1~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @9
END

I_C_T ~%tutu_scripts%HANDAL2~ 16 X#AloraShandalar
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @10
END

//I_C_T ~%tutu_var%ANDRIS~ 2 X#AloraAndris
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @11
//END

//I_C_T ~%tutu_var%DEZKIEL~ 0 X#AloraDezkiel
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @12
//== ~%tutu_var%DEZKIEL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @13
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @14
//== ~%tutu_var%DEZKIEL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @15
//END

/* Ajantis-TBD */

/* don't help Kirinhale (Durlag's Tower) */
I_C_T ~%tutu_scriptk%IRINHAL~ 10 X#AjantisKirinhale1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @16 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1) SetGlobal("X#AjantisHelpKiringale","GLOBAL",1)~
== ~%tutu_scriptk%IRINHAL~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1001 
END

I_C_T ~%tutu_scriptk%IRINHAL~ 2 X#AjantisKirinhale2
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisHelpKiringale","GLOBAL",1)~ THEN @17 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",-1)~
== ~%tutu_scriptk%IRINHAL~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisHelpKiringale","GLOBAL",1)~ THEN @1002
END

I_C_T ~%tutu_scriptk%IRINHAL~ 2 X#AjantisKirinhale3
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !Global("X#AjantisHelpKiringale","GLOBAL",1)~ THEN @18
== ~%tutu_scriptk%IRINHAL~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !Global("X#AjantisHelpKiringale","GLOBAL",1)~ THEN @1002
END

/* RIGGILO hostile leave if tricked */
I_C_T ~%tutu_var%RIGGILO~ 15 X#AjantisRiggilo
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @19 DO ~LeaveParty() Enemy() SetGlobal("X#AjantisRomanceActive","GLOBAL",3)~
== ~%tutu_var%RIGGILO~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1003
END

/* RIGGILO hostile leave if tricked */
I_C_T ~%tutu_var%RIGGILO~ 18 X#AjantisRiggilo
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @19 DO ~LeaveParty() Enemy() SetGlobal("X#AjantisRomanceActive","GLOBAL",3)~
== ~%tutu_var%RIGGILO~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1003
END 

/* Branwen */
I_C_T ~%tutu_scriptd%ELAINY1~ 52 X#BranwenFlowers
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @20
END

//I_C_T ~%tutu_scriptd%URLYLE1~ 51 X#BranwenFlowers2
//== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @21
//END

I_C_T ~%tutu_var%KAROUG~ 6 X#BranwenBloodlust
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @22
== ~%tutu_var%KAROUG~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @1004
END

/* Coran */
I_C_T ~%tutu_scriptd%ELAINY1~ 64 X#CoranDelainy
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @23
== ~%tutu_scriptd%ELAINY1~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @24
END

I_C_T ~%tutu_scriptd%URLYLE1~ 0 X#CoranDur1
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @25
END

I_C_T ~%tutu_scriptd%URLYLE1~ 1 X#CoranDur2
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @26
END

I_C_T ~%tutu_scriptd%URLYLE1~ 3 X#CoranDur3
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @27
END

I_C_T ~%tutu_scriptd%URLYLE1~ 4 X#CoranDur4
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @28
END

I_C_T ~%tutu_scriptd%URLYLE1~ 7 X#CoranDur5
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @29
END

I_C_T ~%tutu_scriptd%URLYLE1~ 8 X#CoranDur6
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @30
END

I_C_T ~%tutu_scriptd%URLYLE1~ 9 X#CoranDur7
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @30
END

I_C_T ~%tutu_scriptd%URLYLE1~ 10 X#CoranDur8
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @30
END

I_C_T ~%tutu_scriptd%URLYLE1~ 12 X#CoranDur9
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @31
END

I_C_T ~%tutu_scriptd%URLYLE1~ 20 X#CoranDur10
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @30
END

I_C_T ~%tutu_scriptd%URLYLE1~ 21 X#CoranDur11
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @30
END

I_C_T ~%tutu_scriptd%URLYLE1~ 29 X#CoranDur12
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @32
END

I_C_T ~%tutu_scriptd%URLYLE1~ 34 X#CoranDur13
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @32
END

I_C_T ~%tutu_scriptd%URLYLE1~ 35 X#CoranDur14
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @33
END

I_C_T ~%tutu_scriptd%URLYLE1~ 36 X#CoranDur15
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @34
END

I_C_T ~%tutu_scriptd%URLYLE1~ 37 X#CoranDur16
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @35
END

I_C_T ~%tutu_scriptd%URLYLE1~ 39 X#CoranDur17
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @36
END

//I_C_T ~%tutu_scriptd%URLYLE1~ 51 X#CoranDur18
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @37
//END

I_C_T ~%tutu_scriptd%URLYLE1~ 55 X#CoranDur19
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @38
END

CHAIN ~%CORAN_JOINED%~ X#CoranDurFight
@39
DO ~SetGlobal("X#CoranDur","GLOBAL",2)~
== ~%tutu_scriptd%URLYLE1~ @40
== ~%CORAN_JOINED%~ @41
== ~%tutu_scriptd%URLYLE1~ @42
DO ~ActionOverride("coran",ReallyForceSpellRES("SPPR102",Myself))~
== ~%tutu_scriptd%URLYLE1~ @43
DO ~SetGlobal("WillHelpEscape","GLOBAL",1) EscapeArea()~ 
END
IF ~~ THEN JOURNAL @44 EXIT

ADD_TRANS_TRIGGER ~%tutu_scriptd%URLYLE1~ 58 ~OR(5) !InParty("coran") !InMyArea("coran") StateCheck("coran",CD_STATE_NOTVALID) !Global("P#CoranMatch","GLOBAL",1) Global("P#CoranRomanceInactive","GLOBAL",1)~
ADD_TRANS_TRIGGER ~%tutu_scriptd%URLYLE1~ 59 ~OR(5) !InParty("coran") !InMyArea("coran") StateCheck("coran",CD_STATE_NOTVALID) !Global("P#CoranMatch","GLOBAL",1) Global("P#CoranRomanceInactive","GLOBAL",1)~

EXTEND_BOTTOM ~%tutu_scriptd%URLYLE1~ 58
IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN DO ~SetGlobal("X#CoranDur","GLOBAL",1)~ EXTERN ~%CORAN_JOINED%~ X#CoranDurFight
END

EXTEND_BOTTOM ~%tutu_scriptd%URLYLE1~ 59
IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN DO ~SetGlobal("X#CoranDur","GLOBAL",1)~ EXTERN ~%CORAN_JOINED%~ X#CoranDurFight
END

/* Dynaheir */

/* Shandalar */
I_C_T ~%tutu_scripts%HANDAL2~ 4 X#DynaheirShandal2a
 == ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @45
 == ~%tutu_scripts%HANDAL2~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1005
END

/* Shandalar */
I_C_T ~%tutu_scripts%HANDAL2~ 5 X#DynaheirShandal2b
 == ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @45
 == ~%tutu_scripts%HANDAL2~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1005
END

/* Shandalar */
I_C_T ~%tutu_scripts%HANDAL2~ 6 X#DynaheirShandal2c
 == ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @45
 == ~%tutu_scripts%HANDAL2~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1005
END

/* Edwin */
//I_C_T ~%tutu_var%DRADEE~ 6 X#EdwinDraadeel
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @46 
//END

/* Eldoth - none */

/* Faldorn */

//I_C_T ~%tutu_var%THEREL~ 7 X#FALDORNTHERELLA1
//== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @47
//END

I_C_T ~%tutu_var%DALTON~4 X#FALDORNDALTON1
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @48
== ~%tutu_var%DALTON~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @49
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @50
== ~%tutu_var%DALTON~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @51
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @52
=@53
== ~%tutu_var%DALTON~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @54
END

I_C_T ~%tutu_var%DALTON~ 5 X#FALDORNDALTON2
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @48
== ~%tutu_var%DALTON~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @49
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @50
== ~%tutu_var%DALTON~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @51
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @52
=@53
== ~%tutu_var%DALTON~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @54
END

//I_C_T2 ~%tutu_var%KAISH~ 27 X#FPCITAL
//== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @55
//END

I_C_T ~%tutu_scriptd%ELAINY1~ 51 X#FALDORNDELAINEY1
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @56
== ~%tutu_scriptd%ELAINY1~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @57
END
 
//I_C_T ~%tutu_scriptd%URLYLE1~ 51 X#FALDORNDURLYLE1
//== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @56
//== ~%tutu_scriptd%URLYLE1~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @57
//END

/* Garrick */

//I_C_T ~%tutu_var%DRADEE~ 1 X#GarDraadeel
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @58 END

I_C_T ~%tutu_var%ERDANE~ 0 X#GarErd
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @59 END

//I_C_T2 ~%tutu_var%HACK~ 0 X#GarHack
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @60 
//END

I_C_T ~%tutu_var%ISLSIR~ 4 X#GarIsl
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @61 END

I_C_T ~%tutu_var%MERLEA~ 2 X#GarMer
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @62 END

I_C_T ~%tutu_var%OGRMA3~ 3 X#GarOgr
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @63 
== ~%tutu_var%OGRMA3~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @1007 
END

I_C_T ~%tutu_var%TELLAN~ 2 X#GarTel
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @64 END

//I_C_T ~%tutu_var%THEREL~ 7 X#GarThe
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @65
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @66 END

//I_C_T ~%tutu_var%WENRIC~ 1 X#GarWen
//== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @67
//== ~%tutu_var%WENRIC~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @68 END

/* Imoen - none */

/* Jaheira */

//I_C_T2 ~%tutu_var%KAISH~ 27 X#JaKaisha1
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @69
//END

I_C_T ~%tutu_var%JORIN~ 8 X#JaJorin
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @70
END

/* Kagain - none */

/* Khalid - none */

/* Kivan */

//I_C_T ~%tutu_var%KAISH~ 27 X#KivanKaishas
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @71
//== ~%tutu_var%KAISH~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @72
//END

//I_C_T ~%tutu_var%ULRAUN~ 3 X#KivanUlraunt
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @73
//END

/* Minsc - no */

/* Montaron */

I_C_T ~%tutu_var%KAROUG~ 0 X#MontaronKaroug
== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @74
END

/* Quayle */

/* TotSC */
I_C_T ~%tutu_var%APPAR~ 0 X#QuaDurApp
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @75
== ~%tutu_var%APPAR~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @76 END

I_C_T ~%tutu_var%BAYARD~ 6 X#QuaBay
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @77 END

I_C_T ~%tutu_var%CARSA~ 4 X#QuaCars
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @78 END


//I_C_T ~%tutu_var%DEZKIEL~ 0 X#QuaDez
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @79 END

//I_C_T ~%tutu_var%DRADEE~ 1 X#QuaDrad
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @80 END

I_C_T ~%tutu_var%GARAN~ 0 X#QuaGar
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @81 END

//I_C_T2~%tutu_var%HACK~ 0 X#QuaHack
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @82 END

I_C_T ~%tutu_scriptbg%KNIGHT%eet_var%~ 1 X#QuaKnight
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @83 
== ~%tutu_scriptbg%KNIGHT%eet_var%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @1008
END

/* Safana - no */

/* Shar-Teel */

I_C_T ~%tutu_scriptd%ELAINY1~ 54 X#SharDelainy1
 == ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @84
END

//I_C_T ~%tutu_scriptd%ELAINY1~ 61 X#SharDelainy2
// == ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @85
//DO ~SetGlobal("X#SharInterest","GLOBAL",3)~
//== ~%tutu_scriptd%ELAINY1~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @1009
//END

//I_C_T ~%tutu_scriptd%ELAINY1~ 63 X#SharDelainy3
// == ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @85
//DO ~SetGlobal("X#SharInterest","GLOBAL",3)~
//== ~%tutu_scriptd%ELAINY1~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @1009
//END

//I_C_T ~%tutu_scriptd%ELAINY1~ 64 X#SharDelainy4
// == ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @85
//DO ~SetGlobal("X#SharInterest","GLOBAL",3)~
//== ~%tutu_scriptd%ELAINY1~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @1009
//END

/* Skie - no */

/* Tiax */

/* Tiax, Kaish - Werewolf Island */
CHAIN ~%TIAX_JOINED%~ TKWI1
@86
DO ~SetGlobal("X#TKWI","LOCALS",1) SetGlobal("X#TKWI111","GLOBAL",1)~
== ~%tutu_var%KAISH~ @87
END
++ @88 EXTERN ~%tutu_var%KAISH~ 3 //(leads to normal dialogue for first option)
++ @89 EXTERN ~%tutu_var%KAISH~ 4 //(leads to normal dialogue for second option)
++ @90 EXTERN ~%tutu_var%KAISH~ 5 //(leads to normal dialogue for third option)

EXTEND_BOTTOM ~%tutu_var%KAISH~ 0
IF ~Global("X#TKWI111","GLOBAL",0) InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ EXTERN ~%TIAX_JOINED%~ TKWI1
END

EXTEND_BOTTOM ~%tutu_var%KAISH~ 1 // Tiax, Kaish - Werewolf Island
IF ~Global("X#TKWI111","GLOBAL",0) InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ EXTERN ~%TIAX_JOINED%~ TKWI1
END

EXTEND_BOTTOM ~%tutu_var%KAISH~ 2 // Tiax, Kaish - Werewolf Island
IF ~Global("X#TKWI111","GLOBAL",0) InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ EXTERN ~%TIAX_JOINED%~ TKWI1
END

/* Viconia */

I_C_T ~%tutu_var%ANDRIS~ 6 X#VicAndr1
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @91 END

I_C_T ~%tutu_var%ANDRIS~ 7 X#VicAndr2
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @92 END

I_C_T ~%tutu_var%APPAR~ 1 X#VicAppar
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @93
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @94 END

I_C_T ~%tutu_scriptg%ATEWERE~ 0 X#VicGateWere
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_scriptg%ATEWERE~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @96 END

I_C_T ~%tutu_var%BAYARD~ 1 X#VicBayard
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @97 END

I_C_T ~%tutu_scriptbg%CALAHA~ 2 X#VicCalahan
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @98 END

I_C_T ~%tutu_var%CUCHOL~ 0 X#VicCuchol
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @99 END

I_C_T ~%tutu_var%DETRAN~ 3 X#VicDet
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @100
== ~%tutu_var%DETRAN~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @101 END

//I_C_T ~%tutu_var%DRADEE~ 6 X#VicDrad
//== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @102 END

I_C_T ~%tutu_var%EVALT~ 4 X#VicEvalt
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @103
== ~%tutu_var%EVALT~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @104 END

I_C_T ~%tutu_var%FARTHI~ 1 X#VicFar
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @105 END

I_C_T ~%tutu_var%HALFEN~ 0 X#VicHalfen
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @106 END

I_C_T ~%tutu_scriptk%IRINHAL~ 0 X#VicKirinhale
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_scriptk%IRINHAL~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @108 END

I_C_T ~%tutu_var%JORIN~ 0 X#VicJor
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @109 END

I_C_T ~%tutu_var%KAROUG~ 11 X#Vic
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @110 END

I_C_T ~%tutu_var%LOVE~ 2 X#VicLove
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @111 
== ~%tutu_var%LOVE~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @1010 
END

I_C_T ~%tutu_var%PALIN~ 5 X#VicPalin
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @112 
== ~%tutu_var%PALIN~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @1011 
END

I_C_T ~%tutu_var%TRACEA~ 1 X#VicTrac1
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @113 
== ~%tutu_var%TRACEA~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @1013 
END

I_C_T ~%tutu_var%TRACEA~ 2 X#VicTrac2
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @113 
== ~%tutu_var%TRACEA~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @1013 
END

I_C_T ~%tutu_var%TRACEA~ 3 X#VicTrac3
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @113 
== ~%tutu_var%TRACEA~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @1013 
END

I_C_T ~%tutu_var%TRACEA~ 4 X#VicTrac4
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @113 
== ~%tutu_var%TRACEA~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @1013 
END

I_C_T ~%tutu_var%TRACEA~ 5 X#VicTrac5
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @113 
== ~%tutu_var%TRACEA~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @1013 
END

//I_C_T ~%tutu_var%WENRIC~ 1 X#VicWenric
//== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @114 
//== ~%tutu_var%WENRIC~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @115
//END

/*  Xan */
I_C_T ~%tutu_var%ANDRIS~ 1 X#XANANDRIS1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Global("X#ANDRIS2","GLOBAL",0)~ THEN @116
END

//I_C_T ~%tutu_var%ANDRIS~ 2 X#X#XANANDRIS1b
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @116
//END

I_C_T ~%tutu_var%ANDRIS~ 3 X#XANANDRIS1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Global("X#ANDRIS2","GLOBAL",0)~ THEN @116
END

I_C_T ~%tutu_var%ANDRIS~ 4 X#XANANDRIS1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Global("X#ANDRIS2","GLOBAL",0)~ THEN @116
END

//I_C_T ~%tutu_var%DRADEE~ 1 X#XANDRADEE1
//== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @117
//END
 
I_C_T ~%tutu_var%DRADEE2~ 0 X#XANDRADEE2
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @118
END

I_C_T ~%tutu_var%DURLAGT~ 0 X#XANDURLAG1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @119
END

I_C_T ~%tutu_var%DEATH1~ 0 X#XANDNITE1
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @120
== ~%tutu_var%DEATH1~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @121
END
 
I_C_T ~%tutu_var%DEATH2~ 6 X#XANDNITE2
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @122
END

I_C_T ~%tutu_var%IKE~ 0 X#XANIKE
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @123
END

I_C_T ~%tutu_var%GRAEL~ 0 X#XANGrael
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @124
END

I_C_T ~%tutu_var%AVARICE~ 2 X#XANAvarice2
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @125
== ~%tutu_var%AVARICE~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @1012
END

/* Xzar - none */

/* Yeslick - none */

/* ICT3s */

/* Hack */
/* passback supplied */
I_C_T3 ~%tutu_var%HACK~ 0 X#HACK0
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @2001 
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @2002 
== ~%tutu_var%HACK~ IF ~~ THEN @2003 
END

/* Kaishas */
/* passback supplied */
I_C_T3 ~%tutu_var%KAISH~ 27 X#KAISH27
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @2004
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @2005
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @2006
== ~%tutu_var%KAISH~ IF ~~ THEN @2007
END

/* Andris */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%ANDRIS~ 2 X#ANDRIS2
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @11
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) Global("X#XANANDRIS1a","GLOBAL",0) Global("X#XANANDRIS1c","GLOBAL",0) Global("X#XANANDRIS1d","GLOBAL",0)~ THEN @116
END

/* Delainy */
/* general passback not required - each NPC is handled individually */
I_C_T3 ~%tutu_scriptd%ELAINY1~ 61 X#ELAINY161
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @85
== ~%tutu_scriptd%ELAINY1~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @1009
DO ~SetGlobal("X#SharInterest","GLOBAL",3)~
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(2) Global("P#BranwenRomanceActive","GLOBAL",1) Global("P#BranwenRomanceActive","GLOBAL",2)~ THEN @0 DO ~SetGlobal("X#BranwenKiss","GLOBAL",1)~
== ~%tutu_scriptd%ELAINY1~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(2) Global("P#BranwenRomanceActive","GLOBAL",1) Global("P#BranwenRomanceActive","GLOBAL",2)~ THEN @1
END

/* general passback not required - each NPC is handled individually */
I_C_T3 ~%tutu_scriptd%ELAINY1~ 63 X#ELAINY162
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @85
== ~%tutu_scriptd%ELAINY1~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @1009
DO ~SetGlobal("X#SharInterest","GLOBAL",3)~
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(2) Global("P#BranwenRomanceActive","GLOBAL",1) Global("P#BranwenRomanceActive","GLOBAL",2)~ THEN @0 DO ~SetGlobal("X#BranwenKiss","GLOBAL",1)~
== ~%tutu_scriptd%ELAINY1~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(2) Global("P#BranwenRomanceActive","GLOBAL",1) Global("P#BranwenRomanceActive","GLOBAL",2)~ THEN @1
END

/* general passback not required - each NPC is handled individually */
I_C_T3 ~%tutu_scriptd%ELAINY1~ 64 X#ELAINY64
== ~%SHARTEEL_JOINED%~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @85
== ~%tutu_scriptd%ELAINY1~ IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ THEN @1009
DO ~SetGlobal("X#SharInterest","GLOBAL",3)~
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(2) Global("P#BranwenRomanceActive","GLOBAL",1) Global("P#BranwenRomanceActive","GLOBAL",2)~ THEN @0 DO ~SetGlobal("X#BranwenKiss","GLOBAL",1)~
== ~%tutu_scriptd%ELAINY1~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) OR(2) Global("P#BranwenRomanceActive","GLOBAL",1) Global("P#BranwenRomanceActive","GLOBAL",2)~ THEN @1
END

/* Dezkiel */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%DEZKIEL~ 0 X#DEZKIEL0
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @79 
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @12
== ~%tutu_var%DEZKIEL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @13
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @14
== ~%tutu_var%DEZKIEL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @15
END

/* Dradeel */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%DRADEE~ 1 X#DRADEE1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @58 
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @80 
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @117
END

/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%DRADEE~ 6 X#DRADEE6
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @102 
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @46 
END

/* Durlyle */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_scriptd%URLYLE1~ 51 X#URLYLE1
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN @37
== ~%BRANWEN_JOINED%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @21
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @56
== ~%tutu_scriptd%URLYLE1~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @57
END

/* Therella */
/* passback not required - no trans actions */
I_C_T3 ~%tutu_var%THEREL~ 7 X#THEREL7
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @47
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @65
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @66 
END

/* Wenric */
/* passback not required - trans actions are global and journal related */
I_C_T3 ~%tutu_var%WENRIC~ 1 X#WENRIC1
== ~%GARRICK_JOINED%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @67
== ~%tutu_var%WENRIC~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @68 
== ~%VICONIA_JOINED%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @114 
== ~%tutu_var%WENRIC~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @115
END

