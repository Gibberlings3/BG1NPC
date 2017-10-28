ADD_TRANS_TRIGGER ~%tutu_scripts%LAVLEAD~ 2 ~OR(3) !InParty("jaheira") !InMyArea("jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~ 

EXTEND_BOTTOM ~%tutu_scripts%LAVLEAD~ 2
+ ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + @0 DO ~SetGlobal("X#JahRill","GLOBAL",1)~ EXTERN ~%JAHEIRA_JOINED%~ JaRill
+ ~PartyGoldGT(99) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ + @1 + 4
END

CHAIN IF ~%BGT_VAR% Global("X#JahRill","GLOBAL",1)~ THEN ~%JAHEIRA_JOINED%~ JaRill
@2
== ~%tutu_scripts%LAVLEAD~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @3
DO ~TakePartyGold(100)
SetGlobal("FREESLAV","GLOBAL",1)
EscapeArea()~ EXIT

APPEND ~%tutu_var%GERVIS~
IF WEIGHT #-1 ~%BGT_VAR% Global("X#VoltineAdd","GLOBAL",1)~ THEN BEGIN X#GrevisAdd
SAY @4
++ @5 DO ~SetGlobal("X#VoltineAdd","GLOBAL",2)~ EXIT
++ @6 DO ~SetGlobal("X#VoltineAdd","GLOBAL",2)~ + VORE1.1
END

IF ~~ VORE1.1
SAY @7
IF ~~ THEN DO ~Enemy()~ EXIT
END

END

//I_C_T2 ~%tutu_var%VOLTIN~ 1 X#JahVoltine1
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @8
//== ~%tutu_var%VOLTIN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @9
//DO ~SetGlobal("X#VoltineAdd","GLOBAL",1)~
//END

I_C_T ~%tutu_var%VOLTIN~ 3 X#JahVoltine2
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @10
== ~%tutu_var%VOLTIN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @11
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @12
== ~%tutu_var%VOLTIN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @1001
END

I_C_T ~%tutu_var%GERVIS~ 3 X#JaGrevis
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @13
DO ~SetGlobal("X#VoltineAdd","GLOBAL",1)~
END

//I_C_T2 ~%tutu_scriptbg%VICONI~ 9 X#JaheiraViconia5
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @14
//== ~%tutu_scriptbg%VICONI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @15
//END

I_C_T ~%tutu_scriptbg%VICONI~ 7 X#JaheiraViconia4
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @16
== ~%tutu_scriptbg%VICONI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @17
END

I_C_T ~%tutu_scriptbg%VICONI~ 6 X#JaheiraViconia3
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @16
== ~%tutu_scriptbg%VICONI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @17
END

I_C_T ~%tutu_scriptbg%VICONI~ 5 X#JaheiraViconia2
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @16
== ~%tutu_scriptbg%VICONI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @17
END

//I_C_T2 ~%tutu_var%FLAM2~ 3 X#JaheiraViconia1
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @18
//END

I_C_T ~%tutu_var%SAFANA~ 10 X#JaheiraSafana2
== ~%JAHEIRA_JOINED%~ IF ~Gender(Player1, MALE) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @19
== ~%tutu_var%SAFANA~ IF ~Gender(Player1, MALE) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @20
END

I_C_T ~%tutu_var%SAFANA~ 5 X#JaheiraSafana1
== ~%JAHEIRA_JOINED%~ IF ~Gender(Player1, MALE) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @19
== ~%tutu_var%SAFANA~ IF ~Gender(Player1, MALE) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @20
END

I_C_T ~%tutu_var%ENTILL~ 8 X#JaheiraEntill3
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @21
== ~%tutu_var%ENTILL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @1002
END


CHAIN ~%JAHEIRA_JOINED%~ JaheiraEntill2
@22
== ~%KHALID_JOINED%~ @23
== ~%JAHEIRA_JOINED%~ @24
END
IF ~~ THEN DO ~ActionOverride("entillis",EscapeArea())~ JOURNAL @25
EXIT

EXTEND_BOTTOM ~%tutu_var%ENTILL~ 8
IF ~Gender(Player1, MALE) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN EXTERN ~%JAHEIRA_JOINED%~ JaheiraEntill2
END

EXTEND_BOTTOM ~%tutu_var%ENTILL~ 7
IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN EXTERN ~%JAHEIRA_JOINED%~ JaheiraEntill1
END

I_C_T ~%tutu_var%LARRIA~ 3 X#JaheiraLarriaz
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @26
END

//I_C_T2 ~%tutu_var%CORDYR~ 1 X#JaheiraCordyr
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @27
//END

//I_C_T2 ~%tutu_var%HANNAH~ 1 X#JaheiraHannah1
//== ~%JAHEIRA_JOINED%~ IF ~!InParty("khalid") InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @28
//END

//I_C_T2 ~%tutu_var%HANNAH~ 1 X#JaheiraHannah2
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @29
//== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @30
//END

I_C_T ~%tutu_var%TREMAI~ 3 X#JaheiraTremai
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @31
END

//I_C_T ~%tutu_scriptbg%NEB~ 8 X#JaheiraNeb
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @32
//== ~%tutu_scriptbg%NEB~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @33
//END

I_C_T ~%tutu_var%PETRIN~ 3 X#JaheiraPetrine
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @34
== ~%tutu_var%PETRIN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @35
END

//I_C_T2 ~%tutu_var%RAMAZI~ 6 X#JaheiraRamazis2
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @36
//END

I_C_T3 ~%tutu_var%ABELA~ 12 X#JaheiraAbela2
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @37 DO ~SetGlobal("X#JaheiraBetrayAbela","GLOBAL",1)~
== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @38 DO ~SetGlobal("X#KhalidBetrayAbela","GLOBAL",1)~
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @39 DO ~SetGlobal("X#KivanBetrayAbela","GLOBAL",1)~
== ~%tutu_var%ABELA~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @40
END

//I_C_T3 ~%tutu_var%RAMAZI~ 15 X#JaheiraRamazis1
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @41
//== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @38
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @39
//DO ~ActionOverride("jaheira",LeaveParty()) ActionOverride("jaheira",Attack("ramazis")) ActionOverride("khalid",LeaveParty()) ActionOverride("khalid",Attack("ramazis")) ActionOverride("kivan",LeaveParty()) ActionOverride("kivan",Attack("ramazis"))~
//== ~%tutu_var%RAMAZI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @1001
//END

//I_C_T2 ~%tutu_var%ABELA~ 9 X#JaheiraAbela1
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @42
//== ~%tutu_var%ABELA~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @40
//END

//I_C_T2 ~%tutu_var%RAGEFA~ 6 X#JaRagefast
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @43
//END

//I_C_T2 ~%tutu_var%NOBW8~ 3 X#JaAreana
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @44
//END

//I_C_T2 ~%tutu_var%ARKION~ 1 X#JaArkion
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @45
//END

I_C_T ~%tutu_var%ELMIN5~ 9 X#JaElminster52
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @46
== ~%tutu_var%ELMIN5~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @47
END

I_C_T ~%tutu_var%ELMIN5~ 2 X#JaElminster51
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @48
== ~%tutu_var%ELMIN5~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @49
END

//I_C_T2 ~%tutu_var%COKSMTH~ 0 X#JaWyvernsPeter
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @50
//END

//I_C_T2 ~%tutu_var%TENYA~ 0 X#JaTENYA
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @51
//END

//I_C_T2 ~%tutu_var%GERDE~ 0 X#JaGerde
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @52
//END

I_C_T ~%tutu_var%TELMAN~ 4 X#JaTelman
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !Dead("tenya")~ THEN @53
END

I_C_T ~%tutu_var%ELMINS4~ 0 X#JaDoppelgangEl
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @54
END

I_C_T ~%tutu_var%RIELTA~ 8 X#JaRieltar3
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @55
END

I_C_T ~%tutu_var%RIELTA~ 7 X#JaRieltar2
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @55
END

//I_C_T2 ~%tutu_var%RIELTA~ 2 X#JaRieltar1
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @56
//END

//I_C_T2 ~%tutu_scriptbg%WILLIA~ 10 X#ManyInt16
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @57
//== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @58
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @59
//== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @60
//END

I_C_T ~%tutu_var%TRANZI~ 10 X#JaTranzi2
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @61
== ~%tutu_var%TRANZI~ @62
END

//I_C_T ~%tutu_var%TRANZI~ 7 X#JaTranzi1
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @63
//== ~%tutu_var%TRANZI~ @62
//END

I_C_T ~%tutu_var%ELMIN2~ 4 X#JaheiraEl23
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !Global("sprite_is_deadtranzig","global",1)~ THEN @64
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) Global("sprite_is_deadtranzig","global",1)~ THEN @211
== ~%tutu_var%ELMIN2~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @65
END

