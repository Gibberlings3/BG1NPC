/* CONTENTS */
/* Eldoth mourns the loss of Skie and her father's wealth */
/* Skie learns of her father's death */
/* Attempted seduction of Viconia */
/* NPC/NPC banters */
/* in Baldur befor Skie */

APPEND ~%ELDOTH_JOINED%~

/* Eldoth mourns the loss of Skie and her father's wealth */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ELPC1","LOCALS",1)~ THEN BEGIN ELPC1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#ELPC1","LOCALS",2) RealSetGlobalTimer("X#ElFriendTalkTime","GLOBAL",18000)~ GOTO ELPC1.1
END

IF ~~ THEN BEGIN ELPC1.1
SAY @2
IF ~~ THEN REPLY @3 GOTO ELPC1.2
END

IF ~~ THEN BEGIN ELPC1.2
SAY @4
IF ~~ THEN REPLY @5 GOTO ELPC1.3
END

IF ~~ THEN BEGIN ELPC1.3
SAY @6
IF ~~ THEN REPLY @7 GOTO ELPC1.4
IF ~~ THEN REPLY @8 GOTO ELPC1.6
IF ~~ THEN REPLY @9 DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~
EXIT
END

IF ~~ THEN BEGIN ELPC1.4
SAY @10
IF ~~ THEN REPLY @11 GOTO ELPC1.5
END

IF ~~ THEN BEGIN ELPC1.5
SAY @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN ELPC1.6
SAY @13
IF ~~ THEN REPLY @14 GOTO ELPC1.7
END

IF ~~ THEN BEGIN ELPC1.7
SAY @15
IF ~~ THEN EXIT
END

/* Skie learns of her father's death */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#ELPC2","LOCALS",1)~ THEN BEGIN ELPC2
SAY @16
IF ~~ THEN DO ~SetGlobal("X#ELPC2","LOCALS",2) RealSetGlobalTimer("X#ElFriendTalkTime","GLOBAL",18000)~ EXTERN ~%SKIE_BANTER%~ SkieAlive
END
END

CHAIN3 ~%SKIE_BANTER%~ SkieAlive
@17
== ~%ELDOTH_JOINED%~ @18
END ~%ELDOTH_BANTER%~ ELPC1PC

APPEND ~%ELDOTH_BANTER%~

IF ~~ THEN BEGIN ELPC1PC
SAY @19
IF ~~ THEN REPLY @20 EXTERN ~%SKIE_BANTER%~ SK_ELPC1
IF ~~ THEN REPLY @21 EXTERN ~%SKIE_BANTER%~ SK_ELPC2
IF ~~ THEN REPLY @22 EXTERN ~%SKIE_BANTER%~ SK_ELPC3
END

IF ~~ THEN BEGIN DELPC1
SAY @23
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN DELPC2
SAY @24
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN DELPC3
SAY @25
IF ~~ THEN REPLY @26 DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
IF ~~ THEN REPLY @27 GOTO DELPC6
IF ~~ THEN REPLY @28 GOTO DELPC7
END

IF ~~ THEN BEGIN DELPC4
SAY @29
IF ~~ THEN EXTERN ~%SKIE_BANTER%~ SK_ELPC9
END

IF ~~ THEN BEGIN DELPC5
SAY @30
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN DELPC6
SAY @31
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN DELPC7
SAY @32
IF ~~ THEN REPLY @33 GOTO DELPC8
END

IF ~~ THEN BEGIN DELPC8
SAY @34
IF ~~ THEN REPLY @35 GOTO DELPC9
END

IF ~~ THEN BEGIN DELPC9
SAY @36
IF ~~ THEN REPLY @37 GOTO DELPC10
END

IF ~~ THEN BEGIN DELPC10
SAY @38
IF ~~ THEN REPLY @39 GOTO DELPC11
END

IF ~~ THEN BEGIN DELPC11
SAY @40
IF ~~ THEN EXIT
END
END

