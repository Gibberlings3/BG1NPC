APPEND ~%MONTARON_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#MontaronWinery","GLOBAL",1)~ THEN BEGIN X#MoWinery
SAY @0
++ @1 DO ~SetGlobal("X#MontaronWinery","GLOBAL",2)~ + MOINT6.1
+ ~Race(Player1,HALFLING)~ + @2 DO ~SetGlobal("X#MontaronWinery","GLOBAL",2)~ + MOINT6.1
++ @3 DO ~SetGlobal("X#MontaronWinery","GLOBAL",2)~ + MOINT6.1
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#MontaronMarl","GLOBAL",5)~ THEN BEGIN X#MoMarl2
SAY @4
++ @5 DO ~SetGlobal("X#MontaronMarl","GLOBAL",6)~ + MOINT5.1
++ @6 DO ~SetGlobal("X#MontaronMarl","GLOBAL",6)~ EXIT
END

IF ~~ MOINT5.1
SAY @7
++ @8 + MOINT5.2
++ @9 EXIT
++ @10 + MOINT5.2
END

IF ~~ MOINT5.2
SAY @11
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#MontaronMarl","GLOBAL",2)~ THEN BEGIN X#MoMarl1
SAY @12
++ @13 DO ~SetGlobal("X#MontaronMarl","GLOBAL",3)~ + MOINT4.1
++ @14 DO ~SetGlobal("X#MontaronMarl","GLOBAL",3)~ + MOINT4.1
++ @15 DO ~SetGlobal("X#MontaronMarl","GLOBAL",4) StartTimer(1,10)~ EXTERN ~%tutu_var%DUNKIN~ 0
END

IF ~~ MOINT4.1
SAY @16
IF ~~ THEN DO ~ActionOverride("marl",Enemy()) ActionOverride("dunkin",Enemy())~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#MOMeilum","GLOBAL",1)~ THEN BEGIN X#MoMeilumTalk
SAY @17
++ @18 DO ~SetGlobal("X#MOMeilum","GLOBAL",2)~ + MOINT3.1
++ @19 DO ~SetGlobal("X#MOMeilum","GLOBAL",2)~ EXIT
++ @20DO ~SetGlobal("X#MOMeilum","GLOBAL",2)~ EXIT
END

IF ~~ MOINT3.1
SAY @21
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#MontaronKillsEnder","GLOBAL",2)~ THEN BEGIN X#MontyKillsSaiTalk
SAY @22
++ @23 DO ~SetGlobal("X#MontaronKillsEnder","GLOBAL",3)~ + MOINT2.1
++ @24 DO ~SetGlobal("X#MontaronKillsEnder","GLOBAL",3)~ + MOINT2.1
++ @25 DO ~SetGlobal("X#MontaronKillsEnder","GLOBAL",3)~ EXIT
END

IF ~~ MOINT2.1
SAY @26
++ @27 + MOINT2.2
++ @28 + MOINT2.3
++ @29 + MOINT2.4
++ @30 + MOINT2.5
END

IF ~~ MOINT2.2
SAY @31
++ @28 + MOINT2.3
++ @29 + MOINT2.4
++ @30 + MOINT2.5
END

IF ~~ MOINT2.3
SAY @32
IF ~~ THEN EXIT
END

IF ~~ MOINT2.4
SAY @33
IF ~~ THEN EXIT
END

IF ~~ MOINT2.5
SAY @34
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#MontyBaldurGate","GLOBAL",2)~ THEN BEGIN X#MontyBaldurComplain
SAY @35
++ @36 DO ~SetGlobal("X#MontyBaldurGate","GLOBAL",3)~ + MOINT1.1
++ @37 DO ~SetGlobal("X#MontyBaldurGate","GLOBAL",3)~ + MOINT1.1
++ @38 DO ~SetGlobal("X#MontyBaldurGate","GLOBAL",3)~ + MOINT1.1
++ @39 DO ~SetGlobal("X#MontyBaldurGate","GLOBAL",3)~ + MOINT1.5
END

IF ~~ MOINT1.1
SAY @40
++ @41 + MOINT1.2
++ @42 + MOINT1.2
END

