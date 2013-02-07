BEGIN ~%tutu_var%DORAA~

APPEND ~%SKIE_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SkieSewer","GLOBAL",1)~ THEN SKISewer1
SAY @0
IF ~~ THEN DO ~SetGlobal("X#SkieSewer","GLOBAL",2)~
EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SkieCandlekeep","GLOBAL",1)~ THEN SKISewer1
SAY @1
IF ~~ THEN DO ~SetGlobal("X#SkieCandlekeep","GLOBAL",2)~
EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SkieLarze2","GLOBAL",2)~ THEN SkieLarze2
SAY @2
++ @3 DO ~SetGlobal("X#SkieLarze2","GLOBAL",3)~ + SkieLarze2.1
++ @4DO ~SetGlobal("X#SkieLarze2","GLOBAL",3)~ + SkieLarze2.2
++ @5DO ~SetGlobal("X#SkieLarze2","GLOBAL",3)~ + SkieLarze2.3
++ @6 EXIT
END

IF ~~ SkieLarze2.1
SAY @7
IF ~~ THEN EXIT
END

IF ~~ SkieLarze2.2
SAY @8
IF ~~ THEN EXIT
END

IF ~~ SkieLarze2.3
SAY @9
IF ~~ THEN EXIT
END

IF ~~ THEN SkieTamoko1
SAY @10
IF ~~ EXTERN ~%tutu_var%TAMOKO~ 17
END

END

I_C_T2 ~%tutu_var%BREVLI~ 17 X#SkieBrevlik
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @11 DO ~SetGlobal("HelpBrevlik","GLOBAL",1)~
 == ~%tutu_var%BREVLI~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @12
END

I_C_T ~%tutu_var%ALDETH~ 9 X#SkieAldeth
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @13
 == ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @14
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @15
END

//I_C_T2 ~%tutu_var%ANGELO~ 0 X#SkieAngelo
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @16
//== ~%tutu_var%ANGELO~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @17
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @18
//== ~%tutu_var%ANGELO~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @19
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @20
//== ~%tutu_var%ANGELO~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @21
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @22
//== ~%tutu_var%ANGELO~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @23
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @24
//== ~%tutu_var%ANGELO~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @25
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @26
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") !Dead("eldoth") GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @27
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) OR(2) !InParty("eldoth") Dead("eldoth") GlobalLT("X#SummonDora","GLOBAL",3)~ THEN @28
//== ~%tutu_var%ANGELO~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @29
//DO ~ActionOverride("skie",ApplyDamagePercent("skie",5,CRUSHING))~
//END

//I_C_T2 ~%tutu_var%ARKION~ 1 X#SkieArkion
// == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @30
//END

//I_C_T2 ~%tutu_var%RAMAZI~ 6 X#SkieRamazi
// == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @31
//== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @32
// == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @33
//== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @34
//END

I_C_T ~%tutu_var%BILL~ 2 X#SkieBill
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) PartyHasItem("%tutu_var%MISC78")~ THEN @35
== ~%tutu_var%MTOWBAZ~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) PartyHasItem("%tutu_var%MISC78")~ THEN @36
== ~%tutu_var%BILL~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) PartyHasItem("%tutu_var%MISC78")~ THEN @1001
END

//I_C_T ~%tutu_var%LOTHAN~ 1 X#SkieLothander
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @37
//== ~%tutu_var%LOTHAN~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @38
//END

//I_C_T ~%tutu_scriptbg%NEB~ 2 X#SkieNeb
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @39
//== ~%tutu_scriptbg%NEB~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @40
//END

I_C_T ~%tutu_var%IVANNE~ 4 X#SkieIvanne1
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @41
END

I_C_T ~%tutu_var%IVANNE~ 5 X#SkieIvanne2
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @41
END

I_C_T ~%tutu_var%KENT~ 2 X#SkieKent
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @42
END

I_C_T ~%tutu_var%LARZE~ 5 X#SkieLarze1
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @43
DO ~SetGlobal("X#SkieLarze2","GLOBAL",1)~
== ~%tutu_var%LARZE~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @44
END

