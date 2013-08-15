/* CONTENTS */
/* Burying Gorion */
/* PC Friend Talk - needs Khalid */
/* Bhaal talk */
/* Unscripted NPC Banters */

APPEND ~%JAHEIRA_JOINED%~

/* Burying Gorion */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraGorBuryTalk","GLOBAL",1)~ THEN BEGIN JAPC1
SAY @0
IF ~~ THEN REPLY @1 DO ~SetGlobal("X#JaheiraGorBuryTalk","GLOBAL",2)~ GOTO JAPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("X#JaheiraGorBuryTalk","GLOBAL",2)~ GOTO JAPC1.2
IF ~~ THEN REPLY @3 DO ~SetGlobal("X#JaheiraGorBuryTalk","GLOBAL",2)~ GOTO JAPC1.3
END

IF ~~ THEN BEGIN JAPC1.1
SAY @4
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN JAPC1.2
SAY @5
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN JAPC1.3
SAY @6
IF ~~ THEN EXIT
END

/* PC Friend Talk - needs Khalid */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaFriendTalk","GLOBAL",3)~ THEN BEGIN JAPC2
SAY @7
IF ~~ THEN REPLY @8 DO ~SetGlobal("X#JaFriendTalk","GLOBAL",4)~ GOTO JAPC2.1
IF ~~ THEN REPLY @9 DO ~SetGlobal("X#JaFriendTalk","GLOBAL",4)~ GOTO JAPC2.2
IF ~~ THEN REPLY @10 DO ~SetGlobal("X#JaFriendTalk","GLOBAL",4)~ GOTO JAPC2.3
END

IF ~~ THEN BEGIN JAPC2.1
SAY @11
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN JAPC2.2
SAY @12
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN JAPC2.3
SAY @13
IF ~~ THEN REPLY @14 GOTO JAPC2.4
IF ~~ THEN REPLY @15 GOTO JAPC2.4
IF ~~ THEN REPLY @16 GOTO JAPC2.2
END

IF ~~ THEN BEGIN JAPC2.4
SAY @17
IF ~~ THEN REPLY @18 GOTO JAPC2.5
IF ~~ THEN REPLY @19 GOTO JAPC2.2
END

IF ~~ THEN BEGIN JAPC2.5
SAY @20
IF ~~ THEN EXTERN ~%KHALID_BANTER%~ JAPC2KHALID
END

