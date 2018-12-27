BEGIN X#XZFSP1
BEGIN X#XZFSP2
BEGIN X#XZFSP3

/* Item making */

// Halbaz
ADD_TRANS_TRIGGER ~%tutu_var%HALBAZ~ 0 ~!PartyHasItem("X#XZDRIA")~

EXTEND_BOTTOM ~%tutu_var%HALBAZ~ 0
+ ~Global("X#XzarMakeRing","GLOBAL",1) PartyHasItem("X#XZDRIA") !PartyHasItem("X#XZMIRI")~ + @0 DO ~StartStore("%tutu_var%STO0703",LastTalkedToBy(Myself))~ EXIT
+ ~Global("X#XzarMakeRing","GLOBAL",1) PartyHasItem("X#XZDRIA") !PartyHasItem("X#XZMIRI")~ + @1 EXIT
IF ~!InParty("xzar") PartyHasItem("X#XZDRIA") Global("X#XzarMakeRing","GLOBAL",0)~ GOTO NoXzarDriad

IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XzarMakeRing","GLOBAL",0) PartyHasItem("X#XZDRIA") !PartyHasItem("X#XZMIRI")~ EXTERN ~%XZAR_JOINED%~ MakeRingChain1

IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) 
Global("X#XzarMakeRing","GLOBAL",0) PartyHasItem("X#XZDRIA") PartyHasItem("X#XZMIRI")~ EXTERN ~%XZAR_JOINED%~ MakeRingChain2

IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) 
PartyGoldGT(1000) Global("X#XzarMakeRing","GLOBAL",1) PartyHasItem("X#XZDRIA") PartyHasItem("X#XZMIRI")~ EXTERN ~%XZAR_JOINED%~ MakeRingChain3

IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)
OR(2) Global("X#XzarNags","GLOBAL",3) Global("X#XzarNags","GLOBAL",4) Global("X#XZRingMade","GLOBAL",0)
PartyGoldGT(1000)~ GOTO MakeRingChain4

IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)
Global("X#XZRingPayed","GLOBAL",0) GlobalGT("X#XzarNags","GLOBAL",0) 
Global("X#XZRingMade","GLOBAL",1) !PartyGoldGT(1000)~ GOTO NoMoney


IF ~Global("X#XZRingMade","GLOBAL",1)
Global("X#XZRingPayed","GLOBAL",1) GlobalTimerExpired("X#XzarRingTime","GLOBAL")~ GOTO XzarRingReady1

IF ~Global("X#XZRingMade","GLOBAL",3) GlobalTimerExpired("X#XzarRingTime","GLOBAL") 
PartyGoldGT(500)~ GOTO XzarRingReady2

IF ~Global("X#XZRingMade","GLOBAL",3) GlobalTimerExpired("X#XzarRingTime","GLOBAL")
!PartyGoldGT(500)~ GOTO XzarRingReady3

+ ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XzarMakeRing","GLOBAL",1) Global("X#XZRingPayed","GLOBAL",0)
!PartyGoldGT(1000) PartyHasItem("X#XZMIRI")~ + @0 DO ~StartStore("%tutu_var%STO0703",LastTalkedToBy(Myself))~ EXIT
+ ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XzarMakeRing","GLOBAL",1) Global("X#XZRingPayed","GLOBAL",0)
!PartyGoldGT(1000) PartyHasItem("X#XZMIRI")~ + @1 EXIT
END

APPEND ~%tutu_var%HALBAZ~

IF ~PartyHasItem("X#XZDRIA") Global("X#XzarMakeRing","GLOBAL",0)~ THEN BEGIN NoXzarDriad
SAY @2
++ @3 DO ~SetGlobal("X#XzarMakeRing","GLOBAL",1)~ + NoXzarDriad1
END

IF ~~ NoXzarDriad1
SAY @4
++ @5 + NoXzarDriad2
END

IF ~~ NoXzarDriad2
SAY @6
IF ~~ THEN DO ~TakePartyItem("X#XZDRIA") DestroyItem("X#XZDRIA")~ EXIT
END

IF ~~ MakeRingChain4
SAY @7
IF ~~ THEN EXTERN ~%XZAR_JOINED%~ MakeRingChain4.1
END