//I_C_T ~%tutu_var%BEGGBA~ 0 X#SkieBeggar1
// == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @45
//DO ~TakePartyGold(1)~
//== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @46
//== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @47
//== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @48
//== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @49
//== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @50
//END

//I_C_T ~%tutu_var%BEGGBA~ 1 X#SkieBeggar2
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @45
//DO ~TakePartyGold(1)~
//== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @46
//== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @47
//== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @48
//== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @49
//== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @50
//END

//I_C_T ~%tutu_var%BEGGBA~ 2 X#SkieBeggar3
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @45
//DO ~TakePartyGold(1)~
//== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @46
//== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @47
//== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @48
//== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @49
//== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @50
//END

//I_C_T ~%tutu_var%BEGGBA~ 3 X#SkieBeggar4
// == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @45
//DO ~TakePartyGold(1)~
//== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @46
//== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @47
//== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @48
//== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @49
//== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @50
//END

I_C_T3 ~%tutu_var%BEGGBA~ 4 X#SkieBeggar5
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @45
DO ~TakePartyGold(1)~
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @46
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @47
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @48
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @49
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @50
END

I_C_T3 ~%tutu_var%BEGGBA~ 5 X#SkieBeggar6
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @45
DO ~TakePartyGold(1)~
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @46
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @47
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @48
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @49
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @50
END

I_C_T3 ~%tutu_var%BEGGBA~ 6 X#SkieBeggar7
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @45
DO ~TakePartyGold(1)~
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @46
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @47
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @48
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @49
== ~%tutu_var%BEGGBA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @50
END

I_C_T ~%tutu_var%BILL~ 1 X#SkieBill1
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @51
 == ~%tutu_var%BILL~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @52
END

I_C_T ~%tutu_var%BILL~ 3 X#SkieBill2
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @51
 == ~%tutu_var%BILL~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @52
END

/* Bork is the bartender at the Blushing Mermaid. Since the action that follows is StartStore(), it can't go to ICT3 */
I_C_T ~%tutu_var%BORK~ 0 X#SkieBORK
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @53
END

I_C_T ~%tutu_var%SORREL~ 2 X#SkieSorrel1
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @54
 == ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @55
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @56
 == ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @57
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @58
 == ~%tutu_var%SORREL~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @59
END

I_C_T ~%tutu_var%SORREL~ 3 X#SkieSorrel2
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @54
 == ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @55
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @56
 == ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @57
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @58
 == ~%tutu_var%SORREL~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @59
END

I_C_T ~%tutu_var%TAMOKO~ 17 X#SkieTamoko2
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @60
 END
 
//I_C_T2 ~%tutu_var%BRILLA~ 0 X#ElBrilla
//== ~%ELDOTH_JOINED%~ IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) !InParty("skie")~ THEN @61
//END
 
//I_C_T2 ~%tutu_var%BRILLA~ 0 X#SkieBrilla1
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @62
//END

//I_C_T ~%tutu_var%BRILLA~ 7 X#SkieBrilla2
//== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @63
//== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @64
//DO ~GiveGoldForce(1)~
//END

INTERJECT ~%tutu_var%BRILLA~ 4 X#SkieBrilla3
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @65
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @66
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @67
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @68
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @69
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @70
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @71
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @72
= @73
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @74
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @75
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @76
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @77
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @78
END
IF ~~ THEN DO ~ActionOverride("brilla", EscapeArea())~ 
EXIT

INTERJECT ~%tutu_var%BRILLA~ 5 X#SkieBrilla4
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @65
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @66
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @67
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @68
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @69
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @70
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @71
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @72
= @73
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @74
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @75
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @76
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @77
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @78
END
IF ~~ THEN DO ~ActionOverride("brilla", EscapeArea())~ 
EXIT

INTERJECT ~%tutu_var%BRILLA~ 6 X#SkieBrilla5
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @65
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @66
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @67
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @68
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @69
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @70
 == ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @71
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @72
= @73
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @74
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @75
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @76
== ~%ELDOTH_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @77
== ~%tutu_var%BRILLA~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @78
END
IF ~~ THEN DO ~ActionOverride("brilla", EscapeArea())~ 
EXIT

