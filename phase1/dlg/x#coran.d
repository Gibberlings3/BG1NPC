/* CONTENTS */
/* Wyvern head */
/* Friend talk 1 */
/* Friend talk 2 */
/* Friend talk 3 */
/* Friend talk 4 - men only */



APPEND ~%CORAN_JOINED%~

/* Wyvern head */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CoPC1","GLOBAL",1)~ THEN BEGIN COPC1
SAY @0 
IF ~~ THEN REPLY @1 DO ~SetGlobal("P#CoPC1","GLOBAL",2) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC1.1
IF ~~ THEN REPLY @2 DO ~SetGlobal("P#CoPC1","GLOBAL",2) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC1.2
IF ~~ THEN REPLY @3 DO ~SetGlobal("P#CoPC1","GLOBAL",2) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC1.3
END

IF ~~ THEN BEGIN COPC1.1
SAY @4
IF ~Gender(Player1,FEMALE)~ THEN REPLY @5 GOTO COPC1.4FEMALE
IF ~Gender(Player1,MALE)~ THEN REPLY @5 GOTO COPC1.4MALE
IF ~~ THEN REPLY @6 GOTO COPC1.3
IF ~~ THEN REPLY @7 GOTO COPC1.2
END

IF ~~ THEN BEGIN COPC1.2
SAY @8
IF ~~ THEN REPLY @9 GOTO COPC1.5
IF ~~ THEN REPLY @10 GOTO COPC1.6
IF ~~ THEN REPLY @11 GOTO COPC1.6
END


IF ~~ THEN BEGIN COPC1.5
SAY @12
IF ~~ THEN REPLY @13 GOTO COPC1.6
IF ~~ THEN REPLY @14 GOTO COPC1.7
IF ~~ THEN REPLY @11 GOTO COPC1.6
END

IF ~~ THEN BEGIN COPC1.6
SAY @15
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC1.7
SAY @16 
IF ~~ THEN DO ~ActionOverride("coran",SetLeavePartyDialogFile()) ActionOverride("coran",ChangeAIScript("",DEFAULT)) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN COPC1.3
SAY @17
IF ~~ THEN REPLY @18 GOTO COPC1.8
IF ~~ THEN REPLY @19 GOTO COPC1.2
END

IF ~~ THEN BEGIN COPC1.4FEMALE
SAY @20
IF ~~ THEN REPLY @21 GOTO COPC1.9
IF ~~ THEN REPLY @22 GOTO COPC1.10
IF ~~ THEN REPLY @23 GOTO COPC1.11
IF ~~ THEN REPLY @24 GOTO COPC1.12
END

IF ~~ THEN BEGIN COPC1.9
SAY @25
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC1.10
SAY @26
= @27
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC1.11
SAY @28
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC1.12
SAY @29
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC1.4MALE
SAY @30
IF ~~ THEN REPLY @21 GOTO COPC1.9
IF ~~ THEN REPLY @22 GOTO COPC1.13
IF ~~ THEN REPLY @31 GOTO COPC1.14
IF ~~ THEN REPLY @32 GOTO COPC1.12
END

IF ~~ THEN BEGIN COPC1.13
SAY @33
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC1.14
SAY @34
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC1.8
SAY @4
IF ~Gender(Player1,FEMALE)~ THEN REPLY @5 GOTO COPC1.4FEMALE
IF ~Gender(Player1,MALE)~ THEN REPLY @5 GOTO COPC1.4MALE
IF ~~ THEN REPLY @35 GOTO COPC1.2
END