I_C_T ~%tutu_var%ELMIN2~ 9 X#JaheiraEl22
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @66
== ~%tutu_var%ELMIN2~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @65
END

I_C_T ~%tutu_var%ELMIN2~ 7 X#JaheiraEl21
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @67
== ~%tutu_var%ELMIN2~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @68
END

EXTEND_BOTTOM ~%tutu_var%PERDUE~ 6
IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN EXTERN ~%JAHEIRA_JOINED%~ JAPerdue1
END

//I_C_T2 ~%tutu_var%FIREBE~ 2 X#JaheiraFirebeard
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @69
//END

I_C_T ~%tutu_var%SILKE~ 10 X#JaheiraSilke2
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @70
== ~%tutu_var%SILKE~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @71
END

I_C_T ~%tutu_var%SILKE~ 6 X#JaheiraSilke1
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @72
END

//I_C_T2 ~%tutu_var%KELDDA~ 1 X#JaheiraMLReward
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @73
//== ~%tutu_var%KELDDA~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @74
//END

I_C_T ~%tutu_var%KORAX~ 3 X#JaheiraKorax
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @75
DO ~SetGlobal("X#KoraxCharmedJah","GLOBAL",1)~
== ~%tutu_var%KORAX~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @1003
END

I_C_T ~%tutu_var%FLAM5~ 0 X#JaheiraBanditry
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @76
== ~%tutu_var%FLAM5~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @77
END