I_C_T ~%tutu_var%KRYSTI~ 2 X#SkieAssas
== ~%SKIE_JOINED%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @79
== ~%tutu_var%SLYTHE~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @80
== ~%tutu_var%KRYSTI~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @81
== ~%tutu_var%SLYTHE~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @82
== ~%tutu_var%KRYSTI~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @83
== ~%tutu_var%SLYTHE~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @84
== ~%tutu_var%KRYSTI~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @85
END

APPEND ~%tutu_var%DORAA~

IF ~Global("X#SummonDora","GLOBAL",2)~ THEN BEGIN DoraMeeting
SAY @86
IF ~Global("X#SkieAngelo","GLOBAL",0)~ THEN DO ~SetGlobal("X#SummonDora","GLOBAL",3)~ EXTERN ~%SKIE_BANTER%~ SkieDora1
IF ~Global("X#SkieAngelo","GLOBAL",1)~ THEN DO ~SetGlobal("X#SummonDora","GLOBAL",3)~ EXTERN ~%SKIE_BANTER%~ SkieDora2
END

END

CHAIN ~%SKIE_BANTER%~ SkieDora1
@87
== ~%tutu_var%DORAA~ @88
== ~%SKIE_BANTER%~ @89
== ~%tutu_var%DORAA~ @90
== ~%SKIE_BANTER%~ @91
= @92
== ~%tutu_var%DORAA~ @93
== ~%SKIE_BANTER%~ @94
== ~%tutu_var%DORAA~ @95
= @96
== ~%SKIE_BANTER%~ @97
== ~%tutu_var%DORAA~ @98
== ~%SKIE_BANTER%~ @99
== ~%tutu_var%DORAA~ @100
= @101
== ~%SKIE_BANTER%~ @102
== ~%tutu_var%DORAA~ @103
DO ~GiveItemCreate("%tutu_var%AMUL13","skie",1,0,0) EscapeArea()~
EXIT

CHAIN ~%SKIE_BANTER%~ SkieDora2
@104
== ~%tutu_var%DORAA~ @105
== ~%SKIE_BANTER%~ @106
== ~%tutu_var%DORAA~ @107
== ~%SKIE_BANTER%~ @108
== ~%tutu_var%DORAA~ @109
= @96
== ~%SKIE_BANTER%~ @97
== ~%tutu_var%DORAA~ @98
== ~%SKIE_BANTER%~ @99
== ~%tutu_var%DORAA~ @100
= @110
== ~%SKIE_BANTER%~ @102
== ~%tutu_var%DORAA~ @103
DO ~GiveItemCreate("%tutu_var%AMUL13","skie",1,0,0) EscapeArea()~
== ~%SKIE_BANTER%~ @111
EXIT


BEGIN ~X#JESSUP~

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SkieJessup","GLOBAL",1)~ THEN ~X#JESSUP~ JessupSkie1
@112
DO ~SetGlobal("X#SkieJessup","GLOBAL",2)~
== ~%SKIE_BANTER%~ @113
== ~X#JESSUP~ @114
== ~%SKIE_BANTER%~ @115
== ~X#JESSUP~ @116
DO ~ActionOverride("jessup",EscapeArea()) SetGlobal("X#SkieJessup","GLOBAL",3)~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#SkieJessup","GLOBAL",4)~ THEN ~%SKIE_JOINED%~ JessupSkie2
@117
DO ~SetGlobal("X#SkieJessup","GLOBAL",5)~
== ~%ELDOTH_BANTER%~ @118
== ~%SKIE_BANTER%~ @119
== ~%ELDOTH_BANTER%~ @120
== ~%SKIE_BANTER%~ @121
DO ~GiveItemCreate("%tutu_var%CLCK06","skie",1,0,0)~
EXIT

/* Skie Tamoko */

ADD_STATE_TRIGGER ~%tutu_var%TAMOKO~ 15 ~!InParty("skie")~

APPEND ~%tutu_var%TAMOKO~

IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN BEGIN 15
SAY @122
IF ~~ THEN REPLY @123 GOTO 12
IF ~~ THEN REPLY @124 GOTO 16
IF ~~ THEN REPLY @125 EXTERN ~%SKIE_JOINED%~ SkieTamoko1
END

END