/* Friend talk 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CFriendTalk","GLOBAL",2)~ THEN BEGIN COPC2
SAY @36 
IF ~~ THEN REPLY @37 DO ~SetGlobal("P#CFriendTalk","GLOBAL",3) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC2.1
IF ~~ THEN REPLY @38 DO ~SetGlobal("P#CFriendTalk","GLOBAL",3) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC2.2
IF ~~ THEN REPLY @39 DO ~SetGlobal("P#CFriendTalk","GLOBAL",3) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC2.2
IF ~~ THEN REPLY @40 DO ~SetGlobal("P#CFriendTalk","GLOBAL",3) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC2.3
END

IF ~~ THEN BEGIN COPC2.1
SAY @41
IF ~~ THEN REPLY @42 GOTO COPC2.5
IF ~!Race(Player1,ELF)~ THEN REPLY @43 GOTO COPC2.4
IF ~~ THEN REPLY @38 GOTO COPC2.2
IF ~~ THEN REPLY @39 GOTO COPC2.2
END

IF ~~ THEN BEGIN COPC2.2
SAY @44
IF ~~ THEN REPLY @45 GOTO COPC2.6
IF ~~ THEN REPLY @46 GOTO COPC2.7
IF ~~ THEN REPLY @47 GOTO COPC2.3
END

IF ~~ THEN BEGIN COPC2.3
SAY @48
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC2.4
SAY @49
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC2.5
SAY @50
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC2.6
SAY @51
IF ~~ THEN REPLY @52 GOTO COPC2.8
IF ~~ THEN REPLY @53 GOTO COPC2.9
IF ~~ THEN REPLY @47 GOTO COPC2.3
END

IF ~~ THEN BEGIN COPC2.7
SAY @54
IF ~~ THEN REPLY @55 GOTO COPC2.10
IF ~~ THEN REPLY @53 GOTO COPC2.9
END

IF ~~ THEN BEGIN COPC2.8
SAY @56
IF ~~ THEN REPLY @55 GOTO COPC2.10
IF ~~ THEN REPLY @53 GOTO COPC2.9
END

IF ~~ THEN BEGIN COPC2.9
SAY @57
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC2.10
SAY @58
IF ~~ THEN EXIT
END

/* Friend talk 2 */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CFriendTalk","GLOBAL",4)~ THEN BEGIN COPC6
SAY @59 
IF ~~ THEN REPLY @60 DO ~SetGlobal("P#CoPC6","LOCALS",1) SetGlobal("P#CFriendTalk","GLOBAL",5) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC6.1
IF ~Gender(Player1,MALE)~ THEN REPLY @61 DO ~SetGlobal("P#CoPC6","LOCALS",1) SetGlobal("P#CFriendTalk","GLOBAL",5) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC6.2MALE
IF ~Gender(Player1,FEMALE)~ THEN REPLY @61 DO ~SetGlobal("P#CoPC6","LOCALS",1) SetGlobal("P#CFriendTalk","GLOBAL",5) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC6.2FEMALE
IF ~Gender(Player1,MALE)~ THEN REPLY @62 DO ~SetGlobal("P#CoPC6","LOCALS",1) SetGlobal("P#CFriendTalk","GLOBAL",5) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC6.3MALE
IF ~Gender(Player1,FEMALE)~ THEN REPLY @62 DO ~SetGlobal("P#CoPC6","LOCALS",1) SetGlobal("P#CFriendTalk","GLOBAL",5) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC6.3FEMALE
END

IF ~~ THEN BEGIN COPC6.1
SAY @63
IF ~~ THEN REPLY @64 GOTO COPC6.4
IF ~~ THEN REPLY @65 GOTO COPC6.5
IF ~~ THEN REPLY @66 GOTO COPC6.6
END

IF ~~ THEN BEGIN COPC6.2MALE
SAY @67
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC6.2FEMALE
SAY @68
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC6.3MALE
SAY @69
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC6.3FEMALE
SAY @70
IF ~~ THEN REPLY @71 GOTO COPC6.7
IF ~~ THEN REPLY @72 GOTO COPC6.8
IF ~~ THEN REPLY @73 GOTO COPC6.2FEMALE
END

IF ~~ THEN BEGIN COPC6.4
SAY @74
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC6.5
SAY @75
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC6.6
SAY @76
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC6.7
SAY @77
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC6.8
SAY @78
IF ~~ THEN EXIT
END

/* Friend talk 3 */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CFriendTalk","GLOBAL",6)~ THEN BEGIN COPC7
SAY @79 
IF ~~ THEN REPLY @80 DO ~SetGlobal("P#CoranFriend","GLOBAL",1) SetGlobal("P#CFriendTalk","GLOBAL",7) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC7.1
IF ~~ THEN REPLY @81 DO ~SetGlobal("P#CoranFriend","GLOBAL",1) SetGlobal("P#CFriendTalk","GLOBAL",7) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC7.2
IF ~~ THEN REPLY @82 DO ~SetGlobal("P#CoranFriend","GLOBAL",1) SetGlobal("P#CFriendTalk","GLOBAL",7) RealSetGlobalTimer("P#CFriendTalkTime","GLOBAL",1800)~ GOTO COPC7.3
END

IF ~~ THEN BEGIN COPC7.1
SAY @83
= @84
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC7.2
SAY @85
IF ~~ THEN REPLY @86 GOTO COPC7.4
IF ~~ THEN REPLY @87 GOTO COPC7.1
IF ~~ THEN REPLY @88 GOTO COPC7.3
END

IF ~~ THEN BEGIN COPC7.3
SAY @89
IF ~~ THEN REPLY @90 GOTO COPC7.5
IF ~Global("P#KnowBhaal","GLOBAL",1)~ THEN REPLY @91 GOTO COPC7.6KNOWBHAAL
IF ~!Global("P#KnowBhaal","GLOBAL",1)~ THEN REPLY @92 GOTO COPC7.6NOT
IF ~Global("P#KnowBhaal","GLOBAL",1)~ THEN REPLY @93 GOTO COPC7.7KNOWBHAAL
IF ~!Global("P#KnowBhaal","GLOBAL",1)~ THEN REPLY @93 GOTO COPC7.7NOTKNOWBHAAL
END

