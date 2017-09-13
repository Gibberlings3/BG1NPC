/* CONTENTS */
/* Shar-PC talks */
///* female low rep a male in the party */
///* female med rep a male in the party (6 to 12 inclusive) */
///* female pc high rep male in the party */
///* male PClow rep *//* Interest Talk */
/////* morning after */
///* Male with high rep */
/* morning after */
/* quitting piece */
/* Scripted NPC banter */
/* Unscripted banter */

APPEND ~%SHARTEEL_JOINED%~

/* Shar-PC talks */
///* female low rep a male in the party */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ShLowReputation","GLOBAL",1)~ THEN BEGIN SHPC1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#ShLowReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#ShLowReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC1.2
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#ShLowReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC1.3
IF ~~ THEN REPLY @4 DO ~SetGlobal("X#ShLowReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC1.4
END

IF ~~ THEN BEGIN SHPC1.1
SAY @5
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC1.2
SAY @6
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC1.3
SAY @7
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC1.4
SAY @8
IF ~~ THEN EXIT
END

///* female med rep a male in the party (6 to 12 inclusive) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ShMedReputation","GLOBAL",1)~ THEN BEGIN SHPC2
SAY @9
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#SHPC2","LOCALS",1) SetGlobal("X#ShMedReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC2.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#SHPC2","LOCALS",1) SetGlobal("X#ShMedReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC2.2
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#SHPC1","LOCALS",1) SetGlobal("X#ShMedReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC2.3
IF ~~ THEN REPLY @4 DO ~SetGlobal("X#SHPC2","LOCALS",1) SetGlobal("X#ShMedReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC2.4
END

IF ~~ THEN BEGIN SHPC2.1
SAY @10
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC2.2
SAY @11
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC2.3
SAY @12
IF ~~ THEN REPLY @13 GOTO SHPC2.5
IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN REPLY @14 GOTO SHPC2.6
IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN REPLY @15 GOTO SHPC2.6
IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN REPLY @16 GOTO SHPC2.6
IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN REPLY @17 GOTO SHPC2.6
IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN REPLY @18 GOTO SHPC2.6
IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN REPLY @19 GOTO SHPC2.6
IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN REPLY @20 GOTO SHPC2.6
IF ~~ THEN REPLY @21 GOTO SHPC2.7
END

IF ~~ THEN BEGIN SHPC2.4
SAY @22
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC2.5
SAY @23
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC2.6
SAY @24
IF ~~ THEN REPLY @25 GOTO SHPC2.8
IF ~~ THEN REPLY @26 GOTO SHPC2.9
IF ~~ THEN REPLY @27 GOTO SHPC2.10
END

IF ~~ THEN BEGIN SHPC2.7
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC2.8
SAY @29
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC2.9
SAY @30
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC2.10
SAY @31
IF ~~ THEN EXIT
END

///* female pc high rep male in the party */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ShHighReputation","GLOBAL",1)~ THEN BEGIN SHPC3
SAY @32
IF ~~ THEN REPLY @33 DO ~SetGlobal("X#ShHighReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC3.1
IF ~~ THEN REPLY @34 DO ~SetGlobal("X#ShHighReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC3.2
IF ~~ THEN REPLY @35 DO ~SetGlobal("X#ShHighReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC3.3
IF ~~ THEN REPLY @36 DO ~SetGlobal("X#ShHighReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC3.4
IF ~~ THEN REPLY @37 DO ~SetGlobal("X#ShHighReputation","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC3.5
END

IF ~~ THEN BEGIN SHPC3.1
SAY @38
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC3.2
SAY @39
IF ~~ THEN DO ~LeaveParty() ActionOverride("sharteel",Attack(Player1))~
EXIT
END

IF ~~ THEN BEGIN SHPC3.3
SAY @40
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC3.5
SAY @41
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC3.4
SAY @12
IF ~~ THEN REPLY @13 GOTO SHPC3.6
IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN REPLY @14 GOTO SHPC3.7
IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN REPLY @15 GOTO SHPC3.7
IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN REPLY @16 GOTO SHPC3.7
IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN REPLY @17 GOTO SHPC3.7
IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN REPLY @18 GOTO SHPC3.7
IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN REPLY @19 GOTO SHPC3.7
IF ~InParty("tiax") InMyArea("tiax") !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN REPLY @20 GOTO SHPC3.7
IF ~~ THEN REPLY @21 GOTO SHPC3.8
END

IF ~~ THEN BEGIN SHPC3.6
SAY @42
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC3.7
SAY @43
IF ~~ THEN REPLY @25 GOTO SHPC3.9
IF ~~ THEN REPLY @26 GOTO SHPC3.10
IF ~~ THEN REPLY @44 GOTO SHPC3.9
END

IF ~~ THEN BEGIN SHPC3.8
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC3.9
SAY @45
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN SHPC3.10
SAY @46
IF ~~ THEN REPLY @47 GOTO SHPC3.11
IF ~~ THEN REPLY @48 GOTO SHPC3.12
IF ~~ THEN REPLY @49 GOTO SHPC3.9
END

IF ~~ THEN BEGIN SHPC3.11
SAY @50
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SHPC3.12
SAY @51
IF ~~ THEN DO ~LeaveParty() ActionOverride("sharteel",Attack(Player1))~
EXIT
END

///* male PClow rep *//* Interest Talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ShMale","GLOBAL",1)~ THEN BEGIN SHPC4
SAY @52
IF ~CheckStatGT(Player1,13,CHR)~ THEN REPLY @53 DO ~SetGlobal("X#ShMale","GLOBAL",2) SetGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",3600)~ GOTO SHPC4.1HIGHCHAR
IF ~!CheckStatGT(Player1,13,CHR)~ THEN REPLY @53 DO ~SetGlobal("X#ShMale","GLOBAL",2) SetGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",3600)~ GOTO SHPC4.1LOWCHAR
IF ~CheckStatGT(Player1,13,CHR)~ THEN REPLY @54 DO ~SetGlobal("X#ShMale","GLOBAL",2) SetGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",3600)~ GOTO SHPC4.1HIGHCHAR
IF ~!CheckStatGT(Player1,13,CHR)~ THEN REPLY @54 DO ~SetGlobal("X#ShMale","GLOBAL",2) SetGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",3600)~ GOTO SHPC4.1LOWCHAR
IF ~~ THEN REPLY @55 DO ~SetGlobal("X#ShMale","GLOBAL",2) SetGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",3600)~ GOTO SHPC4.2
IF ~~ THEN REPLY @56 DO ~SetGlobal("X#ShMale","GLOBAL",2) SetGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",3600)~ GOTO SHPC4.3
END

IF ~~ THEN BEGIN SHPC4.1LOWCHAR
SAY @57
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",1) RestParty()~
EXIT
END

IF ~~ THEN BEGIN SHPC4.1HIGHCHAR
SAY @58
IF ~~ THEN REPLY @59 GOTO SHPC4.4
IF ~~ THEN REPLY @60 GOTO SHPC4.5
IF ~~ THEN REPLY @61 GOTO SHPC4.6
IF ~~ THEN REPLY @62 GOTO SHPC4.6
END

IF ~~ THEN BEGIN SHPC4.2
SAY @63
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3) RestParty()~
EXIT
END

IF ~~ THEN BEGIN SHPC4.3
SAY @64
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3) RestParty()~
EXIT
END

IF ~~ THEN BEGIN SHPC4.4
SAY @65
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",1) SetGlobal("X#ShartSex","GLOBAL",1) RestParty()~
EXIT
END

IF ~~ THEN BEGIN SHPC4.5
SAY @66
IF ~~ THEN REPLY @67 GOTO SHPC4.4
IF ~~ THEN REPLY @68 GOTO SHPC4.7
IF ~~ THEN REPLY @61 GOTO SHPC4.6
IF ~~ THEN REPLY @62 GOTO SHPC4.6
END

IF ~~ THEN BEGIN SHPC4.6
SAY @69
IF ~~ THEN DO ~RestParty() SetGlobal("X#SharInterest","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN SHPC4.7
SAY @70
IF ~~ THEN REPLY @71 GOTO SHPC4.8
IF ~~ THEN REPLY @72 GOTO SHPC4.9
IF ~~ THEN REPLY @73 GOTO SHPC4.10
END

IF ~~ THEN BEGIN SHPC4.8
SAY @74
IF ~~ THEN DO ~RestParty() SetGlobal("X#SharInterest","GLOBAL",1)~
EXIT
END

IF ~~ THEN BEGIN SHPC4.9
SAY @75
IF ~~ THEN DO ~RestParty() SetGlobal("X#SharInterest","GLOBAL",3)~
EXIT
END

IF ~~ THEN BEGIN SHPC4.10
SAY @76
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~
EXIT
END

/////* morning after */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharMorning1","GLOBAL",1)~ THEN BEGIN SHPC5
SAY @77
IF ~~ THEN REPLY @78 DO ~SetGlobal("X#SharMorning1","GLOBAL",2)~ GOTO SHPC5.1
IF ~~ THEN REPLY @79 DO ~SetGlobal("X#SharMorning1","GLOBAL",2)~GOTO SHPC5.1
IF ~~ THEN REPLY @80 DO ~SetGlobal("X#SharMorning1","GLOBAL",2)~ GOTO SHPC5.2
END

IF ~~ THEN BEGIN SHPC5.1
SAY @81
IF ~~ THEN REPLY @82 GOTO SHPC5.3
IF ~~ THEN REPLY @83 GOTO SHPC5.4
IF ~~ THEN REPLY @84 GOTO SHPC5.4
IF ~~ THEN REPLY @85 GOTO SHPC5.5
END

IF ~~ THEN BEGIN SHPC5.2
SAY @86
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SHPC5.3
SAY @87
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SHPC5.4
SAY @88
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN SHPC5.5
SAY @89
IF ~~ THEN REPLY @90 GOTO SHPC5.6
IF ~~ THEN REPLY @91 GOTO SHPC5.3
END

IF ~~ THEN BEGIN SHPC5.6
SAY @92
IF ~~ THEN REPLY @93 GOTO SHPC5.7
IF ~~ THEN REPLY @94 GOTO SHPC5.3
END

IF ~~ THEN BEGIN SHPC5.7
SAY @76
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

///* Male with high rep */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ShHighMale","GLOBAL",1)~ THEN BEGIN SHPC6
SAY @95
IF ~~ THEN REPLY @96 DO ~SetGlobal("X#ShHighMale","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC6.1
IF ~~ THEN REPLY @97 DO ~SetGlobal("X#ShHighMale","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC6.2
IF ~ReputationGT(Player1,13)~ THEN REPLY @98 DO ~SetGlobal("X#ShHighMale","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC6.3HIGHREP
IF ~!ReputationGT(Player1,13)~ THEN REPLY @98 DO ~SetGlobal("X#ShHighMale","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC6.3LOWREP
IF ~~ THEN REPLY @99 DO ~SetGlobal("X#ShHighMale","GLOBAL",2) RealSetGlobalTimer("X#SharPCTalks","GLOBAL",1800)~ GOTO SHPC6.4
END

IF ~~ THEN BEGIN SHPC6.1
SAY @100
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SHPC6.2
SAY @101
IF ~~ THEN REPLY @102 GOTO SHPC6.1
IF ~ReputationGT(Player1,13)~ THEN REPLY @98 GOTO SHPC6.3HIGHREP
IF ~ReputationLT(Player1,13)~ THEN REPLY @98 GOTO SHPC6.3LOWREP
IF ~~ THEN REPLY @103 GOTO SHPC6.4
END

IF ~~ THEN BEGIN SHPC6.3LOWREP
SAY @104
IF ~~ THEN DO ~SetGlobal("X#SharPissed","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SHPC6.3HIGHREP
SAY @105
IF ~~ THEN DO ~SetGlobal("X#SharPissed","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN SHPC6.4
SAY @106
IF ~~ THEN DO ~LeaveParty()
ActionOverride("sharteel",Attack(Player1))~
EXIT
END

/* quitting piece */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharPissed","GLOBAL",2)~ THEN BEGIN SHPC7
SAY @107
IF ~~ THEN DO ~SetGlobal("X#SharPissed","GLOBAL",3) SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) LeaveParty() EscapeArea()~ EXIT
END

END

/* Scripted NPC banter */
/* AT WAKING */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#SHKI1","LOCALS",1)~ THEN ~%SHARTEEL_JOINED%~ SHKI1
@108
DO ~SetGlobal("X#SHKI1","LOCALS",2)~
== ~%KIVAN_BANTER%~ @109
== ~%SHARTEEL_BANTER%~ @110
== ~%KIVAN_BANTER%~ @111
== ~%SHARTEEL_BANTER%~ @112
== ~%KIVAN_BANTER%~ @113
== ~%SHARTEEL_BANTER%~ @114
== ~%KIVAN_BANTER%~ @115
== ~%SHARTEEL_BANTER%~ @116
== ~%KIVAN_BANTER%~ @117
EXIT

/* Fight with Eldoth */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#SHSK1","GLOBAL",2)~ THEN ~%SHARTEEL_JOINED%~ SHSK1
@118
DO ~SetGlobal("X#SHSK1","GLOBAL",3)~
== ~%SKIE_BANTER%~ @119
== ~%ELDOTH_BANTER%~ @120
== ~%SHARTEEL_BANTER%~ @121
== ~%ELDOTH_BANTER%~ @122
== ~%SHARTEEL_BANTER%~ @123
== ~%ELDOTH_BANTER%~ @124
== ~%SHARTEEL_BANTER%~ @125
== ~%ELDOTH_BANTER%~ @126
END ~%SHARTEEL_BANTER%~ SHSK1.PC

/* Dream Script */
/* Xzar's disciple */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#SHXZ2","LOCALS",1)~ THEN ~%SHARTEEL_JOINED%~ SHXZ2
@127
DO ~SetGlobal("X#SHXZ2","LOCALS",2)~
== ~%XZAR_BANTER%~ @128
== ~%SHARTEEL_BANTER%~ @129
== ~%XZAR_BANTER%~ @130
== ~%SHARTEEL_BANTER%~ @131
== ~%XZAR_BANTER%~ @132
== ~%SHARTEEL_BANTER%~ @133
DO ~RestParty()~
EXIT

/* Unscripted banter */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("alora") Global("X#SHAL1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("alora") !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHAL1
@134
DO ~SetGlobal("X#SHAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @135
== ~%SHARTEEL_BANTER%~ @136
== ~%ALORA_BANTER%~ @137
== ~%SHARTEEL_BANTER%~ @138
== ~%ALORA_BANTER%~ @139
== ~%SHARTEEL_BANTER%~ @140
= @141
== ~%ALORA_BANTER%~ @142
== ~%SHARTEEL_BANTER%~ @143
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#SHBR1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHBR1
@144
DO ~SetGlobal("X#SHBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @145
== ~%SHARTEEL_BANTER%~ @146
== ~%BRANWEN_BANTER%~ @147
== ~%SHARTEEL_BANTER%~ @148
== ~%BRANWEN_BANTER%~ @149
== ~%SHARTEEL_BANTER%~ @150
= @151
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") Global("X#SHCO1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHCO1
@152
DO ~SetGlobal("X#SHCO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @153
== ~%SHARTEEL_BANTER%~ @154
== ~%CORAN_BANTER%~ IF ~OR(3) !InParty("garrick") !InMyArea("garrick") StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @155
== ~%CORAN_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @156
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @157
== ~%CORAN_BANTER%~ @158
== ~%SHARTEEL_BANTER%~ @159
== ~%CORAN_BANTER%~ @160
== ~%SHARTEEL_BANTER%~ @161
== ~%CORAN_BANTER%~ @162
= @163
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",1) InParty("coran") Global("X#SHCO2","LOCALS",0) !See([ENEMY]) InParty(Myself) See("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHCO2
@164
DO ~SetGlobal("X#SHCO2","LOCALS",1)~
== ~%CORAN_BANTER%~ @165
== ~%SHARTEEL_BANTER%~ @166
== ~%CORAN_BANTER%~ @167
== ~%SHARTEEL_BANTER%~ @168
== ~%CORAN_BANTER%~ @169
== ~%SHARTEEL_BANTER%~ @170
== ~%CORAN_BANTER%~ @171
== ~%SHARTEEL_BANTER%~ @172
== ~%CORAN_BANTER%~ @173
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") InParty("minsc") Global("X#SHDY1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("dynaheir") See("minsc") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHDY1
@174
DO ~SetGlobal("X#SHDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @175
== ~%SHARTEEL_BANTER%~ @176
== ~%DYNAHEIR_BANTER%~ @177
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") InParty("minsc") Global("X#SHDY2","LOCALS",0) !See([ENEMY]) InParty(Myself) See("dynaheir") See("minsc") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHDY2
@178
DO ~SetGlobal("X#SHDY2","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @179
== ~%SHARTEEL_BANTER%~ @180
== ~%DYNAHEIR_BANTER%~ @181
== ~%SHARTEEL_BANTER%~ @182
== ~%DYNAHEIR_BANTER%~ @183
== ~%SHARTEEL_BANTER%~ @184
== ~%DYNAHEIR_BANTER%~ @185
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") Global("X#SHED1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHED1
@186
DO ~SetGlobal("X#SHED1","LOCALS",1) SetGlobal("X#SHED2","LOCALS",1)~
== ~%EDWIN_BANTER%~ @187
== ~%SHARTEEL_BANTER%~ @188
== ~%EDWIN_BANTER%~ @189
= @190
== ~%SHARTEEL_BANTER%~ @191
== ~%EDWIN_BANTER%~ @192
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#FaldornHasRay","GLOBAL",1) InParty("faldorn") Global("X#SHFA1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) AreaType(FOREST)~ THEN ~%SHARTEEL_BANTER%~ SHFA1
@193
DO ~SetGlobal("X#SHFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @194
== ~%SHARTEEL_BANTER%~ @195
== ~%FALDORN_BANTER%~ @196
== ~%SHARTEEL_BANTER%~ @197
= @198
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#SHGA1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHGA1
@199
DO ~SetGlobal("X#SHGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @200
== ~%SHARTEEL_BANTER%~ @201
== ~%GARRICK_BANTER%~ @202
== ~%SHARTEEL_BANTER%~ @203
== ~%GARRICK_BANTER%~ @204
== ~%SHARTEEL_BANTER%~ @205
== ~%GARRICK_BANTER%~ @206
== ~%SHARTEEL_BANTER%~ @207
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("X#SHIM1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHIM1
@208
DO ~SetGlobal("X#SHIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @209
== ~%SHARTEEL_BANTER%~ @210
== ~%IMOEN_BANTER%~ @211
== ~%SHARTEEL_BANTER%~ @212
== ~%IMOEN_BANTER%~ @213
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") InParty("khalid") Global("X#SHJA1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("jaheira") See("khalid") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHJA1
@214
DO ~SetGlobal("X#SHJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @215
== ~%SHARTEEL_BANTER%~ @216
== ~%JAHEIRA_BANTER%~ @217
== ~%SHARTEEL_BANTER%~ @218
== ~%JAHEIRA_BANTER%~ @219
== ~%SHARTEEL_BANTER%~ @220
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#SHKA1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHKA1
@221
DO ~SetGlobal("X#SHKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @222
== ~%SHARTEEL_BANTER%~ @223
== ~%KAGAIN_BANTER%~ @224
= @225
== ~%SHARTEEL_BANTER%~ @226
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) TimeOfDay(NIGHT) InParty("kagain") Global("X#SHKA2","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHKA2
@227
DO ~SetGlobal("X#SHKA2","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @228
== ~%SHARTEEL_BANTER%~ @229
== ~%KAGAIN_BANTER%~ @230
== ~%SHARTEEL_BANTER%~ @231
== ~%KAGAIN_BANTER%~ @232
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#SHKH1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHKH1
@233
DO ~SetGlobal("X#SHKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @234
== ~%SHARTEEL_BANTER%~ @235
== ~%KHALID_BANTER%~ @236
== ~%SHARTEEL_BANTER%~ @237
== ~%KHALID_BANTER%~ @238
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") Global("X#SHMO1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHMO1
@239
DO ~SetGlobal("X#SHMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @240
== ~%SHARTEEL_BANTER%~ @241
== ~%MONTARON_BANTER%~ @242
== ~%SHARTEEL_BANTER%~ @243
== ~%MONTARON_BANTER%~ @244
== ~%SHARTEEL_BANTER%~ @245
== ~%MONTARON_BANTER%~ @246
EXIT

APPEND ~%SHARTEEL_BANTER%~

IF ~~ THEN BEGIN SHSK1.PC
SAY @247
IF ~~ THEN REPLY @248 GOTO SHSK1.1
IF ~~ THEN REPLY @249 GOTO SHSK1.2
IF ~~ THEN REPLY @250 GOTO SHSK1.3
IF ~~ THEN REPLY @251 GOTO SHSK1.4
END

IF ~~ THEN BEGIN SHSK1.1
SAY @252
IF ~~ THEN GOTO SHSK1.1EL
END

IF ~~ THEN BEGIN SHSK1.1ELPC
SAY @253
IF ~~ THEN DO ~ActionOverride("eldoth",Attack("sharteel")) Attack("eldoth")~
EXIT
END

IF ~~ THEN BEGIN SHSK1.2
SAY @254
IF ~~ THEN REPLY @255 GOTO SHSK1.1
IF ~~ THEN REPLY @256 GOTO SHSK1.3
END

IF ~~ THEN BEGIN SHSK1.3
SAY @257
IF ~~ THEN DO ~LeaveParty() ActionOverride("sharteel",Enemy())~ EXIT
END

IF ~~ THEN BEGIN SHSK1.4
SAY @258
IF ~~ THEN GOTO SHSK1.4EL
END

IF ~~ THEN BEGIN SHSK1.4PC
SAY @247
IF ~~ THEN REPLY @259 GOTO SHSK1.5
IF ~~ THEN REPLY @260 GOTO SHSK1.1
IF ~~ THEN REPLY @261 GOTO SHSK1.6
END

IF ~~ THEN BEGIN SHSK1.5
SAY @262
IF ~~ THEN DO ~SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) LeaveParty() ActionOverride("sharteel",Enemy())~ EXIT
END

IF ~~ THEN BEGIN SHSK1.6
SAY @263
IF ~~ THEN GOTO SHSK1.6EL
END

IF ~~ THEN BEGIN SHSK1.6PC
SAY @264
IF ~~ THEN REPLY @265 EXTERN ~%SKIE_BANTER%~ SkieStay
IF ~~ THEN REPLY @266 EXTERN ~%SKIE_BANTER%~ SkieLeaves
IF ~~ THEN REPLY @267 EXTERN ~%SKIE_BANTER%~ SkieFights
END

IF ~%BGT_VAR% Global("X#SHSK1","GLOBAL",3) Dead("eldoth")~ THEN BEGIN SHSK2
SAY @268
IF ~~ THEN EXTERN ~%SKIE_BANTER%~ SHSK2reaction
END

END

CHAIN3 ~%SHARTEEL_BANTER%~ SHSK1.1EL
@269
== ~%ELDOTH_BANTER%~ @270
END ~%SHARTEEL_BANTER%~ SHSK1.1ELPC

CHAIN3 ~%SHARTEEL_BANTER%~ SHSK1.4EL
@271
== ~%ELDOTH_BANTER%~ @272
END ~%SHARTEEL_BANTER%~ SHSK1.4PC

CHAIN3 ~%SHARTEEL_BANTER%~ SHSK1.6EL
@273
== ~%ELDOTH_BANTER%~ @274
== ~%SKIE_BANTER%~ @275
== ~%ELDOTH_BANTER%~ @276
== ~%SKIE_BANTER%~ @277
== ~%ELDOTH_BANTER%~ @278
== ~%ELDOTH_BANTER%~ @279
== ~%SKIE_BANTER%~ @280
== ~%SHARTEEL_BANTER%~ @281
== ~%ELDOTH_BANTER%~ @282
END ~%SHARTEEL_BANTER%~ SHSK1.6PC

CHAIN3 ~%SKIE_BANTER%~ SHSK2reaction
@283
== ~%SHARTEEL_BANTER%~ @284
EXIT

CHAIN3 ~%SKIE_BANTER%~ SkieStay
@285
== ~%ELDOTH_BANTER%~ @286
DO ~SetGlobal("X#SHSK1","GLOBAL",4) SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) LeaveParty() Enemy()~
EXIT

CHAIN3 ~%SKIE_BANTER%~ SkieFights
@287
== ~%ELDOTH_BANTER%~ @288
DO ~ActionOverride("skie",LeaveParty()) ActionOverride("eldoth",LeaveParty()) ActionOverride("eldoth",Enemy()) ActionOverride("skie",Enemy())~
EXIT

CHAIN3 ~%SKIE_BANTER%~ SkieLeaves
@289
== ~%ELDOTH_BANTER%~ @290
DO ~SetGlobal("X#SHSK1","GLOBAL",4) LeaveParty() Enemy() ActionOverride("skie",LeaveParty()) ActionOverride("skie",EscapeArea())~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("X#SHSA1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHSA1
@291
DO ~SetGlobal("X#SHSA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @292
== ~%SHARTEEL_BANTER%~ @293
== ~%SAFANA_BANTER%~ @294
== ~%SHARTEEL_BANTER%~ @295
== ~%SAFANA_BANTER%~ @296
= @297
= @298
== ~%SHARTEEL_BANTER%~ @299
== ~%SAFANA_BANTER%~ @300
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) InParty("tiax") Global("X#SHTI1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("tiax") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("tiax",CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHTI1
@301
DO ~SetGlobal("X#SHTI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @302
== ~%SHARTEEL_BANTER%~ @303
= @304
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") Global("X#SHXA1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID) AreaType(DUNGEON)~ THEN ~%SHARTEEL_BANTER%~ SHXA1
@305
DO ~SetGlobal("X#SHXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @306
== ~%SHARTEEL_BANTER%~ @307
== ~%XAN_BANTER%~ @308
== ~%SHARTEEL_BANTER%~ @309
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xzar") Global("X#SHXZ1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("xzar") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHXZ1
@310
DO ~SetGlobal("X#SHXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @311
== ~%SHARTEEL_BANTER%~ @312
== ~%XZAR_BANTER%~ @313
== ~%SHARTEEL_BANTER%~ @314
== ~%XZAR_BANTER%~ @315
== ~%SHARTEEL_BANTER%~ @316
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("yeslick") Global("X#SHYE1","LOCALS",0) !See([ENEMY]) InParty(Myself) See("yeslick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHYE1
@317
DO ~SetGlobal("X#SHYE1","LOCALS",1)~
== ~%YESLICK_BANTER%~ @318
== ~%SHARTEEL_BANTER%~ @319
== ~%YESLICK_BANTER%~ @320
== ~%SHARTEEL_BANTER%~ @321
== ~%YESLICK_BANTER%~ @322
== ~%SHARTEEL_BANTER%~ @323
EXIT
