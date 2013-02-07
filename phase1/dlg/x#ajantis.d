ADD_TRANS_ACTION ~%tutu_var%TAMOKO~ BEGIN 14 15 16 17 18 END BEGIN END
~SetGlobal("P#KnowBhaal","GLOBAL",1) SetGlobal("X#TamokoBhaal","GLOBAL",1)~

/* Script for PC */
APPEND ~%AJANTIS_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjFriendTalk","GLOBAL",1)~ THEN BEGIN AJVI3
SAY @0
IF ~~ THEN DO ~SetGlobal("X#AjFriendTalk","GLOBAL",2) RealSetGlobalTimer("X#AjFriendTalkTime","GLOBAL",3600)~ EXTERN ~%VICONIA_BANTER%~ AJVICHAIN
END

END

CHAIN3 ~%VICONIA_BANTER%~ AJVICHAIN
@1
== ~%AJANTIS_BANTER%~ @2
== ~%VICONIA_BANTER%~ @3
== ~%AJANTIS_BANTER%~ @4
== ~%VICONIA_BANTER%~ @5
== ~%AJANTIS_BANTER%~ @6
== ~%VICONIA_BANTER%~ @7
== ~%AJANTIS_BANTER%~ @8
END ~%AJANTIS_BANTER%~ AJVI3.PC

APPEND ~%AJANTIS_BANTER%~

IF ~~ THEN BEGIN AJVI3.PC
SAY @9
IF ~~ THEN REPLY @10 EXTERN ~%VICONIA_BANTER%~ AJVI3VI
IF ~~ THEN REPLY @11 GOTO AJVI3AJ
END

IF ~~ THEN BEGIN AJVI3T
SAY @12
IF ~~ THEN DO ~SetGlobalTimer("X#AJVILEAVE","GLOBAL",7200)~ EXIT
END

END

CHAIN3 ~%VICONIA_BANTER%~ AJVI3VI
@13
== ~%VICONIA_BANTER%~ @14
== ~%VICONIA_BANTER%~ @15
END ~%AJANTIS_BANTER%~ AJVI3T


CHAIN3 ~%AJANTIS_BANTER%~ AJVI3AJ
@16
== ~%VICONIA_BANTER%~ @17
== ~%AJANTIS_BANTER%~ @18
EXIT


CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("alora") Global("X#AjAL1","LOCALS",0) !See([ENEMY]) CombatCounter(0) See("alora") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("alora",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJAL1
@19
DO ~SetGlobal("X#AjAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @20
== ~%AJANTIS_BANTER%~ @21
== ~%ALORA_BANTER%~ @22
== ~%AJANTIS_BANTER%~ @23
== ~%ALORA_BANTER%~ @24
== ~%ALORA_BANTER%~ @25
== ~%AJANTIS_BANTER%~ @26
== ~%EDWIN_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @27
== ~%ALORA_BANTER%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @28
== ~%AJANTIS_BANTER%~ @29
== ~%ALORA_BANTER%~ @30
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("coran") Alignment("coran",CHAOTIC_NEUTRAL) Global("X#AjCO1","LOCALS",0) Global("P#Briel_Stay","GLOBAL",2) CombatCounter(0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJCO1
@31
DO ~SetGlobal("X#AjCO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @32
== ~%AJANTIS_BANTER%~ @33
== ~%CORAN_BANTER%~ @34
== ~%AJANTIS_BANTER%~ @35
== ~%CORAN_BANTER%~ @36
== ~%AJANTIS_BANTER%~ @37
EXIT


CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("P#CoranHasBaby","GLOBAL",1) InParty("coran")  Global("X#AjCO2","LOCALS",0) Alignment("coran",CHAOTIC_GOOD) CombatCounter(0) !See([ENEMY]) See("coran") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJCO2
@38
DO ~SetGlobal("X#AjCO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @39
== ~%AJANTIS_BANTER%~ @40
== ~%CORAN_BANTER%~ @41
== ~%AJANTIS_BANTER%~ @42
== ~%CORAN_BANTER%~ @43
EXIT


CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("dynaheir") Global("X#AjDY1","LOCALS",0) !See([ENEMY]) CombatCounter(0) See("dynaheir") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJDY1
@44
DO ~SetGlobal("X#AjDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @45
== ~%AJANTIS_BANTER%~ @46
== ~%DYNAHEIR_BANTER%~ @47
== ~%AJANTIS_BANTER%~ @48
== ~%DYNAHEIR_BANTER%~ @49
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("edwin") Global("X#AjED1","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("edwin") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJED1
@50
DO ~SetGlobal("X#AjED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @51
== ~%AJANTIS_BANTER%~ @52
== ~%EDWIN_BANTER%~ @53
== ~%AJANTIS_BANTER%~ @54
== ~%EDWIN_BANTER%~ @55
== ~%AJANTIS_BANTER%~ @56
== ~%EDWIN_BANTER%~ @57
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("eldoth") !InParty("skie") Global("X#AjEL1","LOCALS",0) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) CombatCounter(0) !See([ENEMY]) See("eldoth") !See("skie") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJEL1
@58
DO ~SetGlobal("X#AjEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @59
== ~%AJANTIS_BANTER%~ @60
== ~%ELDOTH_BANTER%~ @61
== ~%AJANTIS_BANTER%~ @62
== ~%ELDOTH_BANTER%~ @63
== ~%AJANTIS_BANTER%~ @64
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("eldoth") InParty("skie") Global("X#AjEL2","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("eldoth") See("skie") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJEL2
@65
DO ~SetGlobal("X#AjEL2","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @66
== ~%AJANTIS_BANTER%~ @67
== ~%ELDOTH_BANTER%~ @68
== ~%AJANTIS_BANTER%~ @69
== ~%SKIE_BANTER%~ @70
== ~%ELDOTH_BANTER%~ @71
== ~%AJANTIS_BANTER%~ @72
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AjFA1","LOCALS",0) InParty("faldorn") !See([ENEMY]) CombatCounter(0) See("faldorn") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJFA1
@73
DO ~SetGlobal("X#AjFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @74
== ~%AJANTIS_BANTER%~ @75
== ~%FALDORN_BANTER%~ @76
== ~%AJANTIS_BANTER%~ @77
== ~%FALDORN_BANTER%~ @78
== ~%AJANTIS_BANTER%~ @79
== ~%FALDORN_BANTER%~ @80
== ~%AJANTIS_BANTER%~ @81
== ~%FALDORN_BANTER%~ @82
== ~%AJANTIS_BANTER%~ @83
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AjGA1","LOCALS",0) InParty("garrick") !See([ENEMY]) CombatCounter(0) See("garrick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJGA1
@84
DO ~SetGlobal("X#AjGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @85
== ~%AJANTIS_BANTER%~ @86
== ~%GARRICK_BANTER%~ @87
= @88
== ~%AJANTIS_BANTER%~ @89
== ~%GARRICK_BANTER%~ @90
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AjIM1","LOCALS",0) TimeOfDay(DAY) InParty("%IMOEN_DV%") CombatCounter(0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJIM1
@91
DO ~SetGlobal("X#AjIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @92
== ~%IMOEN_BANTER%~ @93
== ~%IMOEN_BANTER%~ @94
== ~%AJANTIS_BANTER%~ @95
== ~%IMOEN_BANTER%~ @96
== ~%AJANTIS_BANTER%~ @97
== ~%IMOEN_BANTER%~ @98
== ~%AJANTIS_BANTER%~ @99
== ~%IMOEN_BANTER%~ @100
== ~%AJANTIS_BANTER%~ @101
== ~%IMOEN_BANTER%~ IF ~Class(Player1,PALADIN)~ THEN @102
== ~%IMOEN_BANTER%~ IF ~!Class(Player1,PALADIN)~ THEN @103
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AjKA1","LOCALS",0) CombatCounter(0) InParty("kagain") !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJKA1
@104
DO ~SetGlobal("X#AjKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @105
== ~%AJANTIS_BANTER%~ @106
== ~%KAGAIN_BANTER%~ @107
== ~%AJANTIS_BANTER%~ @108
== ~%KAGAIN_BANTER%~ @109
== ~%AJANTIS_BANTER%~ @110
== ~%KAGAIN_BANTER%~ @111
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AjKA2","LOCALS",0) CombatCounter(0) InParty("kagain") !See([ENEMY]) See("kagain") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJKA2
@112
DO ~SetGlobal("X#AjKA2","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @113
== ~%AJANTIS_BANTER%~ @114
== ~%KAGAIN_BANTER%~ @115
== ~%AJANTIS_BANTER%~ @116
== ~%KAGAIN_BANTER%~ @117
== ~%AJANTIS_BANTER%~ @118
== ~%KAGAIN_BANTER%~ @119
== ~%AJANTIS_BANTER%~ @120
== ~%KAGAIN_BANTER%~ @121
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AjKH1","LOCALS",0) CombatCounter(0) InParty("khalid") !See([ENEMY]) See("khalid") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJKH1
@122
DO ~SetGlobal("X#AjKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @123
== ~%AJANTIS_BANTER%~ @124
== ~%KHALID_BANTER%~ @125
== ~%AJANTIS_BANTER%~ @126
== ~%KHALID_BANTER%~ @127
== ~%AJANTIS_BANTER%~ @128
== ~%KHALID_BANTER%~ @129
== ~%AJANTIS_BANTER%~ @130
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AjKI1","LOCALS",0) CombatCounter(0) InParty("kivan") !See([ENEMY]) See("kivan") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("kivan",CD_STATE_NOTVALID) !Dead("tazok")~ THEN ~%AJANTIS_BANTER%~ AJKI1
@131
DO ~SetGlobal("X#AjKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @132
== ~%AJANTIS_BANTER%~ @133
== ~%KIVAN_BANTER%~ @134
== ~%AJANTIS_BANTER%~ @135
== ~%KIVAN_BANTER%~ @136
== ~%AJANTIS_BANTER%~ @137
== ~%KIVAN_BANTER%~ @138
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AjMO1","LOCALS",0) CombatCounter(0) InParty("montaron") !See([ENEMY]) See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJMO1
@139
DO ~SetGlobal("X#AjMO1","LOCALS",1) SetGlobalTimer("X#AJANGRYMO","GLOBAL",100800)~
== ~%MONTARON_BANTER%~ @140
== ~%AJANTIS_BANTER%~ @141
== ~%MONTARON_BANTER%~ @142
== ~%AJANTIS_BANTER%~ @143
== ~%MONTARON_BANTER%~ @144
== ~%AJANTIS_BANTER%~ @145
== ~%MONTARON_BANTER%~ @146
== ~%AJANTIS_BANTER%~ @147
== ~%MONTARON_BANTER%~ @148
== ~%AJANTIS_BANTER%~ @149
== ~%MONTARON_BANTER%~ @150
== ~%AJANTIS_BANTER%~ @151
== ~%MONTARON_BANTER%~ @152
== ~%AJANTIS_BANTER%~ @153
== ~%MONTARON_BANTER%~ @154
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% GlobalTimerExpired("X#AJANGRYMO","GLOBAL") CombatCounter(0) InParty("montaron") Global("X#AjMO2","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJMO2
@155
DO ~SetGlobal("X#AjMO2","LOCALS",1)~
== ~%MONTARON_BANTER%~ @156
== ~%AJANTIS_BANTER%~ @157
== ~%MONTARON_BANTER%~ @158
== ~%AJANTIS_BANTER%~ @159
== ~%MONTARON_BANTER%~ @160
== ~%AJANTIS_BANTER%~ @161
== ~%MONTARON_BANTER%~ @162
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AjSA1","LOCALS",0) InParty("safana") CombatCounter(0) !See([ENEMY]) See("safana") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("safana",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJSA1
@163
DO ~SetGlobal("X#AjSA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @164
== ~%AJANTIS_BANTER%~ @165
== ~%SAFANA_BANTER%~ @166
== ~%AJANTIS_BANTER%~ @167
== ~%SAFANA_BANTER%~ @168
== ~%AJANTIS_BANTER%~ @169
== ~%SAFANA_BANTER%~ @170
== ~%AJANTIS_BANTER%~ @171
== ~%SAFANA_BANTER%~ @172
== ~%SAFANA_BANTER%~ IF ~Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @215
== ~%SAFANA_BANTER%~ IF ~OR(2) !Global("X#AjantisRomanceMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @216
== ~%AJANTIS_BANTER%~ IF ~OR(2) !Global("X#AjantisRomanceMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @217
== ~%AJANTIS_BANTER%~ IF ~Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @218
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) TimeOfDay(DAY) InParty("viconia") Global("X#AjVI1","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJVI1
@174
DO ~SetGlobal("X#AjVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @175
== ~%AJANTIS_BANTER%~ @176
== ~%VICONIA_BANTER%~ @177
== ~%AJANTIS_BANTER%~ @178
== ~%VICONIA_BANTER%~ @179
== ~%AJANTIS_BANTER%~ @180
== ~%VICONIA_BANTER%~ @181
== ~%AJANTIS_BANTER%~ @182
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("X#AjVI1","LOCALS",1) Global("X#AjVI2","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_JOINED%~ AJVI2
@183 
DO ~SetGlobal("X#AjVI2","LOCALS",1)~
== ~%VICONIA_BANTER%~ @184
== ~%AJANTIS_BANTER%~ @185
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) GlobalTimerExpired("X#AJVILEAVE","GLOBAL") InParty("viconia") Global("X#AjVI4","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJVI4
@186
DO ~SetGlobal("X#AjVI4","LOCALS",1)~
== ~%VICONIA_BANTER%~ @187
= @188
DO ~ActionOverride("viconia",SetLeavePartyDialogFile()) ActionOverride("viconia",ChangeAIScript("",DEFAULT)) ActionOverride("viconia",LeaveParty()) ActionOverride("viconia",EscapeArea())~ EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AjXZ1","LOCALS",0) InParty("xzar") CombatCounter(0) !See([ENEMY]) See("xzar") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJXZ1
@189
DO ~SetGlobal("X#AjXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @190
== ~%AJANTIS_BANTER%~ @191
== ~%XZAR_BANTER%~ @192
== ~%AJANTIS_BANTER%~ @193
== ~%XZAR_BANTER%~ @194
== ~%AJANTIS_BANTER%~ @195
== ~%XZAR_BANTER%~ @196
== ~%AJANTIS_BANTER%~ @197
== ~%XZAR_BANTER%~ @198
== ~%AJANTIS_BANTER%~ @199
== ~%XZAR_BANTER%~ @200
== ~%AJANTIS_BANTER%~ @201
== ~%XZAR_BANTER%~ @202
== ~%AJANTIS_BANTER%~ @203
== ~%XZAR_BANTER%~ @204
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#AjYE1","LOCALS",0) InParty("yeslick") CombatCounter(0) !See([ENEMY]) See("yeslick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJYE1
@205
DO ~SetGlobal("X#AjYE1","LOCALS",1)~
== ~%YESLICK_BANTER%~ @206
== ~%AJANTIS_BANTER%~ @207
== ~%YESLICK_BANTER%~ @208
== ~%AJANTIS_BANTER%~ @209
== ~%YESLICK_BANTER%~ @210
= @211
== ~%AJANTIS_BANTER%~ @212
= @213
== ~%YESLICK_BANTER%~ @214
EXIT

APPEND ~%tutu_var%AJANTJ~

IF ~Global("X#AjanSafanasBox","GLOBAL",2)~ THEN safanas_box
SAY @219
++ @220 + safanas_box_01
++ @221 + safanas_box_05
++ @222 + safanas_box_01
++ @223 + safanas_box_07
END

IF ~~ THEN safanas_box_01
SAY @224
IF ~~ THEN + safanas_box_06
END

IF ~~ THEN safanas_box_02
SAY @225
IF ~~ THEN + safanas_box_03
END

IF ~~ THEN safanas_box_03
SAY @226
IF ~~ THEN DO ~SetGlobalTimer("X#AjanDestroyBoxT","GLOBAL",FIVE_DAYS) SetGlobal("X#AjanSafanasBox","GLOBAL",3)~ EXIT
END

IF ~~ THEN safanas_box_04
SAY @227
IF ~~ THEN + safanas_box_03
END

IF ~~ THEN safanas_box_05
SAY @228
IF ~~ THEN + safanas_box_06
END

IF ~~ THEN safanas_box_06
SAY @229
++ @230 + safanas_box_08
+ ~Global("X#AjantisRomanceActive","GLOBAL",1) GlobalGT("X#AjantisRomanceIniFlirt","GLOBAL",2)~ + @231 + safanas_box_02
+ ~Global("X#AjSA1","LOCALS",1)~ + @232 + safanas_box_04
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @233 + safanas_box_04
++ @234 + safanas_box_03
END

IF ~~ THEN safanas_box_07
SAY @235
IF ~~ THEN + safanas_box_03
END

IF ~~ THEN safanas_box_08
SAY @236
IF ~~ THEN + safanas_box_03
END

/* Ajantis Shield Removed talk */

IF ~Global("X#AjantisShieldGone","GLOBAL",2)~ THEN ajantis_shield_gone
SAY @237
++ @238 DO ~SetGlobal("X#AjantisShieldGone","GLOBAL",3)~ + ajantis_shield_gone_02
++ @239 DO ~SetGlobal("X#AjantisShieldGone","GLOBAL",3)~ + ajantis_shield_gone_02
++ @240 DO ~SetGlobal("X#AjantisShieldGone","GLOBAL",3)~ + ajantis_shield_gone_01
END

IF ~~ THEN ajantis_shield_gone_01
SAY @241
IF ~~ THEN DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~ EXIT
END

IF ~~ THEN ajantis_shield_gone_02
SAY @242
IF ~~ THEN EXIT
END

/* Ajantis Shield Returned talk */

IF ~Global("X#AjantisShieldGone","GLOBAL",4)~ THEN ajantis_shield_back
SAY @243
IF ~~ THEN DO ~SetGlobal("X#AjantisShieldGone","GLOBAL",5)~ EXIT
END

END