IF ~~ THEN BEGIN COPC7.4
SAY @94
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC7.5
SAY @95
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC7.6KNOWBHAAL
SAY @96
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC7.6NOT
SAY @97
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC7.7KNOWBHAAL
SAY @98
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC7.7NOTKNOWBHAAL
SAY @99
IF ~~ THEN EXIT
END

/* Friend talk 4 - men only */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CFriendTalk","GLOBAL",8)~ THEN BEGIN COPC4
SAY @100 
IF ~~ THEN REPLY @101 DO ~SetGlobal("P#CFriendTalk","GLOBAL",9)~ GOTO COPC4.1
IF ~~ THEN REPLY @102 DO ~SetGlobal("P#CFriendTalk","GLOBAL",9)~ GOTO COPC4.2
IF ~~ THEN REPLY @103 DO ~SetGlobal("P#CFriendTalk","GLOBAL",9)~ GOTO COPC4.3
END

IF ~~ THEN BEGIN COPC4.1
SAY @104
IF ~~ THEN REPLY @105 GOTO COPC4.4
IF ~~ THEN REPLY @106 GOTO COPC4.4
END

IF ~~ THEN BEGIN COPC4.2
SAY @107
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC4.3
SAY @108
IF ~~ THEN REPLY @105 GOTO COPC4.4
IF ~~ THEN REPLY @106 GOTO COPC4.4
END

IF ~~ THEN BEGIN COPC4.4
SAY @109
IF ~~ THEN REPLY @110 GOTO COPC4.5
IF ~~ THEN REPLY @111 GOTO COPC4.6
IF ~~ THEN REPLY @112 GOTO COPC4.7
END

IF ~~ THEN BEGIN COPC4.5
SAY @113
IF ~~ THEN REPLY @114 GOTO COPC4.8
IF ~~ THEN REPLY @115 GOTO COPC4.9
IF ~~ THEN REPLY @116 GOTO COPC4.10
END

IF ~~ THEN BEGIN COPC4.7
SAY @117
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC4.8
SAY @118
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC4.9
SAY @119
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC4.6
SAY @120
IF ~~ THEN REPLY @121 GOTO COPC4.8
IF ~~ THEN REPLY @115 GOTO COPC4.9
IF ~~ THEN REPLY @116 GOTO COPC4.10
END

IF ~~ THEN BEGIN COPC4.10
SAY @122
IF ~~ THEN EXIT
END

/* chat w safana at waking */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SAFGM","GLOBAL",1)~ THEN COSA3
SAY @123
IF ~~ THEN DO ~SetGlobal("P#CoSA3","LOCALS",1) SetGlobal("X#SAFGM","GLOBAL",2)~ EXTERN ~%SAFANA_BANTER%~ GOODM
END

END

CHAIN3 ~%SAFANA_BANTER%~ GOODM
@124
== ~%CORAN_BANTER%~ @125
== ~%SAFANA_BANTER%~ @126
== ~%CORAN_BANTER%~ @127
== ~%SAFANA_BANTER%~ @128
== ~%CORAN_BANTER%~ @129
EXIT

/* AT WAKE */
APPEND ~%CORAN_JOINED%~

/* lullibye talk for male */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#Lulm","GLOBAL",1)~ THEN COPC8
SAY @130 
IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("P#Lulm","GLOBAL",2)~ EXTERN ~%EDWIN_BANTER%~ ELUL
IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("P#Lulm","GLOBAL",2)~ EXTERN ~%XAN_BANTER%~ XLUL
IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("P#Lulm","GLOBAL",2)~ EXTERN ~%SKIE_BANTER%~ SLUL
IF ~OR(3) !InParty("skie") !InMyArea("skie") StateCheck("skie",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID)~ THEN  DO ~SetGlobal("P#Lulm","GLOBAL",2)~ GOTO CO8PCTALK
END

IF ~~ THEN BEGIN CO8PCTALK
SAY @131
IF ~~ THEN REPLY @132 GOTO COPC8.1
IF ~~ THEN REPLY @133 GOTO COPC8.2
IF ~~ THEN REPLY @134 GOTO COPC8.3
END

IF ~~ THEN BEGIN COPC8.1
SAY @135
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC8.2
SAY @136
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN COPC8.3
SAY @137
IF ~~ THEN EXIT
END
END

CHAIN3 ~%EDWIN_BANTER%~ ELUL
@138
END ~%CORAN_JOINED%~ CO8PCTALK

CHAIN3 ~%XAN_BANTER%~ XLUL
@139
END ~%CORAN_JOINED%~ CO8PCTALK

CHAIN3 ~%SKIE_BANTER%~ SLUL
@140
== ~%ELDOTH_BANTER%~ IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN @141
END ~%CORAN_JOINED%~ CO8PCTALK