/* AT REST */
/* Attempted seduction of Viconia */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#EldViconia1","LOCALS",1)~ THEN ~%ELDOTH_JOINED%~ ELVI1
@41
DO ~SetGlobal("X#EldViconia1","LOCALS",2)~
== ~%VICONIA_BANTER%~ @42
== ~%ELDOTH_BANTER%~ @43
== ~%VICONIA_BANTER%~ @44
== ~%ELDOTH_BANTER%~ @45
== ~%VICONIA_BANTER%~ @46
== ~%ELDOTH_BANTER%~ @47
== ~%VICONIA_BANTER%~ @48
== ~%ELDOTH_BANTER%~ @49
== ~%VICONIA_BANTER%~ @50
== ~%ELDOTH_BANTER%~ @51
DO ~RestParty()~
EXIT

/* AT REST */
/* Skie: are you after my money */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#EldSkie1","LOCALS",1)~ THEN ~%ELDOTH_JOINED%~ ELSK1
@52
DO ~SetGlobal("X#EldSkie1","LOCALS",2)~
== ~%SKIE_BANTER%~ @53
== ~%ELDOTH_BANTER%~ @54
== ~%SKIE_BANTER%~ @55
== ~%ELDOTH_BANTER%~ @56
== ~%SKIE_BANTER%~ @57
== ~%ELDOTH_BANTER%~ @58
== ~%SKIE_BANTER%~ @59
== ~%ELDOTH_BANTER%~ @60
DO ~RestParty()~
EXIT

APPEND ~%SKIE_BANTER%~

IF ~~ THEN BEGIN SK_ELPC1
SAY @61
IF ~~ THEN DO ~SetGlobal("X#SkieLeftEldoth","GLOBAL",1) LeaveParty() EscapeArea()~
EXTERN ~%ELDOTH_BANTER%~ DELPC1
END

IF ~~ THEN BEGIN SK_ELPC2
SAY @62
IF ~~ THEN REPLY @63 GOTO SK_ELPC5
IF ~~ THEN REPLY @64 GOTO SK_ELPC4
IF ~~ THEN REPLY @65 GOTO SK_ELPC6
END

IF ~~ THEN BEGIN SK_ELPC3
SAY @66
IF ~~ THEN DO ~SetGlobal("X#SkieLeftEldoth","GLOBAL",1) SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) LeaveParty() EscapeArea()~
EXTERN ~%ELDOTH_BANTER%~ DELPC3
END

IF ~~ THEN BEGIN SK_ELPC4
SAY @67
IF ~~ THEN DO ~SetGlobal("X#SkieLeftEldoth","GLOBAL",1) SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) LeaveParty() EscapeArea()~
EXTERN ~%ELDOTH_BANTER%~ DELPC1
END

IF ~~ THEN BEGIN SK_ELPC5
SAY @68
IF ~~ THEN DO ~SetGlobal("X#SkieLeftEldoth","GLOBAL",1) SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) LeaveParty() EscapeArea()~
EXTERN ~%ELDOTH_BANTER%~ DELPC1
END

IF ~~ THEN BEGIN SK_ELPC6
SAY @69
IF ~~ THEN REPLY @70 GOTO SK_ELPC7
IF ~~ THEN REPLY @71 GOTO SK_ELPC8
END

IF ~~ THEN BEGIN SK_ELPC7
SAY @72
IF ~~ THEN DO ~SetGlobal("X#SkieLeftEldoth","GLOBAL",1) SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) LeaveParty() EscapeArea()~
EXTERN ~%ELDOTH_BANTER%~ DELPC2
END

IF ~~ THEN BEGIN SK_ELPC8
SAY @73
IF ~~ THEN EXTERN ~%ELDOTH_BANTER%~ DELPC4
END

IF ~~ THEN BEGIN SK_ELPC9
SAY @74
IF ~~ THEN EXTERN ~%ELDOTH_BANTER%~ DELPC5
END
END