IF ~~ AcceptedOfferXzar
SAY @8
IF ~~ THEN DO ~SetGlobal("X#XZRingMade","GLOBAL",1) 
SetGlobal("X#XZRingPayed","GLOBAL",1)
SetGlobalTimer("X#XzarRingTime","GLOBAL",36000)
TakePartyGold(1000)
TakePartyItem("X#XZDRIA")
TakePartyItem("X#XZMIRI")
DestroyItem("X#XZDRIA")
DestroyItem("X#XZMIRI")~ EXIT
END

IF ~~ NoMoney
SAY @9
IF ~~ THEN GOTO CruelCharRing
END

IF ~~ CruelCharRing
SAY @10
IF ~~ THEN DO ~SetGlobal("X#XZRingMade","GLOBAL",3)
SetGlobalTimer("X#XzarRingTime","GLOBAL",36000)
TakePartyItem("X#XZDRIA")
TakePartyItem("X#XZMIRI")
DestroyItem("X#XZDRIA")
DestroyItem("X#XZMIRI")~ EXIT
END

IF ~Global("X#XZRingMade","GLOBAL",1)~ XzarRingReady1
SAY @11
IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("X#XZRingMade","GLOBAL",2) GiveItemCreate("X#XZRING","xzar",1,0,0)~ EXTERN ~%XZAR_JOINED%~ XzarHasRing
IF ~!InParty("xzar")~ THEN DO ~SetGlobal("X#XZRingMade","GLOBAL",2) GiveItemCreate("X#XZRING",Player1,1,0,0)~ EXIT
END

IF ~Global("X#XZRingMade","GLOBAL",3)~ XzarRingReady2
SAY @12
+ ~PartyGoldGT(500)~ + @13 DO ~TakePartyGold(500) SetGlobal("X#XZRingPayed","GLOBAL",1) SetGlobal("X#XZRingMade","GLOBAL",4) GiveItemCreate("X#XZRING","xzar",1,0,0)~ EXTERN ~%XZAR_JOINED%~ XzarHasRing
++ @14 DO ~SetGlobal("X#XZRingMade","GLOBAL",4) StartStore("%tutu_var%STO0703",LastTalkedToBy(Myself))~ EXTERN ~%XZAR_JOINED%~ XzarRefusedRing
END

IF ~Global("X#XZRingMade","GLOBAL",3)~ XzarRingReady3
SAY @15
++ @16 DO ~StartStore("%tutu_var%STO0703",LastTalkedToBy(Myself))~ EXIT
++ @17 EXIT
END

END

CHAIN3 ~%XZAR_JOINED%~ MakeRingChain1
@18
DO ~SetGlobal("X#XzarMakeRing","GLOBAL",1)~
== ~%tutu_var%HALBAZ~ @19
== ~%XZAR_JOINED%~ @20
== ~%tutu_var%HALBAZ~ @21
== ~%XZAR_JOINED%~ @22
END
++ @23 + MakeRingChain1.1

CHAIN ~%XZAR_JOINED%~ MakeRingChain1.1
@24
END
++ @25 + MakeRingChain1.2

CHAIN ~%XZAR_JOINED%~ MakeRingChain1.2
@26
END
++ @27 + MakeRingChain1.3


CHAIN ~%XZAR_JOINED%~ MakeRingChain1.3
@28
END
++ @29 + MakeRingChain1.4

CHAIN ~%XZAR_JOINED%~ MakeRingChain1.4
@30
EXIT


CHAIN3 ~%XZAR_JOINED%~ MakeRingChain2
@31
DO ~SetGlobal("X#XzarMakeRing","GLOBAL",1)~
== ~%tutu_var%HALBAZ~ @19
== ~%XZAR_JOINED%~ @20
== ~%tutu_var%HALBAZ~ @32
== ~%XZAR_JOINED%~ @33
END
+ ~PartyGoldGT(1000)~ + @34 GOTO X#XZRING1
+ ~!PartyGoldGT(1000)~ + @35 GOTO X#XZRING2
++ @36 GOTO X#XZRING3

CHAIN3 ~%XZAR_JOINED%~ MakeRingChain3
@37
DO ~SetGlobal("X#XzarMakeRing","GLOBAL",2)~
== ~%tutu_var%HALBAZ~ @38
END
+ ~PartyGoldGT(1000)~ + @34 GOTO X#XZRING1
++ @39 GOTO X#XZRING3

APPEND ~%XZAR_JOINED%~

IF ~~ XzarHasRing
SAY @40
IF ~~ THEN EXIT
END

IF ~~ XzarRefusedRing
SAY @41
IF ~~ THEN EXIT
END