I_C_T ~%tutu_var%HALFTR~ 7 X#JaheiraFurret
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @78
== ~%tutu_var%HALFTR~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @79
END

//I_C_T ~%tutu_var%POE~ 15 X#JaheiraPOE
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @80
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("garrick")~ THEN @81
//== ~%GARRICK_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("garrick")~ THEN @82
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("garrick")~ THEN @83
//== ~%tutu_var%POE~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("garrick")~ THEN @84
//END

I_C_T ~%tutu_var%FORESH~ 3 X#JaheiraForeshadow
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @85
 == ~%KHALID_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid")~ THEN @86
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid")~ THEN @87
 == ~%tutu_var%FORESH~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @88
END

I_C_T ~%tutu_var%BERRUN~ 4 X#JaheiraBerrun1
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @89
END

//I_C_T2 ~%tutu_var%BERRUN~ 11 X#JaheiraBerrun2
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @90
//END

//I_C_T2 ~%tutu_var%BERRUN~ 12 X#JaheiraBerrun3
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @90
//END

//I_C_T2 ~%tutu_var%BERRUN~ 13 X#JaheiraBerrun4
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @90
//END

//I_C_T2 ~%tutu_var%BERRUN~ 15 X#JaheiraBerrun5
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @91
//== ~%tutu_var%BERRUN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @92
//END

//I_C_T2 ~%tutu_var%BERRUN~ 16 X#JaheiraBerrun6
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @91
//== ~%tutu_var%BERRUN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @92
//END

//I_C_T2 ~%tutu_var%BERRUN~ 17 X#JaheiraBerrun7
//== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @93
//== ~%tutu_var%BERRUN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @92
//END

I_C_T ~%tutu_var%BERRUN~ 18 X#JaheiraBerrun8
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @91
== ~%tutu_var%BERRUN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @92
END

