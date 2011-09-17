
BEGIN X#NELL
BEGIN X#MADR
BEGIN X#BHET
BEGIN X#SVEET

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYYERE","GLOBAL",1)~ THEN ~%YESLICK_JOINED%~ YEREDY1
@0
DO ~SetGlobal("X#DYYERE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~
== ~%YESLICK_JOINED%~ IF ~OR(2) InParty("kivan") InParty("coran")~ THEN @1
== ~%DYNAHEIR_BANTER%~ @2
== ~%YESLICK_JOINED%~ @3
== ~%DYNAHEIR_BANTER%~ @4
== ~%YESLICK_JOINED%~ @5
DO ~RestParty()~
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYYERE","GLOBAL",3)~ THEN ~%YESLICK_JOINED%~ YEREDY2
@6
= @7
DO ~SetGlobal("X#DYYERE","GLOBAL",4) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~
== ~%DYNAHEIR_BANTER%~ @8
== ~%YESLICK_JOINED%~ @9
== ~%DYNAHEIR_BANTER%~ @10
== ~%YESLICK_JOINED%~ @11
EXIT

CHAIN IF ~%BGT_VAR% Global("X#XAREDY1","LOCALS",0) GlobalGT("X#DYLoveTalk","GLOBAL",41) !Global("X#DynaheirRomanceInactive","GLOBAL",1) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID)~ THEN ~%XAN_BANTER%~ XAREDY1
@12
DO ~SetGlobal("X#XAREDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @13
== ~%XAN_BANTER%~ @14
== ~%DYNAHEIR_BANTER%~ @15
== ~%XAN_BANTER%~ @16
== ~%DYNAHEIR_BANTER%~ @17
== ~%XAN_BANTER%~ @18
== ~%DYNAHEIR_BANTER%~ @19
== ~%XAN_BANTER%~ @20
== ~%DYNAHEIR_BANTER%~ @21
== ~%XAN_BANTER%~ @22
== ~%DYNAHEIR_BANTER%~ @23
== ~%XAN_BANTER%~ @24
== ~%DYNAHEIR_BANTER%~ @25
== ~%XAN_BANTER%~ @26
EXIT

CHAIN IF ~%BGT_VAR% Global("X#VIREDY1","LOCALS",0) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID) GlobalGT("X#DYLoveTalk","GLOBAL",37) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ THEN ~%VICONIA_BANTER%~ VIREDY1
@27
DO ~SetGlobal("X#VIREDY1","LOCALS",1)~
== ~%VICONIA_BANTER%~ IF ~OR(4) Class(Player1,MONK) Class(Player1,FIGHTER_ALL) Class(Player1,PALADIN_ALL) Class(Player1,RANGER_ALL)~ THEN @28
== ~%VICONIA_BANTER%~ IF ~OR(2) Class(Player1,DRUID_ALL) Class(Player1,CLERIC_ALL)~ THEN @29
== ~%VICONIA_BANTER%~ IF ~OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ THEN @30
== ~%VICONIA_BANTER%~ IF ~Class(Player1,THIEF_ALL)~ THEN @31
== ~%VICONIA_BANTER%~ IF ~Class(Player1,BARD_ALL)~ THEN @32
== ~%DYNAHEIR_BANTER%~ @33
== ~%VICONIA_BANTER%~ @34
== ~%DYNAHEIR_BANTER%~ @35
== ~%VICONIA_BANTER%~ @36
== ~%VICONIA_BANTER%~ IF ~Global("X#ViconiaLover","GLOBAL",1)~ THEN @37
== ~%DYNAHEIR_BANTER%~ @38
== ~%VICONIA_BANTER%~ @39
EXIT

APPEND ~%TIAX_JOINED%~