/* MontaronCharmingSceme */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarCharmMontaron","GLOBAL",1)~ THEN BEGIN MontyCharming1
SAY @42
= @43
IF ~~ THEN DO ~SetGlobal("X#XzarCharmMontaron","GLOBAL",2)~ EXIT
END

IF ~~ MakeRingChain4.1
SAY @44
IF ~~ THEN DO ~SetGlobal("X#XZRingMade","GLOBAL",1)
SetGlobalTimer("X#XzarRingTime","GLOBAL",36000)
TakePartyGold(1000)
TakePartyItem("X#XZDRIA")
TakePartyItem("X#XZMIRI")
DestroyItem("X#XZDRIA")
DestroyItem("X#XZMIRI")~ EXIT
END

IF ~~ X#XZRING1
SAY @44
IF ~~ THEN EXTERN ~%tutu_var%HALBAZ~ AcceptedOfferXzar
END

IF ~~ X#XZRING2
SAY @45
IF ~~ THEN DO ~SetGlobalTimer("X#XzarRingNag","GLOBAL",ONE_DAY) SetGlobal("X#XzarNags","GLOBAL",1)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarNags","GLOBAL",2)~ THEN BEGIN XzarRingNag1
SAY @46
++ @47 + XzarNag1.1
++ @48 + XzarNag1.2
++ @49 + XzarNag1.3
++ @50 + XzarNag1.4
END

IF ~~ XzarNag1.1
SAY @51
IF ~~ THEN DO ~SetGlobal("X#XzarNags","GLOBAL",3) RealSetGlobalTimer("X#XzarRingNag2","GLOBAL",900)~ EXIT
END

IF ~~ XzarNag1.2
SAY @52
IF ~~ THEN DO ~SetGlobal("X#XzarNags","GLOBAL",3) RealSetGlobalTimer("X#XzarRingNag2","GLOBAL",900)~ EXIT
END

IF ~~ XzarNag1.3
SAY @53
IF ~~ THEN DO ~SetGlobal("X#XzarNags","GLOBAL",3) RealSetGlobalTimer("X#XzarRingNag2","GLOBAL",900)~ EXIT
END

IF ~~ XzarNag1.4
SAY @54
IF ~~ THEN DO ~TakePartyItem("X#XZMIRI") TakePartyItem("X#XZDRIA") TakePartyItem("X#XZSLIM") GiveGoldForce(-200) LeaveParty() EscapeArea() ActionOverride("montaron",LeaveParty()) ActionOverride("montaron",EscapeArea())~ 
EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarNags","GLOBAL",4)~ THEN BEGIN XzarRingNag2
SAY @55
++ @56 + XzarLoop1
++ @57 GOTO Xzar2_nag1
+ ~PartyGoldLT(1000)~ + @58 GOTO Xzar2_nag2
++ @59 GOTO Xzar2_nag2
++ @60 + XzarNag1.4
END

IF ~~ Xzar2_nag1
SAY @61 
IF ~~ THEN DO ~SetGlobal("X#XzarNags","GLOBAL",3) RealSetGlobalTimer("X#XzarRingNag2","GLOBAL",900)~ EXIT
END

IF ~~ Xzar2_nag2
SAY @62
IF ~~ THEN DO ~SetGlobal("X#XzarNags","GLOBAL",3) RealSetGlobalTimer("X#XzarRingNag2","GLOBAL",15000)~ EXIT
END

IF ~~ XzarLoop1
SAY @44
IF ~~ THEN DO ~SetGlobal("X#XzarNags","GLOBAL",3) RealSetGlobalTimer("X#XzarRingNag2","GLOBAL",15000)~ EXIT
END


IF ~~ X#XZRING3
SAY @63
IF ~ReputationGT(Player1,12)~ THEN DO ~TakePartyItem("X#XZDRIA")
TakePartyItem("X#XZMIRI")
DestroyItem("X#XZDRIA")
DestroyItem("X#XZMIRI")
ActionOverride("montaron",LeaveParty())
ActionOverride("montaron",EscapeArea())
LeaveParty()
EscapeArea()~ EXIT
IF ~!ReputationGT(Player1,12)~ THEN DO ~ReallyForceSpellRES("X#XZSPL","xzar")~ EXTERN ~%tutu_var%HALBAZ~ CruelCharRing
END