I_C_T ~%tutu_var%CORSON~ 6 X#JaheiraCorson
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @94
 == ~%tutu_var%CORSON~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @95
END

//I_C_T ~%tutu_var%LASKAL~ 5 X#JaheiraLaskal
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @96
// == ~%tutu_var%LASKAL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @97
//END

I_C_T ~%tutu_var%TAKIYAH~ 0 X#JaheiraTakiyah
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @98
 == ~%tutu_var%TAKIYAH~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @99
END

I_C_T ~%tutu_var%IZEFIA~ 0 X#JaheiraIzefia
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @100
 == ~%tutu_var%IZEFIA~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @101
END

//I_C_T2 ~%tutu_var%AMARAN~ 4 X#JaheiraAmaran
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @102
// == ~%tutu_var%AMARAN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @103
//END

I_C_T ~%tutu_var%BREVLI~ 1 X#JaheiraBrevlik1
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) OR(2) Class(Player1,BARD) Class(Player1,THIEF_ALL)~ THEN @104
== ~%tutu_var%BREVLI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) OR(2) Class(Player1,BARD) Class(Player1,THIEF_ALL)~ THEN @105
END

//I_C_T ~%tutu_var%BREVLI~ 14 X#JaheiraBrevlik2
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @106
// == ~%tutu_var%BREVLI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @107
//END

I_C_T2 ~%tutu_var%BREVLI~ 17 X#JaheiraBrevlik3
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @108
== ~%tutu_var%BREVLI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @109 DO ~SetGlobal("HelpBrevlik","GLOBAL",1)~
END

I_C_T ~%tutu_var%BREVLI~ 18 X#JaheiraBrevlik4
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @110
== ~%tutu_var%BREVLI~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @111
END

I_C_T2 ~%tutu_var%BRIELB~ 14 X#JaheiraBrielbara
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @112
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @113
END

I_C_T ~%tutu_var%JARED~ 0 X#JaheiraJared
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @114
 END
 
I_C_T ~%tutu_var%DRYAD~ 1 X#JaheiraDryad1
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @115
 == ~%tutu_var%DRYAD~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @116
 END
 
//I_C_T ~%tutu_var%DRYAD~ 4 X#JaheiraDryad2
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @117
// == ~%tutu_var%DRYAD~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @118
//END

//I_C_T2 ~%tutu_var%CALDO~ 6 X#JaheiraCaldo
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @119
// == ~%KHALID_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @120
// DO ~SetGlobal("X#JaiDryadHostile","GLOBAL",1) ActionOverride("jaheira",LeaveParty()) ActionOverride("jaheira",Enemy()) ActionOverride("khalid",LeaveParty()) ActionOverride("khalid",Enemy())~
//END

//I_C_T2 ~%tutu_var%DRIENN~ 4 X#JaheiraDrienne
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @121
// == ~%tutu_var%DRIENN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @122
//END

I_C_T ~%tutu_var%SHOAL~ 8 X#JaheiraShoal
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @123
 == ~%tutu_var%SHOAL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @124
END

I_C_T ~%tutu_var%BOB~ 2 X#JaheiraBOB
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @125
 == ~%tutu_var%BOB~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @126
END

I_C_T ~%tutu_var%BOB~ 3 X#JaheiraBOB1
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @125
 == ~%tutu_var%BOB~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @126
END

I_C_T ~%tutu_var%MINERN~ 3 X#JaheiraMiner1
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @127
 == ~%tutu_var%MINERN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @128
END

I_C_T ~%tutu_var%MINERN~ 9 X#JaheiraMiner2
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @127
 == ~%tutu_var%MINERN~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @129
END


INTERJECT ~%tutu_var%FALDOR~ 0 X#JaheiraFaldorn
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @130
END
IF ~~ THEN DO ~SetGlobal("X#JaiFaldorn","GLOBAL",1)~ EXIT