/* NPC/NPC banters */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) GlobalLT("SilvershieldEstate","GLOBAL",2) InParty("ajantis") Global("X#ELAJ1","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELAJ1
@75
DO ~SetGlobal("X#ELAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @76
== ~%ELDOTH_BANTER%~ @77
== ~%AJANTIS_BANTER%~ @78
== ~%ELDOTH_BANTER%~ @79
== ~%AJANTIS_BANTER%~ @80
== ~%ELDOTH_BANTER%~ @81
== ~%AJANTIS_BANTER%~ @82
= @83
== ~%ELDOTH_BANTER%~ @84
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("alora") Global("X#ELAL1","LOCALS",0) !See([ENEMY]) InParty("alora") See("alora") !StateCheck("alora",CD_STATE_NOTVALID) InParty("skie") See("skie") !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELAL1
@85
DO ~SetGlobal("X#ELAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @86
== ~%ELDOTH_BANTER%~ @87
== ~%ALORA_BANTER%~ @88
== ~%ELDOTH_BANTER%~ @89
== ~%ALORA_BANTER%~ @90
== ~%ELDOTH_BANTER%~ @91
== ~%ALORA_BANTER%~ @92
== ~%ELDOTH_BANTER%~ @93
== ~%ALORA_BANTER%~ @94
== ~%ELDOTH_BANTER%~ @95
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("X#ELBR1","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELBR1
@96
DO ~SetGlobal("X#ELBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @97
== ~%ELDOTH_BANTER%~ @98
== ~%BRANWEN_BANTER%~ @99
== ~%ELDOTH_BANTER%~ @100
== ~%BRANWEN_BANTER%~ @101
== ~%ELDOTH_BANTER%~ @102
== ~%BRANWEN_BANTER%~ @103
== ~%ELDOTH_BANTER%~ @104
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("P#CoranHasBaby","GLOBAL",1) InParty("coran") InParty("skie") Global("X#ELCO1","LOCALS",0) !See([ENEMY]) See("coran") !StateCheck("coran",CD_STATE_NOTVALID) See("skie") !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELCO1
@105
DO ~SetGlobal("X#ELCO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @106
== ~%ELDOTH_BANTER%~ @107
== ~%CORAN_BANTER%~ @108
== ~%ELDOTH_BANTER%~ @109
== ~%CORAN_BANTER%~ @110
== ~%ELDOTH_BANTER%~ @111
== ~%CORAN_BANTER%~ @112
== ~%ELDOTH_BANTER%~ @113
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#ELDY1","GLOBAL",0) !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELDY1
@114
DO ~SetGlobal("X#ELDY1","GLOBAL",1)~
== ~%DYNAHEIR_BANTER%~ @115
== ~%ELDOTH_BANTER%~ @116
== ~%DYNAHEIR_BANTER%~ @117
== ~%ELDOTH_BANTER%~ @118
== ~%DYNAHEIR_BANTER%~ @119
== ~%ELDOTH_BANTER%~ @120
== ~%DYNAHEIR_BANTER%~ @121
== ~%ELDOTH_BANTER%~ @122
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("X#ELDY2","GLOBAL",0) !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) Global("X#ELMI2","GLOBAL",1)~ THEN ~%ELDOTH_BANTER%~ ELDY2
@123
DO ~SetGlobal("X#ELDY2","GLOBAL",1)~
== ~%DYNAHEIR_BANTER%~ @124
== ~%ELDOTH_BANTER%~ @125
== ~%DYNAHEIR_BANTER%~ @126
== ~%ELDOTH_BANTER%~ @127
== ~%DYNAHEIR_BANTER%~ @128
== ~%ELDOTH_BANTER%~ @129
== ~%DYNAHEIR_BANTER%~ @130
== ~%ELDOTH_BANTER%~ @131
== ~%DYNAHEIR_BANTER%~ @132
== ~%ELDOTH_BANTER%~ @133
== ~%DYNAHEIR_BANTER%~ @134
== ~%ELDOTH_BANTER%~ @135
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") !InParty("skie") GlobalLT("SilvershieldEstate","GLOBAL",2) Global("X#ELED1","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELED1
@136
DO ~SetGlobal("X#ELED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @137
== ~%ELDOTH_BANTER%~ @138
== ~%EDWIN_BANTER%~ @139
== ~%ELDOTH_BANTER%~ @140
== ~%EDWIN_BANTER%~ @141
== ~%ELDOTH_BANTER%~ @142
== ~%EDWIN_BANTER%~ @143
== ~%ELDOTH_BANTER%~ @144
== ~%EDWIN_BANTER%~ @145
== ~%ELDOTH_BANTER%~ @146
== ~%EDWIN_BANTER%~ @147
== ~%ELDOTH_BANTER%~ @148
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("faldorn") Global("X#ELFA1","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELFA1
@149
DO ~SetGlobal("X#ELFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @150
== ~%ELDOTH_BANTER%~ @151
== ~%FALDORN_BANTER%~ @152
== ~%ELDOTH_BANTER%~ @153
== ~%FALDORN_BANTER%~ @154
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("X#ELGA2","GLOBAL",0) Global("X#ELGA1","GLOBAL",0) !See([ENEMY]) See("garrick") !InParty("skie") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELGA1
@155
DO ~SetGlobal("X#ELGA1","GLOBAL",1)~
== ~%GARRICK_BANTER%~ @156
== ~%ELDOTH_BANTER%~ @157
== ~%GARRICK_BANTER%~ @158
== ~%ELDOTH_BANTER%~ @159
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") InParty("skie") Global("X#ELGA1","GLOBAL",0) Global("X#ELGA2","GLOBAL",0)See([ENEMY]) See("garrick") See("skie") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELGA2
@155
DO ~SetGlobal("X#ELGA1","GLOBAL",1)~
== ~%GARRICK_BANTER%~ @156
== ~%ELDOTH_BANTER%~ @157
== ~%GARRICK_BANTER%~ @158
== ~%ELDOTH_BANTER%~ @159
== ~%SKIE_BANTER%~ @160
== ~%GARRICK_BANTER%~ @161
== ~%ELDOTH_BANTER%~ @162
== ~%SKIE_BANTER%~ @163
== ~%ELDOTH_BANTER%~ @164
== ~%SKIE_BANTER%~ @165
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(CITY) InParty("%IMOEN_DV%") Global("X#ELIM1","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELIM1
@166
DO ~SetGlobal("X#ELIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @167
== ~%ELDOTH_BANTER%~ @168
== ~%IMOEN_BANTER%~ @169
== ~%ELDOTH_BANTER%~ @170
== ~%IMOEN_BANTER%~ @171
== ~%ELDOTH_BANTER%~ @172
== ~%IMOEN_BANTER%~ @173
== ~%ELDOTH_BANTER%~ @174
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("jaheira") Global("X#ELJA1","LOCALS",0) !See([ENEMY]) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELJA1
@175
DO ~SetGlobal("X#ELJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @176
== ~%ELDOTH_BANTER%~ @177
== ~%JAHEIRA_BANTER%~ @178
== ~%ELDOTH_BANTER%~ @179
== ~%JAHEIRA_BANTER%~ @180
== ~%ELDOTH_BANTER%~ @181
== ~%JAHEIRA_BANTER%~ @182
== ~%ELDOTH_BANTER%~ @183
== ~%JAHEIRA_BANTER%~ @184
== ~%ELDOTH_BANTER%~ @185
== ~%JAHEIRA_BANTER%~ @186
EXIT

/* Party Has been in BG for AT LEAST A DAY - NO SCRIPT SO FAR */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#ELKA1","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) OR(9) AreaCheck("%NBaldursGate%") AreaCheck("%NEBaldursGate%") AreaCheck("%EBaldursGate%") AreaCheck("%SEBaldursGate%") AreaCheck("%BaldursGateDocks%") AreaCheck("%SWBaldursGate%") AreaCheck("%WBaldursGate%") AreaCheck("%NWBaldursGate%") AreaCheck("%CentralBaldursGate%")~ THEN ~%ELDOTH_BANTER%~ ELKA1
@187
DO ~SetGlobal("X#ELKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @188
== ~%ELDOTH_BANTER%~ @189
== ~%KAGAIN_BANTER%~ @190
== ~%ELDOTH_BANTER%~ @191
== ~%KAGAIN_BANTER%~ @192
== ~%ELDOTH_BANTER%~ @193
== ~%KAGAIN_BANTER%~ @194
== ~%ELDOTH_BANTER%~ @195
== ~%KAGAIN_BANTER%~ @196
== ~%ELDOTH_BANTER%~ @197
== ~%KAGAIN_BANTER%~ @198
== ~%ELDOTH_BANTER%~ @199
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") InParty("skie") Global("X#ELKA2","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) See("skie")~ THEN ~%ELDOTH_BANTER%~ ELKA2
@200
DO ~SetGlobal("X#ELKA2","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @201
== ~%ELDOTH_BANTER%~ @202
== ~%KAGAIN_BANTER%~ @203
== ~%ELDOTH_BANTER%~ @204
== ~%KAGAIN_BANTER%~ @205
== ~%ELDOTH_BANTER%~ @206
== ~%KAGAIN_BANTER%~ @207
== ~%ELDOTH_BANTER%~ @208
== ~%KAGAIN_BANTER%~ @209
== ~%ELDOTH_BANTER%~ @210
== ~%KAGAIN_BANTER%~ @211
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") InParty("jaheira") Global("X#ELKH1","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) See("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELKH1
@212
DO ~SetGlobal("X#ELKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @213
== ~%ELDOTH_BANTER%~ @214
== ~%KHALID_BANTER%~ @215
== ~%ELDOTH_BANTER%~ @216
== ~%KHALID_BANTER%~ @217
== ~%ELDOTH_BANTER%~ @218
== ~%KHALID_BANTER%~ @219
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") !InParty("skie") Global("X#ELKI2","GLOBAL",0) Global("X#ELKI1","GLOBAL",0) !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELKI1
@220
DO ~SetGlobal("X#ELKI1","GLOBAL",1)~
== ~%KIVAN_BANTER%~ @221
== ~%ELDOTH_BANTER%~ @222
== ~%KIVAN_BANTER%~ @223
== ~%ELDOTH_BANTER%~ @224
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") InParty("skie") Global("X#ELKI1","GLOBAL",0) Global("X#ELKI2","GLOBAL",0) !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) See("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELKI2
@220
DO ~SetGlobal("X#ELKI2","GLOBAL",1)~
== ~%KIVAN_BANTER%~ @221
== ~%ELDOTH_BANTER%~ @222
== ~%KIVAN_BANTER%~ @223
== ~%ELDOTH_BANTER%~ @225
== ~%SKIE_BANTER%~ @226
== ~%ELDOTH_BANTER%~ @227
== ~%SKIE_BANTER%~ @228
== ~%KIVAN_BANTER%~ @229
== ~%ELDOTH_BANTER%~ @230
== ~%SKIE_BANTER%~ @231
== ~%KIVAN_BANTER%~ @232
== ~%SKIE_BANTER%~ @233
== ~%KIVAN_BANTER%~ @234
== ~%ELDOTH_BANTER%~ @235
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% !InParty("edwin") InParty("minsc") InParty("dynaheir") Global("X#ELDY1","GLOBAL",1) Global("X#ELMI1","GLOBAL",0) !See([ENEMY]) InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) CombatCounter(0)~ THEN ~%ELDOTH_BANTER%~ ELMI1
@236
DO ~SetGlobal("X#ELMI1","GLOBAL",1)~
== ~%MINSC_BANTER%~ @237
== ~%ELDOTH_BANTER%~ @238
== ~%MINSC_BANTER%~ @239
== ~%ELDOTH_BANTER%~ @240
== ~%MINSC_BANTER%~ @241
== ~%ELDOTH_BANTER%~ IF ~!InParty("edwin")~ THEN @242
== ~%ELDOTH_BANTER%~ IF ~!InParty("edwin")~ THEN @243
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @244
== ~%ELDOTH_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @245
== ~%ELDOTH_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @246
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") InParty("dynaheir") Global("X#ELMI1","GLOBAL",1) Global("X#ELMI2","GLOBAL",0) !See([ENEMY]) InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELMI2
@247
DO ~SetGlobal("X#ELMI2","GLOBAL",1)~
== ~%MINSC_BANTER%~ @248
== ~%ELDOTH_BANTER%~ @249
== ~%MINSC_BANTER%~ @250
== ~%ELDOTH_BANTER%~ @251
= @252
= @253
== ~%MINSC_BANTER%~ @254
== ~%ELDOTH_BANTER%~ @255
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") !InParty("skie") GlobalLT("SilvershieldEstate","GLOBAL",2) Global("X#ELMO1","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELMO1
@256
DO ~SetGlobal("X#ELMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @257
== ~%ELDOTH_BANTER%~ @258
== ~%MONTARON_BANTER%~ @259
== ~%ELDOTH_BANTER%~ @260
== ~%MONTARON_BANTER%~ @261
== ~%ELDOTH_BANTER%~ @262
== ~%MONTARON_BANTER%~ @263
== ~%ELDOTH_BANTER%~ @264
== ~%MONTARON_BANTER%~ @265
== ~%ELDOTH_BANTER%~ @266
== ~%MONTARON_BANTER%~ @267
== ~%ELDOTH_BANTER%~ @268
== ~%MONTARON_BANTER%~ @269
== ~%ELDOTH_BANTER%~ @270
== ~%MONTARON_BANTER%~ @271
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") !InParty("skie") GlobalLT("SilvershieldEstate","GLOBAL",2) Global("X#ELMO2","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELMO2
@272
DO ~SetGlobal("X#ELMO2","LOCALS",1)~
== ~%MONTARON_BANTER%~ @273
== ~%ELDOTH_BANTER%~ @274
== ~%MONTARON_BANTER%~ @275
== ~%ELDOTH_BANTER%~ @276
== ~%MONTARON_BANTER%~ @277
== ~%ELDOTH_BANTER%~ @278
== ~%MONTARON_BANTER%~ @279
== ~%ELDOTH_BANTER%~ @280
== ~%MONTARON_BANTER%~ @281
== ~%ELDOTH_BANTER%~ @282
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") Global("X#ELQU1","LOCALS",0) !See([ENEMY]) See("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELQU1
@283
DO ~SetGlobal("X#ELQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @284
== ~%ELDOTH_BANTER%~ @285
== ~%QUAYLE_BANTER%~ @286
== ~%ELDOTH_BANTER%~ @287
== ~%QUAYLE_BANTER%~ @288
== ~%ELDOTH_BANTER%~ @289
== ~%QUAYLE_BANTER%~ @290
== ~%ELDOTH_BANTER%~ @291
== ~%QUAYLE_BANTER%~ @292
== ~%ELDOTH_BANTER%~ @293
== ~%QUAYLE_BANTER%~ @294
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") InParty("coran") !InParty("skie") GlobalLT("SilvershieldEstate","GLOBAL",2) Global("X#ELSA1","LOCALS",0) See([ENEMY]) See("safana") !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) See("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELSA1
@295
DO ~SetGlobal("X#ELSA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @296
== ~%ELDOTH_BANTER%~ @297
== ~%SAFANA_BANTER%~ @298
== ~%ELDOTH_BANTER%~ @299
== ~%SAFANA_BANTER%~ @300
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#ELSH1","GLOBAL",0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELSH1
@301
DO ~SetGlobal("X#ELSH1","GLOBAL",1)~
== ~%SHARTEEL_BANTER%~ @302
== ~%ELDOTH_BANTER%~ @303
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("skie") Global("X#ELSK2","LOCALS",0) !See([ENEMY]) See("skie") !StateCheck("skie",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELSK2
@304
DO ~SetGlobal("X#ELSK2","LOCALS",1)~
== ~%SKIE_BANTER%~ @305
== ~%ELDOTH_BANTER%~ @306
== ~%SKIE_BANTER%~ @307
== ~%ELDOTH_BANTER%~ @308
== ~%SKIE_BANTER%~ @309
== ~%ELDOTH_BANTER%~ @310
== ~%SKIE_BANTER%~ @311
== ~%ELDOTH_BANTER%~ @312
== ~%SKIE_BANTER%~ @313
== ~%ELDOTH_BANTER%~ @314
== ~%SKIE_BANTER%~ @315
== ~%ELDOTH_BANTER%~ @316
== ~%SKIE_BANTER%~ @317
== ~%ELDOTH_BANTER%~ @318
== ~%SKIE_BANTER%~ @319
== ~%ELDOTH_BANTER%~ @320
EXIT


CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("X#ELTI1","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELTI1
@321
DO ~SetGlobal("X#ELTI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @322
== ~%ELDOTH_BANTER%~ @323
== ~%TIAX_BANTER%~ @324
== ~%ELDOTH_BANTER%~ @325
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xan") InParty("skie") Global("Chapter","GLOBAL",%tutu_chapter_7%) Global("X#ELXA1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) See("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELXA1
@326
DO ~SetGlobal("X#ELXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @327
== ~%ELDOTH_BANTER%~ @328
== ~%XAN_BANTER%~ @329
== ~%ELDOTH_BANTER%~ @330
== ~%XAN_BANTER%~ @331
== ~%ELDOTH_BANTER%~ @332
== ~%XAN_BANTER%~ @333
== ~%ELDOTH_BANTER%~ @334
== ~%XAN_BANTER%~ @335
== ~%ELDOTH_BANTER%~ @336
== ~%XAN_BANTER%~ @337
EXIT

/* in Baldur befor Skie */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xzar") GlobalLT("SilvershieldEstate","GLOBAL",2) Global("X#ELXZ1","LOCALS",0) !See([ENEMY]) See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) OR(9) AreaCheck("%NBaldursGate%") AreaCheck("%NEBaldursGate%") AreaCheck("%EBaldursGate%") AreaCheck("%SEBaldursGate%") AreaCheck("%BaldursGateDocks%") AreaCheck("%SWBaldursGate%") AreaCheck("%WBaldursGate%") AreaCheck("%NWBaldursGate%") AreaCheck("%CentralBaldursGate%")~ THEN ~%ELDOTH_BANTER%~ ELXZ1
@338
DO ~SetGlobal("X#ELXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @339
== ~%ELDOTH_BANTER%~ @340
== ~%XZAR_BANTER%~ @341
== ~%ELDOTH_BANTER%~ @342
== ~%XZAR_BANTER%~ @343
== ~%ELDOTH_BANTER%~ @344
== ~%XZAR_BANTER%~ @345
= @346
== ~%ELDOTH_BANTER%~ @347
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("yeslick") Global("X#ELYE1","LOCALS",0) !See([ENEMY]) See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELYE1
@348
DO ~SetGlobal("X#ELYE1","LOCALS",1)~
== ~%YESLICK_BANTER%~ @349
== ~%ELDOTH_BANTER%~ @350
== ~%YESLICK_BANTER%~ @351
== ~%ELDOTH_BANTER%~ @352
== ~%YESLICK_BANTER%~ @353
== ~%ELDOTH_BANTER%~ @354
== ~%YESLICK_BANTER%~ @355
== ~%ELDOTH_BANTER%~ @356
== ~%YESLICK_BANTER%~ @357
== ~%ELDOTH_BANTER%~ @358
== ~%YESLICK_BANTER%~ @359
== ~%ELDOTH_BANTER%~ @360
== ~%YESLICK_BANTER%~ @361
== ~%ELDOTH_BANTER%~ @362
EXIT