/* Nag after the ring was made */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarNags","GLOBAL",6)~ THEN BEGIN XzarNag4
SAY @64
+ ~Gender(Player1,MALE)~ + @65 DO ~SetGlobal("X#XzarNags","GLOBAL",7) SetGlobalTimer("X#XzarNagsTime","GLOBAL",900)~ EXIT
+ ~Gender(Player1,FEMALE)~ + @66 DO ~SetGlobal("X#XzarNags","GLOBAL",7) SetGlobalTimer("X#XzarNagsTime","GLOBAL",900)~ EXIT
++ @67 GOTO Xzar4_nag2
++ @68 GOTO Xzar4_nag3
END

IF ~~ Xzar4_nag2
SAY @69
IF ~~ THEN GOTO XzarNag4
END

IF ~~ Xzar4_nag3
SAY @70
++ @71 DO ~SetGlobal("X#XzarNags","GLOBAL",7) SetGlobalTimer("X#XzarNagsTime","GLOBAL",900)~ EXIT
++ @72 GOTO Xzar4_nag4
END

IF ~~ Xzar4_nag4 
SAY @73
IF ~~ THEN DO ~SetGlobalTimer("X#XzarGuards","GLOBAL",ONE_DAY) SetGlobal("X#XzarNags","GLOBAL",9)~ EXIT
END

IF ~Global("X#XzarNags","GLOBAL",8)~ THEN BEGIN XzarNag5
SAY @74
++ @75 + XzarNag5.1
END

IF ~~ XzarNag5.1
SAY @76
IF ~~ THEN DO ~SetGlobalTimer("X#XzarNagsTime","GLOBAL",300) SetGlobal("X#XzarNags","GLOBAL",7)~ EXIT
END

// Xzar Charmed Montaron

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarCharmMontaron","GLOBAL",7)~ THEN BEGIN AfterCharm
SAY @77 
++ @78 DO ~SetGlobal("X#XzarCharmMontaron","GLOBAL",8)~ + XZACHRM1.1
++ @79 DO ~SetGlobal("X#XzarCharmMontaron","GLOBAL",8)~ + XZACHRM1.2
++ @80 DO ~SetGlobal("X#XzarCharmMontaron","GLOBAL",8)~ + XZACHRM1.3
++ @81 DO ~SetGlobal("X#XzarCharmMontaron","GLOBAL",8)~ + XZACHRM1.4
END

IF ~~ XZACHRM1.1
SAY @82
++ @83 + XZACHRM1.5
++ @84 + XZACHRM1.6
++ @85 + XZACHRM1.7
END

IF ~~ XZACHRM1.2
SAY @86
IF ~~ THEN DO ~GiveItem("X#XZRING",Player1)~ EXIT
END

IF ~~ XZACHRM1.3
SAY @87
IF ~~ THEN DO ~GiveItem("X#XZRING","xzar")~ EXIT
END

IF ~~ XZACHRM1.4
SAY @88
IF ~~ THEN DO ~GiveItem("X#XZRING","xzar")~ EXIT
END

IF ~~ XZACHRM1.5
SAY @89
IF ~~ THEN DO ~GiveItem("X#XZRING",Player1)~ EXIT
END

IF ~~ XZACHRM1.6
SAY @90
IF ~~ THEN DO ~GiveItem("X#XZRING",Player1)~ EXIT
END

IF ~~ XZACHRM1.7
SAY @91
++ @92 + XZACHRM1.8
END

IF ~~ XZACHRM1.8
SAY @93
IF ~~ THEN DO ~GiveItem("X#XZRING","xzar")~ EXIT
END

/* Xzar Finale */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarNags","GLOBAL",15)~ THEN BEGIN XzRingFinal1
SAY @94
++ @27 DO ~SetGlobal("X#XzarNags","GLOBAL",16)~ + XzRingFinal1.1
END

IF ~~ XzRingFinal1.1
SAY @95
++ @96 + XzRingFinal1.2
END

IF ~~ XzRingFinal1.2
SAY @97
++ @98 + XzRingFinal1.3
END

IF ~~ XzRingFinal1.3
SAY @99
IF ~~ THEN DO ~DropItem("X#XZRING",[-1.-1])~ EXIT
END

END

// Flaming Fist Scene

BEGIN X#XZGU01
APPEND X#XZGU01

IF ~%BGT_VAR% Global("X#XzarNags","GLOBAL",11)~ THEN BEGIN XzOfficer1
SAY @100
++ @101 DO ~SetGlobal("X#XzarNags","GLOBAL",12)~ GOTO XzOfficer1.1
END