APPEND ~%CORAN_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("P#Lulf","GLOBAL",1)~ THEN COPC9
SAY @142 
IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("P#Lulf","GLOBAL",2)~ EXTERN ~%EDWIN_BANTER%~ ELUL
IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("P#Lulf","GLOBAL",2)~ EXTERN ~%XAN_BANTER%~ XLUL
IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("P#Lulf","GLOBAL",2)~ EXTERN ~%SKIE_BANTER%~ SLUL
IF ~OR(3) !InParty("skie") !InMyArea("skie") StateCheck("skie",CD_STATE_NOTVALID) OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID) OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("P#Lulf","GLOBAL",2)~ GOTO CO9PCTALK
END

IF ~~ THEN BEGIN CO9PCTALK
SAY @131
IF ~~ THEN REPLY @132 GOTO COPC9.1
IF ~~ THEN REPLY @143 GOTO COPC9.2
IF ~~ THEN REPLY @144 GOTO COPC9.3
END

IF ~~ THEN BEGIN COPC9.1
SAY @135
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC9.2
SAY @145
IF ~~ THEN REPLY @146 GOTO COPC9.4
IF ~~ THEN REPLY @147 GOTO COPC9.4
IF ~~ THEN REPLY @148 GOTO COPC9.5
IF ~~ THEN REPLY @149 GOTO COPC9.6
END

IF ~~ THEN BEGIN COPC9.3
SAY @150
IF ~~ THEN REPLY @151 GOTO COPC9.7
IF ~~ THEN REPLY @152 GOTO COPC9.6
IF ~~ THEN REPLY @153 GOTO COPC9.2
END

IF ~~ THEN BEGIN COPC9.4
SAY @154
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN COPC9.5
SAY @155
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN COPC9.6
SAY @156
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COPC9.7
SAY @157
IF ~~ THEN DO ~ActionOverride("coran",SetLeavePartyDialogFile()) ActionOverride("coran",ChangeAIScript("",DEFAULT)) LeaveParty() EscapeArea()~ 
EXIT
END