IF WEIGHT #-2 ~Global("X#DYTIRE","GLOBAL",1)~ THEN BEGIN DYTIRE
SAY @40
++ @41 DO ~SetGlobal("X#DYTIRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYTIRE1.1
++ @42 DO ~SetGlobal("X#DYTIRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYTIRE1.2
++ @43 DO ~SetGlobal("X#DYTIRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYTIRE1.3
++ @44 DO ~SetGlobal("X#DYTIRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYTIRE1.4
++ @45 DO ~SetGlobal("X#DYTIRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYTIRE1.5
++ @46 DO ~SetGlobal("X#DYTIRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYTIRE1.6
END

IF ~~ DYTIRE1.1
SAY @47
++ @42 + DYTIRE1.2
++ @43 + DYTIRE1.3
++ @44 + DYTIRE1.4
++ @46 + DYTIRE1.6
END

IF ~~ DYTIRE1.2
SAY @48
++ @44 + DYTIRE1.4
++ @46 + DYTIRE1.6
END

IF ~~ DYTIRE1.3
SAY @49
++ @44 + DYTIRE1.4
++ @46 + DYTIRE1.6
END

IF ~~ DYTIRE1.4
SAY @50
IF ~~ THEN EXIT
END

IF ~~ DYTIRE1.5
SAY @51
IF ~~ THEN EXIT
END
END

CHAIN ~%TIAX_JOINED%~ DYTIRE1.6
@52
== ~%DYNAHEIR_BANTER%~ @53
END ~%TIAX_JOINED%~ DYTIRE1.4


CHAIN IF ~%BGT_VAR% Global("X#SKREDY1","LOCALS",0) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",29) !Global("X#DynaheirRomanceInactive","GLOBAL",1) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKREDY1
@54
DO ~SetGlobal("X#SKREDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @55
== ~%SKIE_BANTER%~ @56
== ~%DYNAHEIR_BANTER%~ @57
== ~%SKIE_BANTER%~ @58
EXIT

CHAIN IF ~%BGT_VAR% Global("X#SHREDY1","LOCALS",0) GlobalGT("X#DYLoveTalk","GLOBAL",3) !Global("X#DynaheirRomanceInactive","GLOBAL",1) PartyRested() TimeOfDay(MORNING) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ SHREDY1
@59
DO ~SetGlobal("X#SHREDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @60
== ~%SHARTEEL_BANTER%~ @61
== ~%DYNAHEIR_BANTER%~ @62
== ~%SHARTEEL_BANTER%~ IF ~Global("P#KnowBhaal","GLOBAL",0)~ THEN @63
== ~%SHARTEEL_BANTER%~ IF ~Global("P#KnowBhaal","GLOBAL",1)~ THEN @64
== ~%DYNAHEIR_BANTER%~ @65
== ~%SHARTEEL_BANTER%~ @66
== ~%DYNAHEIR_BANTER%~ @67
== ~%SHARTEEL_BANTER%~ @68
EXIT

CHAIN IF ~%BGT_VAR% Global("X#SAREDY1","LOCALS",0) GlobalGT("X#DYLoveTalk","GLOBAL",17) !Global("X#DynaheirRomanceInactive","GLOBAL",1) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAREDY1
@69
= @70
DO ~SetGlobal("X#SAREDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @71
== ~%SAFANA_BANTER%~ @72
== ~%DYNAHEIR_BANTER%~ @73
== ~%SAFANA_BANTER%~ @74
EXIT

CHAIN IF ~%BGT_VAR% Global("X#SAREDY1","LOCALS",1) GlobalGT("X#DYLoveTalk","GLOBAL",35) !Global("X#DynaheirRomanceInactive","GLOBAL",1) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SAFANA_BANTER%~ SAREDY2
@75
DO ~SetGlobal("X#SAREDY1","LOCALS",2)~
== ~%DYNAHEIR_BANTER%~ @76
== ~%SAFANA_BANTER%~ @77
== ~%DYNAHEIR_BANTER%~ @78
== ~%SAFANA_BANTER%~ @79
== ~%DYNAHEIR_BANTER%~ @80
== ~%SAFANA_BANTER%~ @81
EXIT

CHAIN IF ~%BGT_VAR% Global("X#DYQURE","LOCALS",0) GlobalGT("X#DYLoveTalk","GLOBAL",9) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ THEN ~%QUAYLE_BANTER%~ DYQURE1
@82
DO ~SetGlobal("X#DYQURE","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @83
== ~%QUAYLE_BANTER%~ @84
== ~%DYNAHEIR_BANTER%~ @85
== ~%QUAYLE_BANTER%~ @86
== ~%DYNAHEIR_BANTER%~ @87
== ~%QUAYLE_BANTER%~ @88
== ~%QUAYLE_BANTER%~ @89
== ~%QUAYLE_BANTER%~ @90
== ~%DYNAHEIR_BANTER%~ @91
== ~%QUAYLE_BANTER%~ @92
= @93
EXIT

APPEND ~%MINSC_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYMIRE","GLOBAL",1)~ THEN BEGIN DYMIRE
SAY @94
++ @95 DO ~SetGlobal("X#DYMIRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYMIRE1.1
++ @96 DO ~SetGlobal("X#DYMIRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYMIRE1.2
++ @97 DO ~SetGlobal("X#DYMIRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYMIRE1.3
END

IF ~~ DYMIRE1.1
SAY @98
IF ~~ THEN EXIT
END

IF ~~ DYMIRE1.2
SAY @99
= @100
IF ~~ THEN EXIT
END

IF ~~ DYMIRE1.3
SAY @101
= @100
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYMIRE","GLOBAL",3)~ THEN BEGIN DYMIRE2
SAY @102
++ @103 DO ~SetGlobal("X#DYMIRE","GLOBAL",4) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYMIRE2.1
++ @104 DO ~SetGlobal("X#DYMIRE","GLOBAL",4) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYMIRE2.2
++ @105 DO ~SetGlobal("X#DYMIRE","GLOBAL",4) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYMIRE2.3
END

IF ~~ DYMIRE2.2
SAY @110
IF ~~ THEN EXIT
END

IF ~~ DYMIRE2.3
SAY @111
IF ~~ THEN GOTO DYMIRE2.2
END

END

CHAIN ~%MINSC_JOINED%~ DYMIRE2.1
@106
== ~%MINSC_JOINED%~ @107
== ~%MINSC_JOINED%~ @108
= @109 EXTERN ~%MINSC_JOINED%~ DYMIRE2.2

CHAIN IF ~%BGT_VAR% GlobalGT("X#DYLoveTalk","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !Global("X#DynaheirRomanceInactive","GLOBAL",1) Global("X#MIREDY1","LOCALS",0)~ THEN ~%MINSC_BANTER%~ MIREDY1
@112
DO ~SetGlobal("X#MIREDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @113
== ~%MINSC_BANTER%~ @114
== ~%DYNAHEIR_BANTER%~ @115
== ~%MINSC_BANTER%~ @116
== ~%MINSC_BANTER%~ @117
== ~%MINSC_BANTER%~ @118
== ~%MINSC_BANTER%~ @119
== ~%MINSC_BANTER%~ @117
== ~%MINSC_BANTER%~ @120
== ~%MINSC_BANTER%~ @117
== ~%MINSC_BANTER%~ @121
== ~%DYNAHEIR_BANTER%~ @122
EXIT

CHAIN IF ~%BGT_VAR% GlobalGT("X#DYLoveTalk","GLOBAL",9) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !Global("X#DynaheirRomanceInactive","GLOBAL",1) InParty("edwin") GlobalGT("X#MIREDY1","LOCALS",1) Global("X#MIEDREDY1","LOCALS",0)~ THEN ~%MINSC_BANTER%~ MIREDY2
@123
DO ~SetGlobal("X#MIEDREDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @124
== ~%MINSC_BANTER%~ @125
== ~%DYNAHEIR_BANTER%~ @126
== ~%MINSC_BANTER%~ @127
== ~%DYNAHEIR_BANTER%~ @128
EXIT

CHAIN IF ~%BGT_VAR% GlobalGT("X#DYLoveTalk","GLOBAL",13) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !Global("X#DynaheirRomanceInactive","GLOBAL",1) Global("X#MIREDY1","LOCALS",1)~ THEN ~%MINSC_BANTER%~ MIREDY2
@129
DO ~SetGlobal("X#MIREDY1","LOCALS",2)~
== ~%DYNAHEIR_BANTER%~ @130
== ~%MINSC_BANTER%~ @131
== ~%DYNAHEIR_BANTER%~ @132
== ~%MINSC_BANTER%~ @133
= @117 
== ~%DYNAHEIR_BANTER%~ @134
== ~%MINSC_BANTER%~ @135
EXIT

CHAIN IF ~%BGT_VAR% GlobalGT("X#DYLoveTalk","GLOBAL",19) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !Global("X#DynaheirRomanceInactive","GLOBAL",1) Global("X#MIREDY1","LOCALS",2)~ THEN ~%MINSC_BANTER%~ MIREDY3
 @136
DO ~SetGlobal("X#MIREDY1","LOCALS",3)~
== ~%DYNAHEIR_BANTER%~ @137
== ~%MINSC_BANTER%~ @138
= @139
= @140
== ~%DYNAHEIR_BANTER%~ @141
== ~%MINSC_BANTER%~ @142
== ~%DYNAHEIR_BANTER%~ @143
EXIT


CHAIN IF ~%BGT_VAR% GlobalGT("X#DYLoveTalk","GLOBAL",29) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !Global("X#DynaheirRomanceInactive","GLOBAL",1) Global("X#MIREDY1","LOCALS",3)~ THEN ~%MINSC_BANTER%~ MIREDY4
@144
 DO ~SetGlobal("X#MIREDY1","LOCALS",4)~
== ~%MINSC_BANTER%~ @117 
= @145
= @117 
= @146
= @117 
EXIT

CHAIN IF ~%BGT_VAR% GlobalGT("X#DYLoveTalk","GLOBAL",43) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !Global("X#DynaheirRomanceInactive","GLOBAL",1) Global("X#MIREDY1","LOCALS",4)~ THEN ~%MINSC_BANTER%~ MIREDY5
@147
DO ~SetGlobal("X#MIREDY1","LOCALS",5)~
== ~%DYNAHEIR_BANTER%~ @148
== ~%MINSC_BANTER%~ @149
== ~%DYNAHEIR_BANTER%~ @150
== ~%MINSC_BANTER%~ @151
== ~%DYNAHEIR_BANTER%~ @152
== ~%MINSC_BANTER%~ @153
== ~%DYNAHEIR_BANTER%~ @154
== ~%MINSC_BANTER%~ @155
EXIT

CHAIN IF ~%BGT_VAR% Global("X#DYREKI1","LOCALS",0) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) CombatCounter(0) !See([ENEMY]) InParty("kivan") See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%DYNAHEIR_BANTER%~ DYREKI1
@156
DO ~SetGlobal("X#DYREKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @157
== ~%DYNAHEIR_BANTER%~ @158
== ~%KIVAN_BANTER%~ @159
== ~%DYNAHEIR_BANTER%~ @160
== ~%KIVAN_BANTER%~ @161
== ~%DYNAHEIR_BANTER%~ @162
== ~%KIVAN_BANTER%~ @163
== ~%DYNAHEIR_BANTER%~ @164
== ~%KIVAN_BANTER%~ @165
== ~%DYNAHEIR_BANTER%~ @166
== ~%KIVAN_BANTER%~ @167
== ~%DYNAHEIR_BANTER%~ @168
EXIT

APPEND ~%KHALID_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYKHRE","GLOBAL",1)~ THEN BEGIN DYKHRE
SAY @169
++ @170 DO ~SetGlobal("X#DYKHRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + KHDYRE1.1
++ @171 DO ~SetGlobal("X#DYKHRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + KHDYRE1.2
++ @172 DO ~SetGlobal("X#DYKHRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + KHDYRE1.3
END

IF ~~ KHDYRE1.1
SAY @173
IF ~~ THEN EXIT
END

IF ~~ KHDYRE1.2
SAY @174
IF ~~ THEN EXIT
END

IF ~~ KHDYRE1.3
SAY @175
IF ~~ THEN EXIT
END

END

CHAIN IF ~%BGT_VAR% Global("X#JARODY1","LOCALS",0) Global("P#KnowBhaal","GLOBAL",0) GlobalGT("X#DYLoveTalk","GLOBAL",5) !Global("X#DynaheirRomanceInactive","GLOBAL",1) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JARODY1
@176
DO ~SetGlobal("X#JARODY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @177
== ~%JAHEIRA_BANTER%~ @178
== ~%DYNAHEIR_BANTER%~ @179
== ~%JAHEIRA_BANTER%~ @180
= @181
== ~%DYNAHEIR_BANTER%~ @182
== ~%JAHEIRA_BANTER%~ @183
== ~%DYNAHEIR_BANTER%~ @184
== ~%JAHEIRA_BANTER%~ @185
EXIT

APPEND ~%IMOEN_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYIMRE","GLOBAL",1)~ THEN BEGIN DYIMRE
SAY @186
= @187
= @188
++ @189 DO ~SetGlobal("X#DYIMRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + IM1
++ @190 DO ~SetGlobal("X#DYIMRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + IM2
++ @191 DO ~SetGlobal("X#DYIMRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + IM3
++ @192 DO ~SetGlobal("X#DYIMRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + IM4
++ @193 DO ~SetGlobal("X#DYIMRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + IM5
END

IF ~~ IM1
SAY @194
++ @195 + IM2
++ @196 + IM7
++ @197 + IM8
END

IF ~~ IM2
SAY @198
++ @199 + IM9
++ @197 + IM8
END

IF ~~ IM3
SAY @200
= @201
IF ~~ THEN GOTO IM2
END

IF ~~ IM4
SAY @202
= @201
IF ~~ THEN GOTO IM2
END

IF ~~ IM5
SAY @203
= @204
IF ~~ THEN GOTO IM2
END

IF ~~ IM7
SAY @205
IF ~~ THEN GOTO IM2
END

IF ~~ IM8
SAY @206
IF ~~ THEN EXIT
END

IF ~~ IM9
SAY @207
= @208
IF ~~ THEN EXIT
END

IF ~~ IM10
SAY @209
IF ~~ THEN EXIT
END

END

APPEND ~%GARRICK_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYGARE","GLOBAL",1)~ THEN BEGIN DYGARE
SAY @210
++ @211 DO ~SetGlobal("X#DYGARE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + GADYROM1.1
++ @212 DO ~SetGlobal("X#DYGARE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + GADYROM1.2
++ @213 DO ~SetGlobal("X#DYGARE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + GADYROM1.3
END

IF ~~ GADYROM1.1
SAY @214
++ @215 + GADYROM1.2


++ @216 + GADYROM1.4
END

IF ~~ GADYROM1.2
SAY @217
IF ~~ THEN EXIT
END

IF ~~ GADYROM1.3
SAY @218
IF ~~ THEN EXIT
END



IF ~~ GADYROM1.4
SAY @219
IF ~~ THEN EXIT
END
END

CHAIN IF ~%BGT_VAR% Global("X#ELRODY1","LOCALS",0) Global("P#KnowBhaal","GLOBAL",0) GlobalGT("X#DYLoveTalk","GLOBAL",14) !Global("X#DynaheirRomanceInactive","GLOBAL",1) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%ELDOTH_BANTER%~ ELRODY1
@220
DO ~SetGlobal("X#ELRODY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @221
== ~%ELDOTH_BANTER%~ @222
EXIT

CHAIN IF ~%BGT_VAR% Global("X#FARODY1","LOCALS",0) Global("P#KnowBhaal","GLOBAL",0) GlobalGT("X#DYLoveTalk","GLOBAL",32) !Global("X#DynaheirRomanceInactive","GLOBAL",1) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%FALDORN_BANTER%~ FARODY1
@223
DO ~SetGlobal("X#FARODY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @224
== ~%FALDORN_BANTER%~ @225
== ~%DYNAHEIR_BANTER%~ @226
== ~%FALDORN_BANTER%~ @227
== ~%DYNAHEIR_BANTER%~ @228
== ~%FALDORN_BANTER%~ @229
== ~%DYNAHEIR_BANTER%~ @230
== ~%FALDORN_BANTER%~ @231
== ~%DYNAHEIR_BANTER%~ @232
== ~%FALDORN_BANTER%~ @233
EXIT

CHAIN IF ~%BGT_VAR% Global("X#AJRODY1","LOCALS",0) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",35) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ THEN ~%AJANTIS_BANTER%~ AJRODY1
@234 
DO ~SetGlobal("X#AJRODY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @235
== ~%AJANTIS_BANTER%~ @236
== ~%DYNAHEIR_BANTER%~ @237
== ~%AJANTIS_BANTER%~ @238
== ~%DYNAHEIR_BANTER%~ @239
== ~%AJANTIS_BANTER%~ @240
== ~%DYNAHEIR_BANTER%~ @241
== ~%AJANTIS_BANTER%~ @242
EXIT

CHAIN IF ~%BGT_VAR% Global("X#ALRDY1","LOCALS",0) TimeOfDay(MORNING) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !Global("X#DynaheirRomanceInactive","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",34)~ THEN ~%ALORA_BANTER%~ ALRODY1
@243
DO ~SetGlobal("X#ALRDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @244
== ~%ALORA_BANTER%~ @245
== ~%DYNAHEIR_BANTER%~ @246
== ~%ALORA_BANTER%~ @247
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYBRConflict","GLOBAL",2)~ THEN ~%DYNAHEIR_BANTER%~ DYBRConflict1
@248
DO ~SetGlobal("X#DYBRConflict","GLOBAL",3) RealSetGlobalTimer("X#DYBRConflictTime","GLOBAL",DYROM_TIMER)~
== ~%BRANWEN_BANTER%~ @249 
== ~%DYNAHEIR_BANTER%~ @250
== ~%DYNAHEIR_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @251
== ~%BRANWEN_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN @252
== ~%DYNAHEIR_BANTER%~ @253
== ~%BRANWEN_BANTER%~ @254
== ~%DYNAHEIR_BANTER%~ @255
== ~%BRANWEN_BANTER%~ @256
== ~%DYNAHEIR_BANTER%~ @257
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYBRConflict","GLOBAL",4)~ THEN ~%BRANWEN_BANTER%~ DYBRConflict2
@258
DO ~SetGlobal("X#DYBRConflict","GLOBAL",5) RealSetGlobalTimer("X#DYBRConflictTime","GLOBAL",DYROM_TIMER)~
== ~%DYNAHEIR_BANTER%~ @259
== ~%BRANWEN_BANTER%~ @260
== ~%DYNAHEIR_BANTER%~ @261
== ~%BRANWEN_BANTER%~ @262
== ~%DYNAHEIR_BANTER%~ @263
== ~%BRANWEN_BANTER%~ @264
== ~%DYNAHEIR_BANTER%~ @265
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYBRConflict","GLOBAL",6)~ THEN ~%BRANWEN_BANTER%~ DYBRConflict3
@266
= @267
DO ~SetGlobal("X#DYBRConflict","GLOBAL",7) RealSetGlobalTimer("X#DYBRConflictTime","GLOBAL",DYROM_TIMER)~
== ~%DYNAHEIR_BANTER%~ @268
== ~%BRANWEN_BANTER%~ @269
== ~%DYNAHEIR_BANTER%~ @270
== ~%BRANWEN_BANTER%~ @271
== ~%DYNAHEIR_BANTER%~ @272
== ~%BRANWEN_BANTER%~ @273
== ~%DYNAHEIR_BANTER%~ @274
== ~%BRANWEN_BANTER%~ @275
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYBRConflict","GLOBAL",8)~ THEN ~%DYNAHEIR_BANTER%~ DYBRConflict4
@276
DO ~SetGlobal("X#DYBRConflict","GLOBAL",9) RealSetGlobalTimer("X#DYBRConflictTime","GLOBAL",DYROM_TIMER)~
== ~%BRANWEN_BANTER%~ @277
== ~%DYNAHEIR_BANTER%~ @278
== ~%BRANWEN_BANTER%~ @279
== ~%DYNAHEIR_BANTER%~ @280
== ~%BRANWEN_BANTER%~ @281
== ~%DYNAHEIR_BANTER%~ @282
== ~%BRANWEN_BANTER%~ @283
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYBRConflict","GLOBAL",10)~ THEN ~%BRANWEN_BANTER%~ DYBRConflict5
@284
DO ~SetGlobal("X#DYBRConflict","GLOBAL",11) RealSetGlobalTimer("X#DYBRConflictTime","GLOBAL",DYROM_TIMER)~
== ~%DYNAHEIR_BANTER%~ @285
== ~%BRANWEN_BANTER%~ @286
== ~%DYNAHEIR_BANTER%~ @287
== ~%BRANWEN_BANTER%~ @288
== ~%DYNAHEIR_BANTER%~ @289
== ~%BRANWEN_BANTER%~ @290
== ~%DYNAHEIR_BANTER%~ @291
= @292
== ~%BRANWEN_BANTER%~ @293
DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)
SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYBRConflict","GLOBAL",12)~ THEN ~%DYNAHEIR_BANTER%~ DYBRConflict6
@294
DO ~SetGlobal("X#DYBRConflict","GLOBAL",13)~
== ~%BRANWEN_BANTER%~ @295
== ~%DYNAHEIR_BANTER%~ @296
== ~%BRANWEN_BANTER%~ @297
== ~%DYNAHEIR_BANTER%~ @298
END
++ @299 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
++ @300 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) SetGlobal("P#BranwenRomanceActive","GLOBAL",1)~ EXIT
++ @301 DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",0) SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT

APPEND ~%CORAN_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYCORE","GLOBAL",1)~ THEN BEGIN DYCORE
SAY @302
++ @303 DO ~SetGlobal("X#DYCORE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + CODYRO1.1
++ @304 DO ~SetGlobal("X#DYCORE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + CODYRO1.2
++ @305 DO ~SetGlobal("X#DYCORE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + CODYRO1.3
END

IF ~~ CODYRO1.1
SAY @306
++ @307 + CODYRO1.2
++ @305 + CODYRO1.3
END

IF ~~ CODYRO1.2
SAY @308
++ @309 + CODYRO1.3
++ @310 + CODYRO1.4
END

IF ~~ CODYRO1.3
SAY @311
IF ~~ THEN EXIT
END

IF ~~ CODYRO1.4
SAY @312 
IF ~~ THEN EXIT
END
END

/* Big Fat Edwin Conflict */

CHAIN IF ~%BGT_VAR% Global("X#EDRDY1","LOCALS",0) GlobalGT("X#DYLoveTalk","GLOBAL",2) CombatCounter(0) !See([ENEMY]) InParty("dynaheir") See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ THEN ~%EDWIN_BANTER%~ EDDYRO1
@313 
DO ~SetGlobal("X#EDRDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @314
== ~%EDWIN_BANTER%~ @315
== ~%DYNAHEIR_BANTER%~ @316
== ~%EDWIN_BANTER%~ @317
EXIT

APPEND ~%EDWIN_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYEDRE","GLOBAL",1)~ THEN BEGIN DYEDRE1
SAY @318 
++ @319 DO ~SetGlobal("X#DYEDRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYEDRORE1.1
++ @320 DO ~SetGlobal("X#DYEDRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYEDRORE1.2
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @321 DO ~SetGlobal("X#DYEDRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYEDRORE1.2
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @322 DO ~SetGlobal("X#DYEDRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYEDRORE1.2
++ @323 DO ~SetGlobal("X#DYEDRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYEDRORE1.3
++ @324 DO ~SetGlobal("X#DYEDRE","GLOBAL",2) RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER)~ + DYEDRORE1.4
END

IF ~~ DYEDRORE1.1
SAY @325
++ @320 + DYEDRORE1.2
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @321 + DYEDRORE1.2
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @322 + DYEDRORE1.2
++ @323 + DYEDRORE1.3
++ @324 + DYEDRORE1.4
END

IF ~~ DYEDRORE1.2
SAY @326
IF ~~ THEN EXIT
END

IF ~~ DYEDRORE1.3
SAY @327
IF ~~ THEN EXIT
END

IF ~~ DYEDRORE1.4
SAY @328
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYEDRE","GLOBAL",3)~ THEN BEGIN DYEDRE2
SAY @329
= @330 
IF ~~ THEN DO ~SetGlobal("X#DYEDRE","GLOBAL",4)  RealSetGlobalTimer("X#DYReactionTime","GLOBAL",DYROM_TIMER) SetGlobal("X#EdwinBlushing","GLOBAL",1)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinBlushing","GLOBAL",2)~ THEN BEGIN EdwinConcubines
SAY @331
++ @332 DO ~SetGlobal("X#EdwinBlushing","GLOBAL",3)~ EXIT
++ @333 + DYEDRORE2.1
++ @334 DO ~SetGlobal("X#EdwinBlushing","GLOBAL",4)~ EXIT
END

IF ~~ DYEDRORE2.1
SAY @335
IF ~~ THEN DO ~SetGlobal("X#EdwinBlushing","GLOBAL",3)~ EXIT
END

END

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinBlushing","GLOBAL",6)~ THEN X#NELL NellGreetsEdwin
@336
= @337
= @338
= @339
== X#MADR @340
== X#NELL @341
== X#BHET @342
== X#NELL @343
== X#SVEET @344
== X#NELL @345
END
IF ~~ THEN REPLY @346 DO ~SetGlobal("X#EdwinBlushing","GLOBAL",7)~ EXIT
IF ~~ THEN REPLY @347 DO ~SetGlobal("X#EdwinBlushing","GLOBAL",8) SetGlobal("X#EdwinMadrina","GLOBAL",1)~ EXIT
IF ~~ THEN REPLY @348 DO ~SetGlobal("X#EdwinBlushing","GLOBAL",8) SetGlobal("X#EdwinBhetel","GLOBAL",1)~ EXIT
IF ~~ THEN REPLY @349 DO ~SetGlobal("X#EdwinBlushing","GLOBAL",8) SetGlobal("X#EdwinSveetla","GLOBAL",1)~ EXIT


CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinMadrina","GLOBAL",3)~ THEN X#MADR MadrinaDynaheir
@350
END
IF ~~ THEN DO ~SetGlobal("X#EdwinMadrina","GLOBAL",4) CreateCreature("X#DFAKE1",[2279.1399],12)~ GOTO Madrina1

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinBhetel","GLOBAL",3)~ THEN X#BHET BhetelDynaheir
@351
END
IF ~~ THEN DO ~SetGlobal("X#EdwinBhetel","GLOBAL",4) CreateCreature("X#DFAKE1",[2279.1399],12)~ GOTO Bhetel1

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinSveetla","GLOBAL",3)~ THEN X#SVEET SveetlaDynaheir
@352
END
IF ~~ THEN DO ~SetGlobal("X#EdwinBhetel","GLOBAL",4) CreateCreature("X#DFAKE1",[2279.1399],12)~ GOTO Sveetla1

CHAIN ~X#MADR~ Madrina1
@353
== X#DYNA @354
= @355
END
++ @356 EXTERN ~X#DYNA~ DYEDRORE4.1
++ @357 EXTERN ~X#DYNA~ DYEDRORE4.2
++ @358 EXTERN ~X#DYNA~ DYEDRORE4.3
++ @359 EXTERN ~X#DYNA~ DYEDRORE4.4
++ @360 EXTERN ~X#MADR~ MadrinaChain

CHAIN ~X#BHET~ Bhetel1
@361
== ~X#DYNA~ @354
= @355
END
++ @356 EXTERN ~X#DYNA~ DYEDRORE4.1
++ @357 EXTERN ~X#DYNA~ DYEDRORE4.2
++ @358 EXTERN ~X#DYNA~ DYEDRORE4.3
++ @359 EXTERN ~X#DYNA~ DYEDRORE4.4
++ @362 EXTERN ~X#BHET~ BhetelChain

CHAIN ~X#SVEET~ Sveetla1
@363
== ~X#DYNA~ @354
= @355
END
++ @356 EXTERN ~X#DYNA~ DYEDRORE4.1
++ @357 EXTERN ~X#DYNA~ DYEDRORE4.2
++ @358 EXTERN ~X#DYNA~ DYEDRORE4.3
++ @359 EXTERN ~X#DYNA~ DYEDRORE4.4
++ @362 EXTERN ~X#SVEET~ SveetlaChain

BEGIN ~X#DYNA~

APPEND ~X#DYNA~

IF ~~ DYEDRORE4.1
SAY @364
IF ~~ THEN DO ~ActionOverride("dynacutscene",EscapeArea()) SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) ActionOverride(Player1,LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("edwin",LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("edwin",LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) 
ActionOverride("X#MADR",DestroySelf())
ActionOverride("X#BHET",DestroySelf())
ActionOverride("X#SVEET",DestroySelf())~ EXIT
END

IF ~~ DYEDRORE4.2
SAY @365
IF ~~ THEN DO ~ActionOverride("dynacutscene",EscapeArea()) SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) ActionOverride(Player1,LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("edwin",LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("dynacutscene",DestroySelf())
ActionOverride("X#MADR",DestroySelf())
ActionOverride("X#BHET",DestroySelf())
ActionOverride("X#SVEET",DestroySelf())~ EXIT
END

IF ~~ DYEDRORE4.3
SAY @366
IF ~~ THEN DO ~ActionOverride("dynacutscene",EscapeArea()) SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) ActionOverride(Player1,LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("edwin",LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("dynacutscene",DestroySelf())
ActionOverride("X#MADR",DestroySelf())
ActionOverride("X#BHET",DestroySelf())
ActionOverride("X#SVEET",DestroySelf())~ EXIT
END

IF ~~ DYEDRORE4.4
SAY @367
IF ~~ THEN DO ~ActionOverride("dynacutscene",EscapeArea()) SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) ActionOverride(Player1,LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("edwin",LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("dynacutscene",DestroySelf())
ActionOverride("X#MADR",DestroySelf())
ActionOverride("X#BHET",DestroySelf())
ActionOverride("X#SVEET",DestroySelf())~ EXIT
END

END

CHAIN ~X#MADR~ MadrinaChain
@368
== ~X#DYNA~ @366
END
IF ~~ THEN DO ~ActionOverride("dynacutscene",EscapeArea()) SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) ActionOverride(Player1,LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("edwin",LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("dynacutscene",DestroySelf())
ActionOverride("X#MADR",DestroySelf())
ActionOverride("X#BHET",DestroySelf())
ActionOverride("X#SVEET",DestroySelf())~ EXIT


CHAIN ~X#BHET~ BhetelChain
@369 
== ~X#DYNA~ @366
END
IF ~~ THEN DO ~ActionOverride("dynacutscene",EscapeArea()) SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) ActionOverride(Player1,LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("edwin",LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("dynacutscene",DestroySelf())
ActionOverride("X#MADR",DestroySelf())
ActionOverride("X#BHET",DestroySelf())
ActionOverride("X#SVEET",DestroySelf())~ EXIT


CHAIN ~X#SVEET~ SveetlaChain
@370 
== ~X#DYNA~ @366
END
IF ~~ THEN DO ~ActionOverride("dynacutscene",EscapeArea()) SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) ActionOverride(Player1,LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("edwin",LeaveAreaLUA("%NEBaldursGate_BlushingMermaid_L1%","",[734.619],14)) ActionOverride("dynacutscene",DestroySelf())
ActionOverride("X#MADR",DestroySelf())
ActionOverride("X#BHET",DestroySelf())
ActionOverride("X#SVEET",DestroySelf())~ EXIT