IF ~~ XzOfficer1.1
SAY @102
++ @103 DO ~GiveGoldForce(-200)
TakePartyItem("X#XZRING")
DestroyItem("X#XZRING")
ActionOverride("X#XZGU01",Enemy())
ActionOverride("X#XZGU02",Enemy())
ActionOverride("X#XZGU03",Enemy())
ActionOverride("xzar",LeaveParty())
ActionOverride("xzar",Enemy())
ActionOverride("montaron",LeaveParty())
ActionOverride("montaron",Enemy())~ EXIT
++ @104 DO ~DestroyItem("X#XZRING") ActionOverride("xzar",MoveToObject("X#XZGU01"))~ EXTERN ~%XZAR_JOINED%~ XzarOfficerChain
END

END

CHAIN IF ~%BGT_VAR% Global("X#XzarNags","GLOBAL",12)~ THEN ~%XZAR_JOINED%~ XzarOfficerChain
@105
DO ~SetGlobal("X#XzarNags","GLOBAL",13)~
== ~%XZAR_JOINED%~ @106
DO ~GiveGoldForce(-200)
TakePartyItem("X#XZRING")
DestroyItem("X#XZRING")
ActionOverride("xzar",LeaveParty())
ActionOverride("xzar",EscapeArea())
ActionOverride("montaron",LeaveParty())
ActionOverride("montaron",EscapeArea())~
== X#XZGU01 @107
END
++ @108 DO ~ActionOverride("X#XZGU01",EscapeArea()) ActionOverride("X#XZGU02",EscapeArea()) ActionOverride("X#XZGU03",EscapeArea())~
EXIT

CHAIN IF ~%BGT_VAR% OR(2) Global("X#XzarCharmMontaron","GLOBAL",5) Global("X#XzarCharmMontaron","GLOBAL",1)~ THEN ~%XZAR_JOINED%~ XzarCharmMonty2
@109
DO ~SetGlobal("X#XzarCharmMontaron","GLOBAL",6)~
== ~%MONTARON_JOINED%~ @110
== ~%XZAR_JOINED%~ @111
EXIT


ADD_STATE_TRIGGER ~%tutu_var%DRYAD~ 6 ~OR(2) !InParty("xzar") Dead("xzar")~
ADD_STATE_TRIGGER ~%tutu_var%DRYAD~ 7 ~OR(2) !InParty("xzar") Dead("xzar")~
ADD_STATE_TRIGGER ~%tutu_var%DRYAD~ 8 ~OR(2) !InParty("xzar") Dead("xzar")~

CHAIN IF ~%BGT_VAR% Dead("caldo") Dead("krumm") Global("AskedDryad","GLOBAL",0) InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XzarDryad","GLOBAL",0)~ THEN ~%tutu_var%DRYAD~ X#XZDRYAD0
@112
== ~%XZAR_JOINED%~ @113
= @114
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @115
== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @116
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @117
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @118
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @119
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @120
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @121
END
++ @122 DO ~SetGlobal("X#XzarDryad","GLOBAL",1)~ EXTERN ~%XZAR_JOINED%~ X#XZDRYAD1
++ @123 DO ~SetGlobal("X#XzarDryad","GLOBAL",2)~ EXTERN ~%tutu_var%DRYAD~ X#XZDRYAD2

CHAIN IF ~%BGT_VAR% Global("X#XzarDryad","GLOBAL",2)~ THEN ~%tutu_var%DRYAD~ X#XZDRYAD2
@124
== ~%XZAR_JOINED%~ @125
END
IF ~~ THEN DO ~SetGlobal("X#XzarDryad","GLOBAL",4)~
EXIT


APPEND ~%tutu_var%DRYAD~ 

IF ~Global("X#XzarDryad","GLOBAL",5)~ THEN BEGIN X#DryadDeath
SAY @126
IF ~~ THEN DO ~SetGlobal("X#XzarDryad","GLOBAL",6) SetGlobal("X#SummonForest","GLOBAL",1) Enemy()
ActionOverride("jaheira",LeaveParty()) ActionOverride("jaheira",Enemy())
ActionOverride("kivan",LeaveParty()) ActionOverride("kivan",Enemy())
ActionOverride("faldorn",LeaveParty()) ActionOverride("faldorn",Enemy())
ActionOverride("minsc",LeaveParty()) ActionOverride("minsc",Enemy())
ActionOverride("khalid",LeaveParty()) ActionOverride("khalid",Enemy())
ActionOverride("ajantis",LeaveParty()) ActionOverride("ajantis",Enemy())
ActionOverride("dynaheir",LeaveParty()) ActionOverride("dynaheir",Enemy()) 
%BGEEXzarEraseJournalEntries%~ SOLVED_JOURNAL @127
EXIT
END
END