END

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("ajantis") Global("P#CoAJ1","LOCALS",0) !See([ENEMY]) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COAJ1
@158 
DO ~SetGlobal("P#CoAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @159
== ~%CORAN_BANTER%~ @160
== ~%AJANTIS_BANTER%~ @161
== ~%CORAN_BANTER%~ @162
== ~%AJANTIS_BANTER%~ @163
== ~%CORAN_BANTER%~ @164
== ~%AJANTIS_BANTER%~ @165
== ~%CORAN_BANTER%~ @166
== ~%AJANTIS_BANTER%~ @167
== ~%CORAN_BANTER%~ @168
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",1) InParty("alora") Global("P#CoAL1","LOCALS",0) !See([ENEMY]) See("alora") !StateCheck("alora",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COAL1
@169 
DO ~SetGlobal("P#CoAL1","LOCALS",1)~
== ~%ALORA_BANTER%~ @170
== ~%CORAN_BANTER%~ @171
== ~%ALORA_BANTER%~ @172
== ~%CORAN_BANTER%~ @173
== ~%ALORA_BANTER%~ @174
== ~%CORAN_BANTER%~ @175
== ~%ALORA_BANTER%~ @176
== ~%CORAN_BANTER%~ @177
== ~%ALORA_BANTER%~ @178
== ~%CORAN_BANTER%~ @179
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("branwen") Global("P#CoBR1","LOCALS",0) !See([ENEMY]) See("branwen") !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COBR1
@180 
DO ~SetGlobal("P#CoBR1","LOCALS",1)~
== ~%BRANWEN_BANTER%~ @181
== ~%CORAN_BANTER%~ @182
== ~%BRANWEN_BANTER%~ @183
== ~%CORAN_BANTER%~ @184
== ~%BRANWEN_BANTER%~ @185
== ~%CORAN_BANTER%~ @186
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("dynaheir") Global("P#CoDY1","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ CODY1
@187
DO ~SetGlobal("P#CoDY1","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @188
== ~%CORAN_BANTER%~ @189
== ~%DYNAHEIR_BANTER%~ @190
== ~%CORAN_BANTER%~ @191
== ~%DYNAHEIR_BANTER%~ @192
== ~%CORAN_BANTER%~ @193
== ~%DYNAHEIR_BANTER%~ @194
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2) InParty("dynaheir") Global("P#CoDY2","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) AreaType(CITY)~ THEN ~%CORAN_BANTER%~ CODY2
@195
DO ~SetGlobal("P#CoDY2","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @196
== ~%CORAN_BANTER%~ @197
== ~%DYNAHEIR_BANTER%~ @198
== ~%CORAN_BANTER%~ @199
== ~%DYNAHEIR_BANTER%~ @200
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2) InParty("dynaheir") Global("P#CoDY3","LOCALS",0) !See([ENEMY]) See("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ CODY3
@201
DO ~SetGlobal("P#CoDY3","LOCALS",1)~
== ~%DYNAHEIR_BANTER%~ @202
== ~%CORAN_BANTER%~ @203
== ~%DYNAHEIR_BANTER%~ @204
== ~%CORAN_BANTER%~ @205
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",1) InParty("edwin") Global("P#CoED1","LOCALS",0) !See([ENEMY]) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COED1
@206
DO ~SetGlobal("P#CoED1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @207
== ~%CORAN_BANTER%~ @208
== ~%EDWIN_BANTER%~ @209
== ~%CORAN_BANTER%~ @210
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2) InParty("eldoth") Global("P#CoEL1","LOCALS",0) !See([ENEMY]) See("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COEL1
@211 
DO ~SetGlobal("P#CoEL1","LOCALS",1)~
== ~%ELDOTH_BANTER%~ @212
== ~%CORAN_BANTER%~ @213
== ~%ELDOTH_BANTER%~ @214
== ~%CORAN_BANTER%~ @215
== ~%ELDOTH_BANTER%~ @216
== ~%CORAN_BANTER%~ @217
== ~%ELDOTH_BANTER%~ @218
== ~%CORAN_BANTER%~ @219
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2) AreaType(FOREST) InParty("faldorn") Global("P#CoFA1","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COFA1
@220 
DO ~SetGlobal("P#CoFA1","LOCALS",1)~
== ~%FALDORN_BANTER%~ @221
== ~%CORAN_BANTER%~ @222
== ~%FALDORN_BANTER%~ @223
== ~%CORAN_BANTER%~ @224
== ~%FALDORN_BANTER%~ @225
== ~%CORAN_BANTER%~ @226
== ~%FALDORN_BANTER%~ @227
== ~%CORAN_BANTER%~ @228
== ~%FALDORN_BANTER%~ @229
== ~%CORAN_BANTER%~ @230
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("faldorn") Global("P#CoFA2","LOCALS",0) !See([ENEMY]) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COFA2
@231 
DO ~SetGlobal("P#CoFA2","LOCALS",1)~
== ~%FALDORN_BANTER%~ @232
== ~%CORAN_BANTER%~ @233
== ~%FALDORN_BANTER%~ @234
== ~%CORAN_BANTER%~ @235
== ~%FALDORN_BANTER%~ @236
== ~%CORAN_BANTER%~ @237
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) AreaType(FOREST) InParty("faldorn") Global("P#CoFA3","GLOBAL",0) !See([ENEMY]) See("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COFA3
@238 
DO ~SetGlobal("P#CoFA3","GLOBAL",1)~
== ~%FALDORN_BANTER%~ @239
== ~%CORAN_BANTER%~ @240
== ~%FALDORN_BANTER%~ @241
== ~%CORAN_BANTER%~ @242
== ~%FALDORN_BANTER%~ @243
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("garrick") Global("P#CoGA1","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COGA1
@244 
DO ~SetGlobal("P#CoGA1","LOCALS",1)~
== ~%GARRICK_BANTER%~ @245
== ~%CORAN_BANTER%~ @246
== ~%GARRICK_BANTER%~ @247
== ~%CORAN_BANTER%~ @248
== ~%GARRICK_BANTER%~ @249
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",1) InParty("garrick") Global("P#CoGA2","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COGA2
@250 
DO ~SetGlobal("P#CoGA2","LOCALS",1)~
== ~%GARRICK_BANTER%~ @251
== ~%CORAN_BANTER%~ @252
== ~%GARRICK_BANTER%~ @253
== ~%CORAN_BANTER%~ @254
== ~%GARRICK_BANTER%~ @255
== ~%CORAN_BANTER%~ @256
== ~%GARRICK_BANTER%~ @257
== ~%CORAN_BANTER%~ @258
== ~%GARRICK_BANTER%~ @259
== ~%CORAN_BANTER%~ @260
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2) InParty("garrick") Global("P#CoGA3","LOCALS",0) !See([ENEMY]) See("garrick") !StateCheck("garrick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COGA3
@261 
DO ~SetGlobal("P#CoGA3","LOCALS",1)~
== ~%GARRICK_BANTER%~ @262
== ~%CORAN_BANTER%~ @263
== ~%GARRICK_BANTER%~ @264
== ~%CORAN_BANTER%~ @265
== ~%GARRICK_BANTER%~ @266
== ~%CORAN_BANTER%~ @267
= @268
== ~%GARRICK_BANTER%~ @269
== ~%CORAN_BANTER%~ @270
== ~%GARRICK_BANTER%~ @271
== ~%CORAN_BANTER%~ @272
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) !See([ENEMY]) InParty("%IMOEN_DV%") Global("P#CoIM1","LOCALS",0) See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COIM1
@273 
DO ~SetGlobal("P#CoIM1","LOCALS",1)~
== ~%IMOEN_BANTER%~ @274
== ~%CORAN_BANTER%~ @275
== ~%IMOEN_BANTER%~ @276
== ~%CORAN_BANTER%~ @277
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("%IMOEN_DV%") Global("P#CoIM2","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COIM2
@278 
DO ~SetGlobal("P#CoIM2","LOCALS",1)~
== ~%IMOEN_BANTER%~ @279
== ~%CORAN_BANTER%~ @280
== ~%IMOEN_BANTER%~ @281
== ~%CORAN_BANTER%~ @282
== ~%IMOEN_BANTER%~ @283
== ~%CORAN_BANTER%~ @284
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2) InParty("%IMOEN_DV%") Global("P#CoIM3","LOCALS",0) !See([ENEMY]) See("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COIM3
@285 
DO ~SetGlobal("P#CoIM3","LOCALS",1)~
== ~%IMOEN_BANTER%~ @286
== ~%CORAN_BANTER%~ @287
== ~%IMOEN_BANTER%~ @288
== ~%CORAN_BANTER%~ @289
== ~%IMOEN_BANTER%~ @290
== ~%CORAN_BANTER%~ @291
== ~%IMOEN_BANTER%~ @292
== ~%CORAN_BANTER%~ @293
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2) InParty("jaheira") InParty("khalid") Global("P#CoJA1","LOCALS",0) !See([ENEMY]) See("jaheira") See("khalid") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COJA1
@294 
DO ~SetGlobal("P#CoJA1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @295 
== ~%CORAN_BANTER%~ @296
== ~%JAHEIRA_BANTER%~ @297 
== ~%CORAN_BANTER%~ @298
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_NEUTRAL) Global("P#Briel_Stay","GLOBAL",2) InParty("jaheira") InParty("khalid") Global("P#CoJA2","LOCALS",0) !See([ENEMY]) See("jaheira") See("khalid") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COJA2
@299 
DO ~SetGlobal("P#CoJA2","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @300 
== ~%CORAN_BANTER%~ @301
== ~%JAHEIRA_BANTER%~ @302 
== ~%CORAN_BANTER%~ @303
== ~%JAHEIRA_BANTER%~ @304
== ~%CORAN_BANTER%~ @305
== ~%JAHEIRA_BANTER%~ @306 
== ~%CORAN_BANTER%~ @307
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",1) InParty("jaheira") InParty("khalid") Global("P#CoJA3","LOCALS",0) !See([ENEMY]) See("jaheira") See("khalid") !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COJA3
@308 
DO ~SetGlobal("P#CoJA3","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @309 
== ~%CORAN_BANTER%~ @310
== ~%JAHEIRA_BANTER%~ @311 
== ~%CORAN_BANTER%~ @312
== ~%JAHEIRA_BANTER%~ @313 
== ~%CORAN_BANTER%~ @314
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("khalid") InParty("jaheira") Global("P#CoKH1","GLOBAL",0) !See([ENEMY]) See("khalid") See("jaheira") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COKH1
@315
DO ~SetGlobal("P#CoKH1","GLOBAL",1)~
== ~%KHALID_BANTER%~ @316
== ~%CORAN_BANTER%~ @317
== ~%KHALID_BANTER%~ @318
== ~%CORAN_BANTER%~ @319
== ~%KHALID_BANTER%~ @320
== ~%CORAN_BANTER%~ @321
== ~%KHALID_BANTER%~ @322
== ~%CORAN_BANTER%~ @323
== ~%KHALID_BANTER%~ @324
== ~%CORAN_BANTER%~ @325
== ~%KHALID_BANTER%~ @326
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",1) InParty("khalid") InParty("jaheira") Global("P#CoKH2","LOCALS",0) !See([ENEMY]) See("khalid") See("jaheira") !StateCheck("khalid",CD_STATE_NOTVALID) !StateCheck("jaheira",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COKH2
@327
DO ~SetGlobal("P#CoKH2","LOCALS",1)~
== ~%KHALID_BANTER%~ @328
== ~%CORAN_BANTER%~ @329
== ~%KHALID_BANTER%~ @330
== ~%CORAN_BANTER%~ @331
== ~%KHALID_BANTER%~ @332
== ~%CORAN_BANTER%~ @333
== ~%KHALID_BANTER%~ @334
== ~%CORAN_BANTER%~ @335
== ~%KHALID_BANTER%~ @336
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("kivan") Global("P#CoKI1","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COKI1
@337
DO ~SetGlobal("P#CoKI1","LOCALS",1)~
== ~%KIVAN_BANTER%~ @338
== ~%CORAN_BANTER%~ @339
== ~%KIVAN_BANTER%~ @340
== ~%CORAN_BANTER%~ @341
== ~%KIVAN_BANTER%~ @342
== ~%CORAN_BANTER%~ @343
== ~%KIVAN_BANTER%~ @344
== ~%CORAN_BANTER%~ @345
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) GlobalGT("Chapter","GLOBAL",%tutu_chapter_4%) !Dead("tazok") InParty("kivan") Global("P#CoKI2","LOCALS",0) !See([ENEMY]) See("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COKI2
@346
DO ~SetGlobal("P#CoKI2","LOCALS",1)~
== ~%KIVAN_BANTER%~ @347
== ~%CORAN_BANTER%~ @348
== ~%KIVAN_BANTER%~ @349
== ~%CORAN_BANTER%~ @350
== ~%KIVAN_BANTER%~ @351
== ~%CORAN_BANTER%~ @352
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("minsc") Global("P#CoMI1","LOCALS",0) !See([ENEMY]) See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COMI1
@353 
DO ~SetGlobal("P#CoMI1","LOCALS",1)~
== ~%MINSC_BANTER%~ @354
== ~%CORAN_BANTER%~ @355
== ~%MINSC_BANTER%~ @356
== ~%CORAN_BANTER%~ @357
== ~%MINSC_BANTER%~ @358
== ~%CORAN_BANTER%~ @359
== ~%MINSC_BANTER%~ @360
== ~%CORAN_BANTER%~ @361
== ~%MINSC_BANTER%~ @362
== ~%CORAN_BANTER%~ @363
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("montaron") Global("P#CoMO1","LOCALS",0) !See([ENEMY]) See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COMO1
@364 
DO ~SetGlobal("P#CoMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @365
== ~%CORAN_BANTER%~ @366
== ~%MONTARON_BANTER%~ @367
== ~%CORAN_BANTER%~ @368
== ~%MONTARON_BANTER%~ @369
== ~%CORAN_BANTER%~ @370
== ~%MONTARON_BANTER%~ @371
== ~%CORAN_BANTER%~ @372
== ~%MONTARON_BANTER%~ @373
== ~%CORAN_BANTER%~ @374
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("quayle") !See([ENEMY]) See("quayle") !StateCheck("quayle",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) Global("P#CoQU1","LOCALS",0)~ THEN ~%CORAN_BANTER%~ COQU1
@375 
DO ~SetGlobal("P#CoQU1","LOCALS",1)~
== ~%QUAYLE_BANTER%~ @376
== ~%CORAN_BANTER%~ @377
== ~%QUAYLE_BANTER%~ @378
== ~%CORAN_BANTER%~ @379
== ~%QUAYLE_BANTER%~ @380
== ~%CORAN_BANTER%~ @381
== ~%QUAYLE_BANTER%~ @382
== ~%CORAN_BANTER%~ @383
== ~%QUAYLE_BANTER%~ @384
== ~%CORAN_BANTER%~ @375
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("safana") Global("P#CoSA1","LOCALS",0) OR(2) !Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomancePath","GLOBAL",1) !See([ENEMY]) See("safana") !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) TimeOfDay(NIGHT)~ THEN ~%CORAN_BANTER%~ COSA1
@385 
DO ~SetGlobal("P#CoSA1","LOCALS",1)~
== ~%SAFANA_BANTER%~ @386
== ~%CORAN_BANTER%~ @387
== ~%SAFANA_BANTER%~ @388
== ~%CORAN_BANTER%~ @389
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) !See([ENEMY]) InParty("safana") See("safana") !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) OR(2) !Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomancePath","GLOBAL",1) Global("P#CoSA2","LOCALS",0)~ THEN ~%CORAN_BANTER%~ COSA2
@390 
DO ~SetGlobal("P#CoSA2","LOCALS",1)~
== ~%SAFANA_BANTER%~ @391
== ~%CORAN_BANTER%~ @392
== ~%SAFANA_BANTER%~ @393
== ~%CORAN_BANTER%~ @394
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) OR(2) !Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomancePath","GLOBAL",1) InParty("safana") Global("P#CoSA4","LOCALS",0) !See([ENEMY]) See("safana") !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COSA4
@395 
DO ~SetGlobal("P#CoSA4","LOCALS",1)~
== ~%SAFANA_BANTER%~ @396
== ~%CORAN_BANTER%~ @397
== ~%SAFANA_BANTER%~ @398
== ~%CORAN_BANTER%~ @399
== ~%SAFANA_BANTER%~ @400
== ~%CORAN_BANTER%~ @401
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",1) OR(2) !Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomancePath","GLOBAL",1) InParty("safana") Global("P#CoSA5","LOCALS",0) !See([ENEMY]) See("safana") !StateCheck("safana",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COSA5
@402 
DO ~SetGlobal("P#CoSA5","LOCALS",1)~
== ~%SAFANA_BANTER%~ @403
== ~%CORAN_BANTER%~ @404
== ~%SAFANA_BANTER%~ @405
== ~%CORAN_BANTER%~ @406
== ~%SAFANA_BANTER%~ @407
== ~%CORAN_BANTER%~ @408
== ~%SAFANA_BANTER%~ @409
== ~%CORAN_BANTER%~ @410
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_GOOD)  Global("P#CoranHasBaby","GLOBAL",1) InParty("sharteel") Global("P#CoSH1","LOCALS",0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) AreaType(CITY)~ THEN ~%CORAN_BANTER%~ COSH1
@411 
DO ~SetGlobal("P#CoSH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @412
== ~%CORAN_BANTER%~ @413
== ~%SHARTEEL_BANTER%~ @414
== ~%CORAN_BANTER%~ @415
== ~%SHARTEEL_BANTER%~ @416
== ~%CORAN_BANTER%~ @417
== ~%SHARTEEL_BANTER%~ @418
== ~%CORAN_BANTER%~ @419
== ~%SHARTEEL_BANTER%~ @420
== ~%CORAN_BANTER%~ @421
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("P#CoTI1","LOCALS",0)!See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COTI1
@422 
DO ~SetGlobal("P#CoTI1","LOCALS",1)~
== ~%TIAX_BANTER%~ @423
== ~%CORAN_BANTER%~ @424
== ~%TIAX_BANTER%~ @425
== ~%CORAN_BANTER%~ @426
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("tiax") Global("P#CoTI2","LOCALS",0) !See([ENEMY]) See("tiax") !StateCheck("tiax",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COTI2
@427 
DO ~SetGlobal("P#CoTI2","LOCALS",1)~
== ~%TIAX_BANTER%~ @428
== ~%CORAN_BANTER%~ @429
== ~%TIAX_BANTER%~ @430
== ~%CORAN_BANTER%~ @431
== ~%TIAX_BANTER%~ @432
== ~%CORAN_BANTER%~ @433
= @434
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("P#CoVI1","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) TimeOfDay(NIGHT)~ THEN ~%CORAN_BANTER%~ COVI1
@435 
DO ~SetGlobal("P#CoVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @436
== ~%CORAN_BANTER%~ @437
== ~%VICONIA_BANTER%~ @438
== ~%CORAN_BANTER%~ @439
== ~%VICONIA_BANTER%~ @440
== ~%CORAN_BANTER%~ @441
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("viconia") Global("P#CoVI2","LOCALS",0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COVI2
@442 
DO ~SetGlobal("P#CoVI2","LOCALS",1)~
== ~%VICONIA_BANTER%~ @443
== ~%CORAN_BANTER%~ @444
== ~%VICONIA_BANTER%~ @445
== ~%CORAN_BANTER%~ @446
== ~%VICONIA_BANTER%~ @447
== ~%CORAN_BANTER%~ @448
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) Alignment("coran",CHAOTIC_GOOD) Global("P#CoranHasBaby","GLOBAL",1) InParty("xan") Global("P#CoXA1","LOCALS",0) !See([ENEMY]) See("xan") !StateCheck("xan",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COXA1
@449 
DO ~SetGlobal("P#CoXA1","LOCALS",1)~
== ~%XAN_BANTER%~ @450
== ~%CORAN_BANTER%~ @451
== ~%XAN_BANTER%~ @452
== ~%CORAN_BANTER%~ @453
== ~%XAN_BANTER%~ @454
== ~%CORAN_BANTER%~ @455
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("xzar") Global("P#CoXZ1","LOCALS",0) !See([ENEMY]) See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COXZ1
@456 
DO ~SetGlobal("P#CoXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @457
== ~%CORAN_BANTER%~ @458
== ~%XZAR_BANTER%~ @459
== ~%CORAN_BANTER%~ @460
== ~%XZAR_BANTER%~ @461
== ~%CORAN_BANTER%~ @462
== ~%XZAR_BANTER%~ @463
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("yeslick") Global("P#CoYE1","LOCALS",0) !See([ENEMY]) See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COYE1
@464 
DO ~SetGlobal("P#CoYE1","LOCALS",1)~
== ~%YESLICK_BANTER%~ @465
== ~%CORAN_BANTER%~ @466
== ~%YESLICK_BANTER%~ @467
== ~%CORAN_BANTER%~ @468
== ~%YESLICK_BANTER%~ @469
== ~%CORAN_BANTER%~ @470
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% CombatCounter(0) InParty("yeslick") Global("P#CoYE2","LOCALS",0) !See([ENEMY]) See("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ COYE2
@471
DO ~SetGlobal("P#CoYE2","LOCALS",1)~
== ~%YESLICK_BANTER%~ @472
== ~%CORAN_BANTER%~ @473
== ~%YESLICK_BANTER%~ @474
== ~%CORAN_BANTER%~ @475
EXIT