INTERJECT ~%tutu_var%ZEKE~ 0 X#JaheiraZeke
 == ~%JAHEIRA_JOINED%~ IF ~StateCheck("branwen",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @131
 == ~%tutu_var%ZEKE~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @132
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @133
 == ~%tutu_var%ZEKE~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @134
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @135
== ~%tutu_var%ZEKE~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @136
END
IF ~~ THEN DO ~GiveItemCreate("%tutu_var%SCRLPET","jaheira",1,0,0)~
EXIT

//I_C_T ~%tutu_var%BASSIL~ 5 X#JaheiraBassil
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @137
// == ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @138
//END

//I_C_T ~%tutu_var%BASSIL~ 6 X#JaheiraBassil2
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @137
// == ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @138
//END

//I_C_T ~%tutu_var%BASSIL~ 10 X#JaheiraBassil3
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @137
// == ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @138
//END

//I_C_T ~%tutu_var%BASSIL~ 11 X#JaheiraBassil4
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @137
// == ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @138
//END

//I_C_T ~%tutu_var%BASSIL~ 12 X#JaheiraBassil5
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @137
// == ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @138
//END

//I_C_T ~%tutu_var%BASSIL~ 13 X#JaheiraBassil6
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @137
// == ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @138
//END

//I_C_T ~%tutu_var%BASSIL~ 14 X#JaheiraBassil7
// == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @137
// == ~%tutu_var%BASSIL~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @138
//END

I_C_T ~%tutu_scriptbg%MTOWN3~ 0 X#JaheiraDruggie
 == ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @139
 == ~%tutu_var%MTOWN3~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @140
END


APPEND ~%JAHEIRA_JOINED%~

/* entering undercity */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#JahUndercity","GLOBAL",1)~ THEN BEGIN JaheiraUNdercity
SAY @141
IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("X#JahUndercity","GLOBAL",2)~ EXTERN ~%KHALID_JOINED%~ KhalidUnder1
IF ~OR(3) !InParty("khalid") !InMyArea("khalid") StateCheck("khalid",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("X#JahUndercity","GLOBAL",2)~ EXIT
END

/* with Entillis */

IF ~~ JaheiraEntill1
SAY @142
++ @143 EXTERN ~%tutu_var%ENTILL~ JAENTILL1.1
++ @144 DO ~ ActionOverride("entillis",EscapeArea())~ JOURNAL @25 EXIT
END

IF ~~ JAENTILL1.2
SAY @145
++ @146 DO ~ ActionOverride("entillis",EscapeArea())~ JOURNAL @25 EXIT
END

/* ToTSC Jaheira Mendas */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraMendas","GLOBAL",1)~ THEN BEGIN JaheiraMendasDead
SAY @147
IF ~~ THEN DO ~SetGlobal("X#JaheiraMendas","GLOBAL",2)~ EXIT
END

/* ToTSC Jaheira Kaisha Interjection */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraKaisha","GLOBAL",1)~ THEN BEGIN JaheiraKaishaDead
SAY @148
IF ~~ THEN DO ~SetGlobal("X#JaheiraKaisha","GLOBAL",2)~ EXIT
END

/* ToTSC Jaheira Aec Interjections */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraTanar","GLOBAL",1)~ THEN BEGIN JaheiraReactAecDead
SAY @149
IF ~~ THEN DO ~SetGlobal("X#JaheiraTanar","GLOBAL",2)~ EXIT
END

/* Jaheira Perdue Interjections */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#JahOpinionOnHelpPerdue","GLOBAL",1)~ THEN BEGIN JaheiraReactToPerdue2
SAY @150
IF ~~ THEN DO ~SetGlobal("X#JahOpinionOnHelpPerdue","GLOBAL",2)~ EXIT
END

IF ~~ JAPerdue1
SAY @151
IF ~~ THEN EXTERN ~%tutu_var%PERDUE~ 7
END

/* Korax Turned Hostile */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#KoraxCharmedJah","GLOBAL",2)~ THEN BEGIN JaheiraKoraxEnemy
SAY @152
IF ~~ THEN DO ~SetGlobal("X#KoraxCharmedJah","GLOBAL",3)~ EXIT
END

/* After Durlag */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraDemon","GLOBAL",1)~ THEN BEGIN JaheiraDemon
SAY @153
+ ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ + @154 DO ~SetGlobal("X#JaheiraDemon","GLOBAL",2)~ + JADU1.1KH
+ ~!InParty("khalid")~ + @154 DO ~SetGlobal("X#JaheiraDemon","GLOBAL",2)~ + JADU1.1
+ ~ReputationGT(Player1,10)~ + @155 DO ~SetGlobal("X#JaheiraDemon","GLOBAL",2)~ + JADU1.2H
+ ~!ReputationGT(Player1,10)~ + @155 DO ~SetGlobal("X#JaheiraDemon","GLOBAL",2)~ + JADU1.2L
++ @156 DO ~SetGlobal("X#JaheiraDemon","GLOBAL",2)~ + JADU1.3
+ ~Class(Player1,BARD_ALL)~ + @157 DO ~SetGlobal("X#JaheiraDemon","GLOBAL",2)~ + JADU1.4
+ ~Class(Player1,DRUID_ALL)~ + @158 DO ~SetGlobal("X#JaheiraDemon","GLOBAL",2)~ + JADU1.5
END

IF ~~ JADU1.1
SAY @159
IF ~~ THEN EXIT
END

IF ~~ JADU1.2H
SAY @160
IF ~~ THEN EXIT
END

IF ~~ JADU1.2L
SAY @161
IF ~~ THEN EXIT
END

IF ~~ JADU1.3
SAY @162
IF ~~ THEN EXIT
END

IF ~~ JADU1.4
SAY @163
IF ~~ THEN EXIT
END

IF ~~ JADU1.5
SAY @164
IF ~~ THEN EXIT
END


/* Jaheira Sirene */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaiSirene","GLOBAL",1)~ THEN BEGIN JaiSirene1
SAY @165
IF ~Gender(Player1,MALE)~ THEN DO ~SetGlobal("X#JaiSirene","GLOBAL",2)~ GOTO JaiSirene1.1
IF ~!Gender(Player1,MALE)~ THEN DO ~SetGlobal("X#JaiSirene","GLOBAL",2)~ EXIT
END

IF ~~ THEN JaiSirene1.1
SAY @166
IF ~~ THEN EXIT
END


/* Jaheira Koveras */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaiKoveras","GLOBAL",1)~ THEN JaiKoveras1
SAY @167
IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("X#JaiKoveras","GLOBAL",2)~ EXTERN ~%KHALID_BANTER%~ JaiKhKoveras1
IF ~!InParty("khalid")~ THEN DO ~SetGlobal("X#JaiKoveras","GLOBAL",2)~ EXIT
END

/* with Faldorn */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaiFaldorn","GLOBAL",2)~ THEN JaiFaldorn1
SAY @168
++ @169 DO ~SetGlobal("X#JaiFaldorn","GLOBAL",3)~ + JAIFaldorn1.1
++ @170 DO ~SetGlobal("X#JaiFaldorn","GLOBAL",3)~ + JAIFaldorn1.2
++ @171 DO ~SetGlobal("X#JaiFaldorn","GLOBAL",3)~ + JAIFaldorn1.3
END

IF ~~ JAIFaldorn1.1
SAY @172
IF ~~ THEN EXTERN ~%tutu_var%FALDOR~ 2
END

IF ~~ JAIFaldorn1.2
SAY @173
IF ~~ THEN EXTERN ~%tutu_var%FALDOR~ 3
END

IF ~~ JAIFaldorn1.3
SAY @174
IF ~~ THEN EXTERN ~%tutu_var%FALDOR~ 3
END

/*  Jaheira, Upon Entering AR3500 (Basilisk Area East Of The Temple) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JUEBAEOTT","GLOBAL",1)~ THEN JUEBAEOTT1
SAY @175
IF ~~ THEN DO ~SetGlobal("X#JUEBAEOTT","GLOBAL",2)~ EXIT
END

/*  Jaheira, Upon Entering Cloakwood 2 (AR2100) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JUECAT","GLOBAL",1)~ THEN JUECAT1
SAY @176
IF ~~ THEN DO ~SetGlobal("X#JUECAT","GLOBAL",2)~ EXIT
END

/* Jaheira sees Osmadi */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaiOsmadi","GLOBAL",1)~ THEN JAIOsmadi
SAY @177
IF ~~ THEN DO ~SetGlobal("X#JaiOsmadi","GLOBAL",2)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaiOsmadi","GLOBAL",3)~ THEN JAIOsmadi
SAY @178
IF ~~ THEN DO ~SetGlobal("X#JaiOsmadi","GLOBAL",4)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaiShadowDruids","GLOBAL",1)~ THEN JAIShadowDruids
SAY @179
= @180
IF ~~ THEN DO ~SetGlobal("X#JaiShadowDruids","GLOBAL",2)~ EXIT
END

END

APPEND ~%tutu_var%ENTILL~

IF ~~ JAENTILL1.1
SAY @181
IF ~~ THEN EXTERN ~%JAHEIRA_JOINED%~ JAENTILL1.2
END

END

APPEND ~%KHALID_BANTER%~

IF ~~ JaiKhKoveras1
SAY @182
IF ~~ THEN EXIT
END

END

APPEND ~%KHALID_JOINED%~ 

IF ~~ KhalidUnder1
SAY @183
IF ~~ THEN EXIT
END
END

APPEND ~%tutu_var%KRUMM~

IF ~%BGT_VAR% Global("X#JaiDryadHostile","GLOBAL",2)~ THEN BEGIN KrummJah
 SAY @184
 IF ~~ THEN EXTERN ~%tutu_var%DRYAD~ 5
END

END

/* Jaheira Samuel */

ADD_STATE_TRIGGER ~%tutu_var%FLAM4~ 9 ~OR(3) !InParty("jaheira") !InMyArea("jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~

APPEND ~%tutu_var%FLAM4~
IF WEIGHT #3 ~%BGT_VAR% PartyHasItem("%tutu_var%MISC13") InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN BEGIN 9
 SAY @185
 IF ~~ THEN REPLY @186 GOTO 10
 IF ~~ THEN REPLY @187 EXTERN ~%JAHEIRA_BANTER%~ JaiSamuel1
 IF ~~ THEN REPLY @188 GOTO 11
 IF ~~ THEN REPLY @189 GOTO 12
 END
 END
 
 APPEND ~%JAHEIRA_BANTER%~
 
 IF ~~ JaiSamuel1
 SAY @190
 IF ~~ THEN EXTERN ~%tutu_var%FLAM4~ 10
 END
 END

/*  Jaheira, Upon Entering Ankheg Area North Of Friendly Arm Inn (AR1400) */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#JUEAANOFAI","GLOBAL",1)~ THEN ~%JAHEIRA_JOINED%~ X#JUEAANOFAI1
@191
DO ~SetGlobal("X#JUEAANOFAI","GLOBAL",2)~
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) InParty("khalid")~ THEN @192
== ~%KHALID_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) InParty("khalid")~ THEN @193
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) InParty("khalid")~ THEN @194
EXIT

/* Coran wyvern */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#JUECAF","GLOBAL",1)~ THEN ~%JAHEIRA_JOINED%~ JUECAFstart
@195
= @196
= @197
DO ~SetGlobal("X#JUECAF","GLOBAL",2)~
== ~%JAHEIRA_BANTER%~ IF ~InParty ("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @198
== ~%CORAN_BANTER%~ IF ~InParty ("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) !Global("P#CoranMatch","GLOBAL",1)~ THEN @199
== ~%CORAN_BANTER%~ IF ~InParty ("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1)~ THEN @200
== ~%JAHEIRA_BANTER%~ IF ~InParty ("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @201
EXIT

/* Jaheira demonknight */

CHAIN3 ~%JAHEIRA_JOINED%~ JADU1.1KH
@202
== ~%KHALID_BANTER%~ @203
== ~%JAHEIRA_BANTER%~ @204
EXIT