APPEND ~%XZAR_JOINED%~

/* Forest Spirits */
IF ~%BGT_VAR% Global("X#SummonForest","GLOBAL",2)~ THEN BEGIN X#DryadDeath1
SAY @128
IF ~~ THEN DO ~SetGlobal("X#SummonForest","GLOBAL",3)~ EXIT
END

IF ~%BGT_VAR% Global("X#SummonForest","GLOBAL",6)~ THEN BEGIN X#DryadDeath2
SAY @129
++ @130 DO ~SetGlobal("X#SummonForest","GLOBAL",7)~ + XZFS1
END

IF ~~ XZFS1
SAY @131
++ @132 + XZFS2
END

IF ~~ XZFS2
SAY @133
++ @134 + XZFS3
END

IF ~~ XZFS3
SAY @135
++ @136 + XZFS4
END

IF ~~ XZFS4
SAY @137
= @138
IF ~~ THEN EXIT
END

/* Found Mithril Ring */
IF ~%BGT_VAR% Global("X#XzarMithrilRing","GLOBAL",1)~ THEN BEGIN XZMithril1
SAY @139
++ @140 DO ~SetGlobal("X#XzarMithrilRing","GLOBAL",2)~ + XZMI1.1
END

IF ~~ XZMI1.1
SAY @141
++ @142 + XZMI1.2
END

IF ~~ XZMI1.2
SAY @143
++ @144 + XZMI1.3
END

IF ~~ XZMI1.3
SAY @145
++ @146 + XZMI1.4
END

IF ~~ XZMI1.4
SAY @147
++ @148 + XZMI1.5
+ ~!PartyHasItem("X#XZDRIA")~ + @149 + XZMI1.6
+ ~PartyHasItem("X#XZDRIA")~ + @149 + XZMI1.7
END

IF ~~ XZMI1.5
SAY @150
IF ~~ THEN EXIT
END

IF ~~ XZMI1.6
SAY @151
= @152
++ @153 + XZMI1.5
++ @154 + XZMI1.8
++ @155 + XZMI1.9
END

IF ~~ XZMI1.7
SAY @156
= @157
++ @158 + XZMI1.5
++ @154 + XZMI1.8
++ @155 + XZMI1.10
END

IF ~~ XZMI1.8
SAY @159
IF ~~ THEN DO ~GiveItem("X#XZMIRI",Player1)~ EXIT
END

IF ~~ XZMI1.9
SAY @160
IF ~~ THEN DO ~GiveItem("X#XZMIRI","xzar")~ EXIT
END

IF ~~ XZMI1.10
SAY @161
IF ~~ THEN DO ~GiveItem("X#XZMIRI","xzar")~ EXIT
END

END

CHAIN IF ~%BGT_VAR% Global("X#SummonForest","GLOBAL",4)~ THEN X#XZFSP1 ForestSpiritsMourn
@162
== X#XZFSP2 @163
== X#XZFSP3 @164
END
IF ~~ THEN
DO ~CreateVisualEffectObject("SPFLSRIN","XZFSPIRIT1")
Wait(1)
CreateVisualEffectObject("SPFLESHS","XZFSPIRIT1")
ActionOverride("XZFSPIRIT1",DestroySelf())

CreateVisualEffectObject("SPFLSRIN","XZFSPIRIT2")
Wait(1)
CreateVisualEffectObject("SPFLESHS","XZFSPIRIT2")
ActionOverride("XZFSPIRIT2",DestroySelf())

CreateVisualEffectObject("SPFLSRIN","XZFSPIRIT3")
Wait(1)
CreateVisualEffectObject("SPFLESHS","XZFSPIRIT3")
ActionOverride("XZFSPIRIT3",DestroySelf())
SetGlobal("X#SummonForest","GLOBAL",5)~ EXIT