/* Bhaal talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaFriendTalk","GLOBAL",5)~ THEN BEGIN JAPC3
SAY @21
++ @22 DO ~SetGlobal("X#JaFriendTalk","GLOBAL",6)~ + JAPC3.1
++ @23 DO ~SetGlobal("X#JaFriendTalk","GLOBAL",6)~ + JAPC3.2
++ @24 DO ~SetGlobal("X#JaFriendTalk","GLOBAL",6)~ + JAPC3.3
END

IF ~~ JAPC3.1
SAY @25
IF ~ReputationGT(Player1,10)~ THEN GOTO JAPC3.1.1HI
IF ~!ReputationGT(Player1,10)~ THEN GOTO JAPC3.1.1LO
END

IF ~~ JAPC3.1.1LO
SAY @26
= @27
++ @28 EXIT
++ @29 + JAPC3.4
++ @30 + JAPC3.5
END

IF ~~ JAPC3.1.1HI
SAY @31
= @32
++ @28 EXIT
++ @29 + JAPC3.4
END

IF ~~ JAPC3.2
SAY @33
IF ~~ THEN EXIT
END

IF ~~ JAPC3.3
SAY @34
++ @35 + JAPC3.1
++ @36 + JAPC3.6
END

IF ~~ JAPC3.4
SAY @37
++ @38 EXIT
++ @39 + JAPC3.7
END

IF ~~ JAPC3.5
SAY @40
IF ~~ THEN EXIT
END

IF ~~ JAPC3.6
SAY @41
++ @42 + JAPC3.4
+ ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ + @43 + JAPC3.8KH
+ ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ + @43 + JAPC3.8NKH
END

IF ~~ JAPC3.7
SAY @44
IF ~ReputationGT(Player1,10) InParty("khalid")~ THEN GOTO JAPC3.7.1KH1
IF ~ReputationGT(Player1,10) !InParty("khalid")~ THEN GOTO JAPC3.7.1
IF ~!ReputationGT(Player1,10) !InParty("khalid")~ THEN GOTO JAPC3.7.2
IF ~!ReputationGT(Player1,10) InParty("khalid")~ THEN GOTO JAPC3.7.2KH1
END

IF ~~ JAPC3.7.2KH1
SAY @45
IF ~~ THEN EXTERN ~%KHALID_BANTER%~ JAPC3.7.2KH
END

IF ~~ JAPC3.7.2
SAY @46
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ JAPC3.7.1KH1
SAY @47
IF ~~ THEN EXTERN ~%KHALID_BANTER%~ JAPC3.7.1KH
END

IF ~~ JAPC3.7.1
SAY @48
= @49
++ @50 + JAPC3.9
++ @51 + JAPC3.10
END

IF ~~ JAPC3.8NKH
SAY @52
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ JAPC3.8KH
SAY @52
= @53
IF ~~ THEN EXTERN ~%KHALID_BANTER%~ JAPC3.8.1KH
END

IF ~~ JAPC3.9
SAY @54
IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN EXTERN ~%KHALID_BANTER%~ JAPC3.9.1KH
IF ~OR(3) !InParty("khalid") !InMyArea("khalid") StateCheck("khalid",CD_STATE_NOTVALID)~ THEN EXIT
END

IF ~~ JAPC3.10
SAY @55
IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN EXTERN ~%KHALID_BANTER%~ JAPC3.10.1KH
IF ~OR(3) !InParty("khalid") !InMyArea("khalid") StateCheck("khalid",CD_STATE_NOTVALID)~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

END

APPEND ~%KHALID_BANTER%~

IF ~~ JAPC3.7.1KH
SAY @56
++ @57 EXTERN ~%JAHEIRA_JOINED%~ JAPC3.9
++ @51 EXTERN ~%JAHEIRA_JOINED%~ JAPC3.10
END

IF ~~ JAPC3.9.1KH
SAY @58
IF ~~ THEN EXIT
END

IF ~~ JAPC3.10.1KH
SAY @59
IF ~~ THEN DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeArea() ActionOverride("jaheira", LeaveParty()) ActionOverride("jaheira",EscapeArea())~
EXIT
END

END

CHAIN3 ~%KHALID_BANTER%~ JAPC3.7.2KH
@60
== ~%JAHEIRA_BANTER%~ @61
DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeArea() ActionOverride("khalid",LeaveParty()) ActionOverride("khalid",SetLeavePartyDialogFile()) ActionOverride("khalid",ChangeAIScript("",DEFAULT)) ActionOverride("khalid",EscapeArea())~
EXIT

CHAIN3 ~%KHALID_BANTER%~ JAPC3.8.1KH
@62
DO ~ChangeAIScript("",DEFAULT) SetLeavePartyDialogFile() LeaveParty() EscapeArea()  ActionOverride("jaheira",SetLeavePartyDialogFile()) ActionOverride("jaheira",ChangeAIScript("",DEFAULT)) ActionOverride("jaheira",LeaveParty()) ActionOverride("jaheira",EscapeArea())~
EXIT

CHAIN3 ~%KHALID_BANTER%~ JAPC2KHALID
@63
EXIT

/* Unscripted NPC Banters */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) ReputationGT("ajantis",12) InParty("ajantis") Global("X#JAAJ1","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAAJ1
@64
DO ~SetGlobal("X#JAAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @65
== ~%JAHEIRA_BANTER%~ IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @66
== ~%AJANTIS_BANTER%~ IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @67
== ~%AJANTIS_BANTER%~ IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @278
== ~%JAHEIRA_BANTER%~ @68
== ~%AJANTIS_BANTER%~ @69
== ~%JAHEIRA_BANTER%~ IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @70
== ~%AJANTIS_BANTER%~ IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN @71
== ~%JAHEIRA_BANTER%~ @72
== ~%AJANTIS_BANTER%~ IF ~InParty("khalid") !Dead("khalid")~ THEN @73
== ~%JAHEIRA_BANTER%~ IF ~InParty("khalid") !Dead("khalid")~ THEN @74
== ~%AJANTIS_BANTER%~ IF ~OR(2) !InParty("khalid") Dead("khalid")~ THEN @279
== ~%JAHEIRA_BANTER%~ IF ~OR(2) !InParty("khalid") Dead("khalid")~ THEN @280
== ~%AJANTIS_BANTER%~ @75
EXIT


CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0)InParty("coran") InParty("khalid") Global("X#JACO1","LOCALS",0) !See([ENEMY]) See("coran") See("khalid") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JACO1
@76
DO ~SetGlobal("X#JACO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @77
== ~%JAHEIRA_BANTER%~ @78
== ~%CORAN_BANTER%~ @79
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("coran") InParty("khalid") Global("X#JACO2","LOCALS",0) !See([ENEMY]) See("coran") See("khalid") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JACO2
@80
DO ~SetGlobal("X#JACO2","LOCALS",1)~
== ~%CORAN_BANTER%~ @81
== ~%JAHEIRA_BANTER%~ @82
== ~%CORAN_BANTER%~ @83
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") InParty("khalid") InParty("minsc") Global("X#JADY1","LOCALS",0) !See([ENEMY]) See("dynaheir") See("khalid") See("minsc") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JADY1
@84
DO ~SetGlobal("X#JADY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @85
== ~%JAHEIRA_BANTER%~ @86
== ~%DYNAHEIR_BANTER%~ @87
== ~%JAHEIRA_BANTER%~ @88
== ~%DYNAHEIR_BANTER%~ @89
== ~%JAHEIRA_BANTER%~ @90
== ~%DYNAHEIR_BANTER%~ @91
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("edwin") InParty("dynaheir") InParty("minsc") Global("X#JAED1","LOCALS",0) !See([ENEMY]) See("edwin") See("dynaheir") See("minsc") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAED1
@92
DO ~SetGlobal("X#JAED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @93
== ~%JAHEIRA_BANTER%~ @94
== ~%EDWIN_BANTER%~ @95
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#JAIM2","GLOBAL",1) InParty("edwin") InParty("%IMOEN_DV%") InParty("khalid") Global("X#JAED2","LOCALS",0) !See([ENEMY]) See("edwin") See("%IMOEN_DV%") See("khalid") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAED2
@96
DO ~SetGlobal("X#JAED2","LOCALS",1)~
== ~%EDWIN_BANTER%~ @97
== ~%JAHEIRA_BANTER%~ @98
== ~%EDWIN_BANTER%~ @99
== ~%JAHEIRA_BANTER%~ @100
== ~%EDWIN_BANTER%~ @101
== ~%JAHEIRA_BANTER%~ @102
== ~%EDWIN_BANTER%~ @103
== ~%JAHEIRA_BANTER%~ @104
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) !AreaCheck("%Beregost%") InParty("garrick") Global("X#JAGA1","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAGA1
@105
DO ~SetGlobal("X#JAGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @106
== ~%JAHEIRA_BANTER%~ @107
== ~%GARRICK_BANTER%~ @108
== ~%JAHEIRA_BANTER%~ @109
== ~%GARRICK_BANTER%~ @110
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") InParty("khalid") Global("X#JAIM1","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") See("khalid") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAIM1
@111
DO ~SetGlobal("X#JAIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @112
== ~%JAHEIRA_BANTER%~ @113
== ~%IMOEN_BANTER%~ @114
== ~%JAHEIRA_BANTER%~ @115
== ~%IMOEN_BANTER%~ @116
== ~%JAHEIRA_BANTER%~ @117
== ~%IMOEN_BANTER%~ @118
== ~%JAHEIRA_BANTER%~ @119
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") InParty("khalid") Global("X#JAIM2","GLOBAL",0) !See([ENEMY]) See("%IMOEN_DV%") See("khalid") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAIM2
@120
DO ~SetGlobal("X#JAIM2","GLOBAL",1)~
== ~%IMOEN_BANTER%~ @121
== ~%JAHEIRA_BANTER%~ @122
== ~%IMOEN_BANTER%~ @123
== ~%IMOEN_BANTER%~ @124
== ~%JAHEIRA_BANTER%~ @125
== ~%IMOEN_BANTER%~ @126
== ~%JAHEIRA_BANTER%~ @127
== ~%IMOEN_BANTER%~ @128
== ~%JAHEIRA_BANTER%~ @129
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("X#JAIM3","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAIM3
@130
DO ~SetGlobal("X#JAIM3","LOCALS",1)~
== ~%IMOEN_BANTER%~ @131
== ~%JAHEIRA_BANTER%~ @132
== ~%IMOEN_BANTER%~ @133
== ~%JAHEIRA_BANTER%~ @134
== ~%IMOEN_BANTER%~ @135
== ~%JAHEIRA_BANTER%~ @136
== ~%IMOEN_BANTER%~ @137
== ~%JAHEIRA_BANTER%~ @138
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kagain") Global("X#JAKA1","LOCALS",0) !See([ENEMY]) See("kagain") !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAKA1
@139
DO ~SetGlobal("X#JAKA1","LOCALS",1)~
== ~%KAGAIN_BANTER%~ @140
== ~%JAHEIRA_BANTER%~ @141
== ~%KAGAIN_BANTER%~ @142
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#JAKH1","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAKH1
@143
DO ~SetGlobal("X#JAKH1","LOCALS",1)~
== ~%KHALID_BANTER%~ @144
== ~%JAHEIRA_BANTER%~ @145
== ~%KHALID_BANTER%~ @146
== ~%JAHEIRA_BANTER%~ @147
== ~%KHALID_BANTER%~ @148
== ~%JAHEIRA_BANTER%~ @149
== ~%KHALID_BANTER%~ @150
== ~%JAHEIRA_BANTER%~ @151
== ~%KHALID_BANTER%~ @152
== ~%JAHEIRA_BANTER%~ @153
== ~%KHALID_BANTER%~ @154
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#JAKH2","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAKH2
@155
DO ~SetGlobal("X#JAKH2","LOCALS",1)~
== ~%KHALID_BANTER%~ @156
== ~%JAHEIRA_BANTER%~ @157
== ~%KHALID_BANTER%~ @158
== ~%JAHEIRA_BANTER%~ @159
== ~%JAHEIRA_BANTER%~ @160
== ~%KHALID_BANTER%~ @161
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#JAKH3","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAKH3
@162
DO ~SetGlobal("X#JAKH3","LOCALS",1)~
== ~%KHALID_BANTER%~ @163
== ~%JAHEIRA_BANTER%~ @164
== ~%KHALID_BANTER%~ @165
== ~%JAHEIRA_BANTER%~ @166
== ~%KHALID_BANTER%~ @167
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") Global("X#JAKH4","LOCALS",0) !See([ENEMY]) See("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAKH4
@168
DO ~SetGlobal("X#JAKH4","LOCALS",1)~
== ~%KHALID_BANTER%~ @169
== ~%JAHEIRA_BANTER%~ @170
== ~%KHALID_BANTER%~ @171
== ~%JAHEIRA_BANTER%~ @172
== ~%KHALID_BANTER%~ @173
== ~%JAHEIRA_BANTER%~ @174
== ~%KHALID_BANTER%~ @175
== ~%JAHEIRA_BANTER%~ @176
== ~%KHALID_BANTER%~ @177
== ~%JAHEIRA_BANTER%~ @178
== ~%KHALID_BANTER%~ @179
== ~%KHALID_BANTER%~ @180
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") InParty("khalid") Global("X#JAKI1","LOCALS",0) !See([ENEMY]) See("kivan") See("khalid") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAKI1
@181
DO ~SetGlobal("X#JAKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @182
== ~%JAHEIRA_BANTER%~ @183
== ~%KIVAN_BANTER%~ @184
== ~%JAHEIRA_BANTER%~ @185
== ~%KIVAN_BANTER%~ @186
== ~%JAHEIRA_BANTER%~ @187
== ~%JAHEIRA_BANTER%~ @188
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#JAMI1","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAMI1
@189
DO ~SetGlobal("X#JAMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @190
== ~%JAHEIRA_BANTER%~ @191
== ~%MINSC_BANTER%~ @192
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("X#JAMI2","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAMI2
@193
DO ~SetGlobal("X#JAMI2","LOCALS",1)~
== ~%MINSC_BANTER%~ @194
== ~%JAHEIRA_BANTER%~ @195
== ~%MINSC_BANTER%~ @196
== ~%JAHEIRA_BANTER%~ @197
== ~%MINSC_BANTER%~ @198
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") InParty("montaron") Global("X#JAMO1","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAMO1
@199
DO ~SetGlobal("X#JAMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @200
== ~%JAHEIRA_BANTER%~ @201
== ~%MONTARON_BANTER%~ @202
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("sharteel") Global("X#JASH1","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JASH1
@203
DO ~SetGlobal("X#JASH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @204
== ~%JAHEIRA_BANTER%~ @205
== ~%SHARTEEL_BANTER%~ @206
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(CITY) InParty("tiax") Global("X#JATI1","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JATI1
@207
DO ~SetGlobal("X#JATI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @208
== ~%JAHEIRA_BANTER%~ @209
== ~%TIAX_BANTER%~ @210
== ~%JAHEIRA_BANTER%~ @211
== ~%TIAX_BANTER%~ @212
== ~%JAHEIRA_BANTER%~ @213
== ~%TIAX_BANTER%~ @214
== ~%TIAX_BANTER%~ @215
== ~%JAHEIRA_BANTER%~ @216
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("X#JAVI1","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAVI1
@217
DO ~SetGlobal("X#JAVI1","LOCALS",1)~

== ~%VICONIA_BANTER%~ @218
== ~%JAHEIRA_BANTER%~ @219
== ~%VICONIA_BANTER%~ @220
== ~%VICONIA_BANTER%~ @221
== ~%JAHEIRA_BANTER%~ @222
== ~%VICONIA_BANTER%~ @223
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("X#JAVI2","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAVI2
@224
DO ~SetGlobal("X#JAVI2","LOCALS",1)~
== ~%VICONIA_BANTER%~ @225
== ~%JAHEIRA_BANTER%~ @226
== ~%VICONIA_BANTER%~ @227
== ~%JAHEIRA_BANTER%~ @228
== ~%VICONIA_BANTER%~ @229
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("viconia") Global("X#JAVI3","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAVI3
@230
DO ~SetGlobal("X#JAVI3","LOCALS",1)~
== ~%VICONIA_BANTER%~ @231
== ~%JAHEIRA_BANTER%~ @232
== ~%JAHEIRA_BANTER%~ @233
== ~%VICONIA_BANTER%~ @234
== ~%JAHEIRA_BANTER%~ @235
== ~%VICONIA_BANTER%~ @236
== ~%VICONIA_BANTER%~ @237
== ~%JAHEIRA_BANTER%~ @238
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("xan") Global("X#JAXA1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAXA1
@239
DO ~SetGlobal("X#JAXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @240
== ~%JAHEIRA_BANTER%~ @241
== ~%XAN_BANTER%~ @242
== ~%JAHEIRA_BANTER%~ @243
== ~%XAN_BANTER%~ @244
== ~%XAN_BANTER%~ @245
== ~%XAN_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @246
== ~%XAN_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @247
== ~%XAN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @248
== ~%XAN_BANTER%~ @249
== ~%JAHEIRA_BANTER%~ @250
== ~%XAN_BANTER%~ @251
== ~%JAHEIRA_BANTER%~ @252
== ~%XAN_BANTER%~ @253
== ~%JAHEIRA_BANTER%~ @254
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Global("X#JAXZ1","LOCALS",0) InParty("xzar") !See([ENEMY]) See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAXZ1
@255
DO ~SetGlobal("X#JAXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @256
== ~%JAHEIRA_BANTER%~ @257
== ~%XZAR_BANTER%~ @258
== ~%JAHEIRA_BANTER%~ @259
== ~%XZAR_BANTER%~ @260
== ~%JAHEIRA_BANTER%~ @261
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("yeslick") Global("X#JAYE1","LOCALS",0) !See([ENEMY]) See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAYE1
@262
DO ~SetGlobal("X#JAYE1","LOCALS",1)~
== ~%YESLICK_BANTER%~ @263
== ~%JAHEIRA_BANTER%~ @264
== ~%YESLICK_BANTER%~ @265
== ~%JAHEIRA_BANTER%~ @266
== ~%YESLICK_BANTER%~ @267
== ~%JAHEIRA_BANTER%~ @268
== ~%YESLICK_BANTER%~ @269
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("yeslick") InParty("khalid") Global("X#JAYE2","LOCALS",0) !See([ENEMY]) See("yeslick") See("khalid") !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JAYE2
@270
DO ~SetGlobal("X#JAYE2","LOCALS",1)~
== ~%YESLICK_BANTER%~ @271
== ~%JAHEIRA_BANTER%~ @272
== ~%YESLICK_BANTER%~ @273
== ~%KHALID_BANTER%~ @274
== ~%YESLICK_BANTER%~ @275
== ~%JAHEIRA_BANTER%~ @276
== ~%YESLICK_BANTER%~ @277
EXIT