IF ~~ MOINT1.2
SAY @43
++ @44 + MOINT1.4
++ @45 + MOINT1.4
++ @46 + MOINT1.4
++ @47 + MOINT1.4
END

IF ~~ MOINT1.4
SAY @48
IF ~~ THEN EXIT
END

IF ~~ MOINT1.5
SAY @49
++ @50 + MOINT1.1
++ @51 + MOINT1.1
++ @52 + MOINT1.6
END

IF ~~ MOINT1.6
SAY @53
++ @54 + MOINT1.1
+ ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ + @55 EXTERN ~%XZAR_JOINED%~ MOINT1_XZ 
+ ~OR(3) !InParty("xzar") !InMyArea("xzar") StateCheck("xzar",CD_STATE_NOTVALID)~ + @55 DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
++ @56 + MOINT1.7
END

IF ~~ MOINT1.7
SAY @57
IF ~~ THEN DO ~LeaveParty() Enemy() ActionOverride("xzar",LeaveParty()) ActionOverride("xzar",Enemy())~
EXIT
END

END

//I_C_T2 ~%tutu_var%GORPEL~ 0 X#MontaronGorpel
//== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @58
//== ~%tutu_var%GORPEL~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @59
//== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @60
//END

I_C_T ~%tutu_var%MINEC2~ 10 X#MontaronMineFlooded
== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @61
== ~%tutu_var%MINEC2~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @62
== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @63
== ~%tutu_var%MINEC2~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @64
DO ~SetGlobalTimer("X#MontyMineBaldur","GLOBAL",TEN_DAYS)~
END

//I_C_T2 ~%tutu_var%GREYWO~ 5 X#MontaronGreywolf
//== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @65
//== ~%tutu_var%GREYWO~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @66
//END

//I_C_T ~%tutu_var%PERDUE~ 7 X#MontaronPerdue
// == ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @67
// == ~%tutu_var%PERDUE~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @68
//END

//I_C_T ~%tutu_var%PERDUE~ 8 X#MontaronPerdue2
// == ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @67
//== ~%tutu_var%PERDUE~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @68
//END

//I_C_T2 ~%tutu_var%GANDOL~ 0 X#MontaronGandolar
//== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @69
//DO ~SetGlobal("X#MontyGandolar","GLOBAL",1)~
//END

INTERJECT ~%tutu_var%MARL~ 0 X#MontaronMarl
 == ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @70
END
IF ~~ DO ~SetGlobal("X#MontaronMarl","GLOBAL",1)~
EXIT

INTERJECT ~%tutu_var%ENDER~ 6 X#MontaronEnder1
== ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @71
END
IF ~~ THEN DO ~SetGlobal("X#MontaronKillsEnder","GLOBAL",1)~
JOURNAL @72
EXIT

INTERJECT ~%tutu_var%ENDER~ 13 X#MontaronEnder2
 == ~%MONTARON_JOINED%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @71
END
IF ~~ THEN DO ~SetGlobal("X#MontaronKillsEnder","GLOBAL",1)~
JOURNAL @73
EXIT


CHAIN ~%XZAR_JOINED%~ MOINT1_XZ
@74
== ~%MONTARON_JOINED%~ @75
== ~%XZAR_JOINED%~ @76
DO ~LeaveParty() EscapeArea() ActionOverride("montaron",LeaveParty()) ActionOverride("montaron",EscapeArea())~
EXIT

CHAIN3 ~%MONTARON_JOINED%~ MOINT6.1
@77
== ~%tutu_var%ALVAHE~ @78
== ~%MONTARON_BANTER%~ @79
== ~%tutu_var%ALVAHE~ @80
== ~%MONTARON_BANTER%~ @81
== ~%tutu_var%ALVAHE~ @82
== ~%MONTARON_BANTER%~ @83
== ~%tutu_var%ALVAHE~ @84
== ~%MONTARON_BANTER%~ @85
== ~%tutu_var%ALVAHE~ @86
== ~%MONTARON_BANTER%~ @87
== ~%MONTARON_BANTER%~ IF ~Global("X#MontyGandolar","GLOBAL",1)~ THEN @88
EXIT