CHAIN IF ~%BGT_VAR% Global("X#XzarDryad","GLOBAL",1)~ THEN ~%XZAR_JOINED%~ X#XZDRYAD1
@165
== ~%tutu_var%DRYAD~ @166
END
IF ~~ THEN DO ~SetGlobal("X#XzarDryad","GLOBAL",3) AddExperienceParty(500) EscapeAreaDestroy(5)
%BGEEXzarEraseJournalEntries%~ SOLVED_JOURNAL @167 EXTERN ~%XZAR_JOINED%~ XzarDryadLast1

CHAIN ~%XZAR_JOINED%~ XzarDryadLast1
@168
EXIT


//Second Case

CHAIN IF ~%BGT_VAR% Dead("caldo") Dead("krumm") Global("AskedDryad","GLOBAL",1) InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XzarDryad","GLOBAL",0)~ THEN ~%tutu_var%DRYAD~ X#XZDRYADA
@169
== ~%XZAR_JOINED%~ @113
= @114
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @115
== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @116
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @117
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @170
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @119
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @120
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @121
END
++ @122 DO ~SetGlobal("X#XzarDryad","GLOBAL",1)~ EXTERN ~%XZAR_JOINED%~ X#XZDRYAD3
++ @123 DO ~SetGlobal("X#XzarDryad","GLOBAL",2)~ EXTERN ~%tutu_var%DRYAD~ X#XZDRYAD2

CHAIN IF ~%BGT_VAR% Global("X#XzarDryad","GLOBAL",1)~ THEN ~%XZAR_JOINED%~ X#XZDRYAD3
@171
== ~%tutu_var%DRYAD~ @166
END
IF ~~ THEN DO ~SetGlobal("X#XzarDryad","GLOBAL",3) AddExperienceParty(500) EscapeAreaDestroy(5)
%BGEEXzarEraseJournalEntries%~ SOLVED_JOURNAL @167 EXTERN ~%XZAR_JOINED%~ XzarDryadLast1


//Third Case

CHAIN IF ~%BGT_VAR% Dead("caldo") Dead("krumm") Global("AskedDryad","GLOBAL",2) InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) Global("X#XzarDryad","GLOBAL",0)~ THEN ~%tutu_var%DRYAD~ X#XZDRYADB
@172
== ~%XZAR_JOINED%~ @113
= @114
== ~%JAHEIRA_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @115
== ~%KHALID_JOINED%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @116
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @117
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @170
== ~%MINSC_JOINED%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @119
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @120
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @121
END
++ @122 DO ~SetGlobal("X#XzarDryad","GLOBAL",1)~ EXTERN ~%XZAR_JOINED%~ X#XZDRYAD4
++ @123 DO ~SetGlobal("X#XzarDryad","GLOBAL",2)~ EXTERN ~%tutu_var%DRYAD~ X#XZDRYAD2

CHAIN IF ~%BGT_VAR% Global("X#XzarDryad","GLOBAL",1)~ THEN ~%XZAR_JOINED%~ X#XZDRYAD4
@171
== ~%tutu_var%DRYAD~ @166
= @173
END
IF ~~ THEN DO ~SetGlobal("X#XzarDryad","GLOBAL",3) AddExperienceParty(500) EscapeAreaDestroy(5)
%BGEEXzarEraseJournalEntries%~ SOLVED_JOURNAL @174 EXTERN ~%XZAR_JOINED%~ XzarDryadLast1

/* Druids */

BEGIN ~X#BLACK~
APPEND X#BLACK
IF ~Global("X#XzarDruidsExist","GLOBAL",0)~ THEN BEGIN BlackFile
SAY @175
IF ~~ THEN EXIT
END
END

BEGIN ~X#STORM~
APPEND X#STORM
IF ~Global("X#XzarDruidsExist","GLOBAL",0)~ THEN BEGIN StormFile
SAY @176
IF ~~ THEN EXIT
END
END

BEGIN ~X#ZOSYA~
APPEND X#ZOSYA
IF ~Global("X#XzarDruidsExist","GLOBAL",0)~ THEN BEGIN ZosyaFile
SAY @177
IF ~~ THEN EXIT
END
END

CHAIN IF ~Global("X#XzarDruidsExist","GLOBAL",1)~ THEN X#BLACK X#DruidsXzarDialogue
@178
== ~X#STORM~ @179
== ~X#ZOSYA~ @180
== ~%XZAR_JOINED%~ @181
== ~X#ZOSYA~ @182
== ~X#STORM~ @183
DO ~SetGlobal("X#XzarDruidsExist","GLOBAL",2)~
EXIT

