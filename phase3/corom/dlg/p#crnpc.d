APPEND ~%ALORA_BANTER%~

IF WEIGHT #-2 ~%BGT_VAR% Global("P#CRAL1","GLOBAL",1)~ THEN BEGIN CRAL1
SAY @0
++ @1 DO ~SetGlobal("P#CRAL1","GLOBAL",2)~ + CRAL1.1
++ @2 DO ~SetGlobal("P#CRAL1","GLOBAL",2)~ + CRAL1.2
++ @3 DO ~SetGlobal("P#CRAL1","GLOBAL",2)~ + CRAL1.1
++ @4 DO ~SetGlobal("P#CRAL1","GLOBAL",2)~ + CRAL1.3
END

IF ~~ THEN BEGIN CRAL1.1
SAY @5
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRAL1.2
SAY @6
++ @7 GOTO CRAL1.4
++ @8 GOTO CRAL1.5
+ ~Race(Player1,ELF)~ + @9 GOTO CRAL1.6
++ @10 GOTO CRAL1.7
++ @11 EXIT
END 

IF ~~ THEN BEGIN CRAL1.3
SAY @12
++ @13 GOTO CRAL1.4
++ @14 GOTO CRAL1.5
+ ~Race(Player1,ELF)~ + @15 GOTO CRAL1.6
++ @10 GOTO CRAL1.7
++ @11 EXIT
END

IF ~~ THEN BEGIN CRAL1.4
SAY @16
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRAL1.5
SAY @17
IF ~~ THEN GOTO CRAL1.5A
END

IF ~~ THEN BEGIN CRAL1.5A
SAY @18 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRAL1.6
SAY @19
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRAL1.7
SAY @20
IF ~~ THEN EXIT
END
END

APPEND ~%ELDOTH_BANTER%~

IF WEIGHT #-2 ~%BGT_VAR% Global("P#CREL1","GLOBAL",1)~ THEN BEGIN CREL1
SAY @21
++ @22 DO ~SetGlobal("P#CREL1","GLOBAL",2)~ + CREL1.1
++ @23 DO ~SetGlobal("P#CREL1","GLOBAL",2)~ + CREL1.4
++ @24 DO ~SetGlobal("P#CREL1","GLOBAL",2)~ + CREL1.5
++ @25 DO ~SetGlobal("P#CREL1","GLOBAL",2)~ + CREL1.1
END

IF ~~ THEN BEGIN CREL1.1
SAY @26
IF ~~ THEN GOTO CREL1.2
END

IF ~~ THEN BEGIN CREL1.2
SAY @27
IF ~~ THEN GOTO CREL1.3
END

IF ~~ THEN BEGIN CREL1.3
SAY @28
IF ~~ THEN GOTO CREL1.3A
END

IF ~~ THEN BEGIN CREL1.3A
SAY @29
IF ~~ THEN GOTO CREL1.3B
END

IF ~~ THEN BEGIN CREL1.3B 
SAY @30
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CREL1.4
SAY @31
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CREL1.5
SAY @32
IF ~~ THEN EXIT
END
END

APPEND ~%FALDORN_BANTER%~
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CRFA1","GLOBAL",1)~ THEN BEGIN CRFA1
SAY @33
++ @34 DO ~SetGlobal("P#CRFA1","GLOBAL",2)~ + CRFA1.1
++ @35 DO ~SetGlobal("P#CRFA1","GLOBAL",2)~ + CRFA1.2
++ @36 DO ~SetGlobal("P#CRFA1","GLOBAL",2)~ + CRFA1.3
++ @37 DO ~SetGlobal("P#CRFA1","GLOBAL",2)~ + CRFA1.3
END

IF ~~ THEN BEGIN CRFA1.1
SAY @38
++ @39 GOTO CRFA1.4
+ ~Race(Player1,ELF)~ + @40 GOTO CRFA1.5A
+ ~!Race(Player1,ELF)~ + @40 GOTO CRFA1.5B
++ @41 GOTO CRFA1.4
END

IF ~~ THEN BEGIN CRFA1.2
SAY @42
++ @43 GOTO CRFA1.1
++ @44 GOTO CRFA1.3
++ @45 GOTO CRFA1.3
END

IF ~~ THEN BEGIN CRFA1.3
SAY @46
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRFA1.4
SAY @47
IF ~~ THEN GOTO CRFA1.3
END

IF ~~ THEN BEGIN CRFA1.5A
SAY @48
IF ~~ THEN GOTO CRFA1.3
END

IF ~~ THEN BEGIN CRFA1.5B
SAY @49
IF ~~ THEN GOTO CRFA1.3
END
END

APPEND ~%IMOEN_BANTER%~
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CRIM1","GLOBAL",1)~ THEN BEGIN CRIM1
SAY @50
++ @51 DO ~SetGlobal("P#CRIM1","GLOBAL",2)~ EXIT
++ @52 DO ~SetGlobal("P#CRIM1","GLOBAL",2)~ + CRIM1.2
++ @53 DO ~SetGlobal("P#CRIM1","GLOBAL",2)~ + CRIM1.3
++ @54 DO ~SetGlobal("P#CRIM1","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN CRIM1.2
SAY @55
++ @56 EXIT
++ @57 GOTO CRIM1.4
END

IF ~~ THEN BEGIN CRIM1.3
SAY @58
++ @59 EXIT
++ @60 GOTO CRIM1.5
END

IF ~~ THEN BEGIN CRIM1.4
SAY @61
= @62
++ @63 EXIT
++ @64 GOTO CRIM1.5
END

IF ~~ THEN BEGIN CRIM1.5
SAY @65
++ @66 EXIT
+ ~InParty("minsc") !Global("P#CRIMAskedMinsc","GLOBAL",1)~ + @67 DO ~SetGlobal("P#CRIMAskedMinsc","GLOBAL",1)~ + CRIM1.7
+ ~InParty("xan") !Global("P#CRIMAskedXan","GLOBAL",1)~ + @68 DO ~SetGlobal("P#CRIMAskedXan","GLOBAL",1)~ GOTO CRIM1.8
+ ~InParty("yeslick") !Global("P#CRIMAskedYeslick","GLOBAL",1)~ + @69 DO ~SetGlobal("P#CRIMAskedYieslick","GLOBAL",1)~ GOTO CRIM1.9
+ ~InParty("edwin") !Global("P#CRIMAskedEdwin","GLOBAL",1)~ + @70 DO ~SetGlobal("P#CRIMAskedEdwin","GLOBAL",1)~ GOTO CRIM1.10
++ @71 GOTO CRIM1.11
END

IF ~~ THEN BEGIN CRIM1.7
SAY @72
++ @66 EXIT
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @73 + CRIM1.11
+ ~InParty("xan") !Global("P#CRIMAskedXan","GLOBAL",1)~ + @68 DO ~SetGlobal("P#CRIMAskedXan","GLOBAL",1)~ GOTO CRIM1.8
+ ~InParty("yeslick") !Global("P#CRIMAskedYeslick","GLOBAL",1)~ + @69 DO ~SetGlobal("P#CRIMAskedYieslick","GLOBAL",1)~ GOTO CRIM1.9
+ ~InParty("edwin") !Global("P#CRIMAskedEdwin","GLOBAL",1)~ + @70 DO ~SetGlobal("P#CRIMAskedEdwin","GLOBAL",1)~ GOTO CRIM1.10
++ @71 GOTO CRIM1.11
END

IF ~~ THEN BEGIN CRIM1.11
SAY @74
++ @75 EXIT
+ ~InParty("xan") !Global("P#CRIMAskedXan","GLOBAL",1)~ + @68 DO ~SetGlobal("P#CRIMAskedXan","GLOBAL",1)~ GOTO CRIM1.8
+ ~InParty("yeslick") !Global("P#CRIMAskedYeslick","GLOBAL",1)~ + @69 DO ~SetGlobal("P#CRIMAskedYieslick","GLOBAL",1)~ GOTO CRIM1.9
+ ~InParty("edwin") !Global("P#CRIMAskedEdwin","GLOBAL",1)~ + @70 DO ~SetGlobal("P#CRIMAskedEdwin","GLOBAL",1)~ GOTO CRIM1.10
++ @71 GOTO CRIM1.11
END

IF ~~ THEN BEGIN CRIM1.8
SAY @76
++ @66 EXIT
+ ~InParty("minsc") !Global("P#CRIMAskedMinsc","GLOBAL",1)~ + @77 DO ~SetGlobal("P#CRIMAskedMinsc","GLOBAL",1)~ + CRIM1.7
+ ~InParty("yeslick") !Global("P#CRIMAskedYeslick","GLOBAL",1)~ + @69 DO ~SetGlobal("P#CRIMAskedYieslick","GLOBAL",1)~ GOTO CRIM1.9
+ ~InParty("edwin") !Global("P#CRIMAskedEdwin","GLOBAL",1)~ + @70 DO ~SetGlobal("P#CRIMAskedEdwin","GLOBAL",1)~ GOTO CRIM1.10
++ @71 GOTO CRIM1.11
END

IF ~~ THEN BEGIN CRIM1.9 
SAY @78 
++ @79 GOTO CRIM1.12
++ @66 EXIT
+ ~InParty("xan") !Global("P#CRIMAskedXan","GLOBAL",1)~ + @68 DO ~SetGlobal("P#CRIMAskedXan","GLOBAL",1)~ GOTO CRIM1.8
+ ~InParty("minsc") !Global("P#CRIMAskedMinsc","GLOBAL",1)~ + @77 DO ~SetGlobal("P#CRIMAskedMinsc","GLOBAL",1)~ + CRIM1.7
+ ~InParty("edwin") !Global("P#CRIMAskedEdwin","GLOBAL",1)~ + @70 DO ~SetGlobal("P#CRIMAskedEdwin","GLOBAL",1)~ GOTO CRIM1.10
++ @71 GOTO CRIM1.11
END

IF ~~ THEN BEGIN CRIM1.12
SAY @80
++ @66 EXIT
+ ~InParty("xan") !Global("P#CRIMAskedXan","GLOBAL",1)~ + @68 DO ~SetGlobal("P#CRIMAskedXan","GLOBAL",1)~ GOTO CRIM1.8
+ ~InParty("minsc") !Global("P#CRIMAskedMinsc","GLOBAL",1)~ + @77 DO ~SetGlobal("P#CRIMAskedMinsc","GLOBAL",1)~ + CRIM1.7
+ ~InParty("edwin") !Global("P#CRIMAskedEdwin","GLOBAL",1)~ + @70 DO ~SetGlobal("P#CRIMAskedEdwin","GLOBAL",1)~ GOTO CRIM1.10
+ ~InParty("yeslick") !Global("P#CRIMAskedYeslick","GLOBAL",1)~ + @69 DO ~SetGlobal("P#CRIMAskedYieslick","GLOBAL",1)~ GOTO CRIM1.9
++ @71 GOTO CRIM1.11
END

IF ~~ THEN BEGIN CRIM1.10
SAY @81
++ @82 GOTO CRIM1.13
++ @66 EXIT
+ ~InParty("xan") !Global("P#CRIMAskedXan","GLOBAL",1)~ + @68 DO ~SetGlobal("P#CRIMAskedXan","GLOBAL",1)~ GOTO CRIM1.8
+ ~InParty("minsc") !Global("P#CRIMAskedMinsc","GLOBAL",1)~ + @77 DO ~SetGlobal("P#CRIMAskedMinsc","GLOBAL",1)~ + CRIM1.7
+ ~InParty("yeslick") !Global("P#CRIMAskedYeslick","GLOBAL",1)~ + @69 DO ~SetGlobal("P#CRIMAskedYieslick","GLOBAL",1)~ GOTO CRIM1.9
++ @71 GOTO CRIM1.11
END

IF ~~ THEN BEGIN CRIM1.13
SAY @83
++ @66 EXIT
+ ~InParty("xan") !Global("P#CRIMAskedXan","GLOBAL",1)~ + @68 DO ~SetGlobal("P#CRIMAskedXan","GLOBAL",1)~ GOTO CRIM1.8
+ ~InParty("minsc") !Global("P#CRIMAskedMinsc","GLOBAL",1)~ + @77 DO ~SetGlobal("P#CRIMAskedMinsc","GLOBAL",1)~ + CRIM1.7
+ ~InParty("yeslick") !Global("P#CRIMAskedYeslick","GLOBAL",1)~ + @69 DO ~SetGlobal("P#CRIMAskedYieslick","GLOBAL",1)~ GOTO CRIM1.9
++ @71 GOTO CRIM1.11
END
END

APPEND ~%CORAN_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("P#CRMI1","GLOBAL",1)~ THEN BEGIN CRMI1
SAY @84
IF ~~ THEN DO ~SetGlobal("P#CRMI1","GLOBAL",2)~ EXTERN ~%MINSC_BANTER%~ CRMI1
END

IF ~~ THEN BEGIN CRMI2
SAY @85
++ @86 EXTERN ~%MINSC_BANTER%~ CRMI3
++ @87 + CRMI4
++ @88 EXTERN ~%MINSC_BANTER%~ CRMI3
END

IF ~~ THEN BEGIN CRSH2
SAY @89
++ @90 EXTERN ~%SHARTEEL_BANTER%~ CRSH3
+ ~ReputationGT(Player1,10)~ + @91 EXTERN ~%SHARTEEL_BANTER%~ CRSH4HR
+ ~!ReputationGT(Player1,10)~ + @91 EXTERN ~%SHARTEEL_BANTER%~ CRSH4LR
++ @92 EXTERN ~%SHARTEEL_BANTER%~ CRSH3
END

IF ~~ THEN BEGIN CRSH5
SAY @93
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~
EXIT
END

END 

CHAIN3 ~%MINSC_BANTER%~ CRMI1
@94
== ~%CORAN_BANTER%~ @95
== ~%MINSC_BANTER%~ @96
END ~%CORAN_JOINED%~ CRMI2

CHAIN3 ~%MINSC_BANTER%~ CRMI3
@97
DO ~RestParty()~
EXIT

CHAIN3 ~%CORAN_JOINED%~ CRMI4
@98
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @99
== ~%KHALID_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @100
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @101
== ~%BRANWEN_BANTER%~ IF ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ THEN @102
== ~%IMOEN_BANTER%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @103
== ~%AJANTIS_BANTER%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @104
END ~%MINSC_BANTER%~ CRMI3

APPEND ~%SHARTEEL_BANTER%~

IF WEIGHT #-2 ~%BGT_VAR% Global("P#CRSH1","GLOBAL",1)~ THEN BEGIN CRSH1
SAY @105
IF ~~ THEN DO ~SetGlobal("P#CRSH1","GLOBAL",2)~ EXTERN ~%CORAN_JOINED%~ CRSH1
END 

IF ~~ THEN BEGIN CRSH3
SAY @106
IF ~~ THEN DO ~Attack("coran") ActionOverride("coran",Attack("sharteel"))~
EXIT
END

IF ~~ THEN BEGIN CRSH4HR
SAY @107
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRSH4LR
SAY @108
IF ~~ THEN EXTERN ~%CORAN_JOINED%~ CRSH5
END
END

CHAIN3 ~%CORAN_JOINED%~ CRSH1
@109
== ~%SHARTEEL_BANTER%~ @110
== ~%CORAN_BANTER%~ @111
== ~%SHARTEEL_BANTER%~ @112
= @113
== ~%CORAN_BANTER%~ @114
== ~%SHARTEEL_BANTER%~ @115
END ~%CORAN_JOINED%~ CRSH2

APPEND ~%VICONIA_BANTER%~
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CRVI2","GLOBAL",1)~ THEN BEGIN CRVI2
SAY @116
++ @117 DO ~SetGlobal("P#CRVI2","GLOBAL",2)~ + CRVI2.1
+ ~Global("HelpDrizzt","GLOBAL",1)~ + @118 DO ~SetGlobal("P#CRVI2","GLOBAL",2)~ + CRVI2.2
++ @119 DO ~SetGlobal("P#CRVI2","GLOBAL",2)~ + CRVI2.3
++ @120 DO ~SetGlobal("P#CRVI2","GLOBAL",2)~ EXIT
++ @121 DO ~SetGlobal("P#CRVI2","GLOBAL",2)~ + CRVI2.5
++ @122 DO ~SetGlobal("P#CRVI2","GLOBAL",2)~ + CRVI2.4
END

IF ~~ THEN BEGIN CRVI2.1
SAY @123
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRVI2.2
SAY @124
= @125
= @126
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRVI2.3
SAY @127
++ @128 GOTO CRVI2.6
++ @129 GOTO CRVI2.7
++ @130 GOTO CRVI2.8
END

IF ~~ THEN BEGIN CRVI2.4
SAY @131
= @132
= @133
++ @134 EXIT
++ @135 GOTO CRVI2.9
++ @136 GOTO CRVI2.10
++ @137 EXIT
END

IF ~~ THEN BEGIN CRVI2.5
SAY @138
++ @139 GOTO CRVI2.11
++ @140 EXIT
++ @141 GOTO CRVI2.1
++ @142 EXIT
END

IF ~~ THEN BEGIN CRVI2.6
SAY @143
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRVI2.7
SAY @144
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRVI2.8
SAY @145
IF ~~ THEN GOTO CRVI2.4
END

IF ~~ THEN BEGIN CRVI2.9
SAY @146
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRVI2.10
SAY @147
++ @148 EXIT
++ @149 EXIT
++ @150 GOTO CRVI2.12
++ @151 EXIT
++ @152 EXIT
END

IF ~~ THEN BEGIN CRVI2.11
SAY @153
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRVI2.12
SAY @154
IF ~~ THEN EXIT
END
END

APPEND ~%XZAR_BANTER%~
IF WEIGHT #-2 ~%BGT_VAR% Global("P#CRXZ1","GLOBAL",1)~ THEN BEGIN CRXZ1
SAY @155
++ @156 DO ~SetGlobal("P#CRXZ1","GLOBAL",2)~ EXIT
++ @157 DO ~SetGlobal("P#CRXZ1","GLOBAL",2)~ + CRXZ1.1
++ @158 DO ~SetGlobal("P#CRXZ1","GLOBAL",2)~ + CRXZ1.2
+ ~GlobalGT("P#CoranHasBaby","GLOBAL",0)~ + @159 DO ~SetGlobal("P#CRXZ1","GLOBAL",2)~ EXTERN ~%CORAN_BANTER%~ CRXZ1.3
+ ~!GlobalGT("P#CoranHasBaby","GLOBAL",0)~ + @159 DO ~SetGlobal("P#CRXZ1","GLOBAL",2)~ EXTERN ~%CORAN_BANTER%~ CRXZ1.4
END

IF ~~ THEN BEGIN CRXZ1.1
SAY @160
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRXZ1.2
SAY @161
IF ~~ THEN EXIT
END

END 

APPEND ~%CORAN_BANTER%~ 
IF ~~ THEN BEGIN CRXZ1.3
SAY @162
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CRXZ1.4
SAY @163
IF ~~ THEN EXIT
END
END 


APPEND ~%CORAN_BANTER%~

IF WEIGHT #-2 ~%BGT_VAR% Global("P#KiCoConflict","GLOBAL",1)~ THEN BEGIN KiCoConflict
SAY @164
IF ~~ THEN DO ~SetGlobal("P#KiCoConflict","GLOBAL",2)~ EXTERN ~%KIVAN_BANTER%~ KiCoMenTalk
END

IF ~~ KiCoMenPC
SAY @165
++ @166 GOTO CoKiConflict1
++ @167 GOTO CoKiConflict2
++ @168 GOTO CoKiConflict3
++ @169 EXTERN ~%KIVAN_BANTER%~ KiCoConflict1
++ @170 EXTERN ~%KIVAN_BANTER%~ KiCoConflict2
++ @171 EXTERN ~%KIVAN_BANTER%~ KiCoConflict2
++ @172 EXTERN ~%KIVAN_BANTER%~ KiCoConflict3
++ @173 EXIT
END
 
IF ~~ CoKiConflict1
SAY @174
IF ~~ THEN EXTERN ~%KIVAN_BANTER%~ KiCoConflict4
END

IF ~~ CoKiConflict2
SAY @175
IF ~~ THEN EXTERN ~%KIVAN_BANTER%~ KiCoConflict4
END

IF ~~ CoKiConflict3
SAY @176
IF ~~ THEN EXTERN ~%KIVAN_BANTER%~ KiCoConflict4
END

IF ~~ CoKiConflict4
SAY @177
++ @178 GOTO CoKiConflict5
++ @179 GOTO CoKiConflict6
++ @180 
DO ~SetGlobal("P#CoranLover","GLOBAL",0) SetGlobal("P#CoranRomancePath","GLOBAL",2) RestParty()~
EXIT
END
 
 IF ~~ CoKiConflict5
 SAY @181
 IF ~~ THEN DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1) RestParty()~ EXIT
 END
 
IF ~~ CoKiConflict6
SAY @182
++ @183 DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1) RestParty()~ EXIT
++ @184 DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1) RestParty()~ EXIT
++ @185 DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1) RestParty()~ EXIT
++ @186 DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1) RestParty()~ EXIT
END
END

APPEND ~%KIVAN_BANTER%~
 
IF ~~ KiCoConflict1
SAY @187
IF ~~ THEN DO ~SetGlobal("P#KivanRomanceInactive","GLOBAL",1) RestParty()~ EXIT
END

IF ~~ KiCoConflict2
SAY @188
IF ~~ THEN EXTERN ~%CORAN_BANTER%~ CoKiConflict4
END

IF ~~ KiCoConflict3
SAY @189
IF ~~ THEN EXTERN ~%CORAN_BANTER%~ CoKiConflict3
END

IF ~~ KiCoConflict4
SAY @190
++ @191 GOTO KiCoConflict5
++ @192 GOTO KiCoConflict5
++ @193 GOTO KiCoConflict5
END

IF ~~ KiCoConflict5
SAY @194
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",1) RestParty()~
EXIT
END
END

CHAIN3 ~%KIVAN_BANTER%~ KiCoMenTalk
@195
= @196
== ~%CORAN_BANTER%~ @197
== ~%KIVAN_BANTER%~ @198
== ~%CORAN_BANTER%~ @199
== ~%KIVAN_BANTER%~ @200
== ~%CORAN_BANTER%~ @201
== ~%KIVAN_BANTER%~ @202
== ~%CORAN_BANTER%~ @203
END ~%CORAN_BANTER%~ KiCoMenPC

/* Ajantis */
CHAIN IF ~%BGT_VAR% InParty("coran") InMyArea("coran") CombatCounter(0) !See([ENEMY])  !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoRomReaction","GLOBAL",1) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) !GlobalGT("P#CoranLover","GLOBAL",0) GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CRAJ1","LOCALS",0)~ THEN ~%AJANTIS_BANTER%~ CRAJ1
@204
DO ~SetGlobal("P#CRAJ1","LOCALS",1)~
== ~%CORAN_BANTER%~ @205
== ~%AJANTIS_BANTER%~ @206
== ~%CORAN_BANTER%~ @207
== ~%AJANTIS_BANTER%~ IF ~Alignment(Player1,LAWFUL_GOOD)~ THEN @208
== ~%CORAN_BANTER%~ IF ~Alignment(Player1,LAWFUL_GOOD)~ THEN @209
== ~%AJANTIS_BANTER%~ IF ~!Alignment(Player1,LAWFUL_GOOD) ReputationGT(Player1,11)~ THEN @210
== ~%CORAN_BANTER%~ IF ~!Alignment(Player1,LAWFUL_GOOD) ReputationGT(Player1,11)~ THEN @209
== ~%AJANTIS_BANTER%~ IF ~!Alignment(Player1,LAWFUL_GOOD) !ReputationGT(Player1,11)~ THEN @211
== ~%CORAN_BANTER%~ IF ~!Alignment(Player1,LAWFUL_GOOD) !ReputationGT(Player1,11)~ THEN @212
== ~%AJANTIS_BANTER%~ IF ~!Alignment(Player1,LAWFUL_GOOD) !ReputationGT(Player1,11)~ THEN @213
== ~%CORAN_BANTER%~ IF ~!Alignment(Player1,LAWFUL_GOOD) !ReputationGT(Player1,11)~ THEN @214
== ~%CORAN_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @215
== ~%AJANTIS_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @216
== ~%CORAN_BANTER%~ IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @217
EXIT

/* Branwen */
CHAIN IF ~%BGT_VAR% InParty("coran") InMyArea("coran") CombatCounter(0) !See([ENEMY]) !StateCheck("branwen",CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoRomReaction","GLOBAL",1) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CRBR1","LOCALS",0)~ THEN ~%BRANWEN_BANTER%~ CRBR1
@218
DO ~SetGlobal("P#CRBR1","LOCALS",1)~
== ~%CORAN_BANTER%~ @219
== ~%BRANWEN_BANTER%~ @220
== ~%CORAN_BANTER%~ @221
== ~%BRANWEN_BANTER%~ @222
== ~%CORAN_BANTER%~ @223
== ~%BRANWEN_BANTER%~ @224
== ~%BRANWEN_BANTER%~ @225
EXIT

/* Dynaheir */
CHAIN IF ~%BGT_VAR% InParty("coran") InMyArea("coran") CombatCounter(0) !See([ENEMY])  !StateCheck("dynaheir",CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoRomReaction","GLOBAL",1) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) Global("P#CoranFriend","GLOBAL",1) Global("P#CRDY1","LOCALS",0)~ THEN ~%DYNAHEIR_BANTER%~ CRDY1
@226 
DO ~SetGlobal("P#CRDY1","LOCALS",1)~
== ~%CORAN_BANTER%~ @227
== ~%DYNAHEIR_BANTER%~ @228
== ~%CORAN_BANTER%~ @229
== ~%DYNAHEIR_BANTER%~ @230
== ~%CORAN_BANTER%~ @231
EXIT

/* Edwin */
CHAIN IF ~%BGT_VAR% InParty("coran") InMyArea("coran") CombatCounter(0) !See([ENEMY])  !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoRomReaction","GLOBAL",1) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) Global("P#CoranFriend","GLOBAL",1) Global("P#CREDR1","LOCALS",0)~ THEN ~%EDWIN_BANTER%~ CRED1
@232
DO ~SetGlobal("P#CREDR1","LOCALS",1)~
== ~%EDWIN_BANTER%~ @233
== ~%CORAN_BANTER%~ @234
== ~%EDWIN_BANTER%~ @235
== ~%EDWIN_BANTER%~ @236
== ~%EDWIN_BANTER%~ @237
== ~%EDWIN_BANTER%~ @238
== ~%CORAN_BANTER%~ @239
== ~%EDWIN_BANTER%~ @240
== ~%CORAN_BANTER%~ @241
== ~%EDWIN_BANTER%~ @242
== ~%EDWIN_BANTER%~ IF ~CheckStatLT(Player1,10,INT)~ THEN @243
EXIT

CHAIN IF ~%BGT_VAR% InParty("coran") InMyArea("coran") CombatCounter(0) !See([ENEMY])  !StateCheck("coran",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) Global("P#CoRomReaction","GLOBAL",1) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CRKH1","LOCALS",0)~ THEN ~%KHALID_BANTER%~ CRKH1
@244
DO ~SetGlobal("P#CRKH1","LOCALS",1)~
== ~%JAHEIRA_BANTER%~ @245
== ~%JAHEIRA_BANTER%~ @246
== ~%CORAN_BANTER%~ @247
== ~%JAHEIRA_BANTER%~ @248
== ~%CORAN_BANTER%~ @249
== ~%JAHEIRA_BANTER%~ @250
== ~%KHALID_BANTER%~ @251
== ~%JAHEIRA_BANTER%~ @252
== ~%CORAN_BANTER%~ @253
== ~%KHALID_BANTER%~ @254
== ~%CORAN_BANTER%~ @255
== ~%KHALID_BANTER%~ @256
== ~%JAHEIRA_BANTER%~ @257
== ~%CORAN_BANTER%~ @258
== ~%JAHEIRA_BANTER%~ @259
== ~%CORAN_BANTER%~ @260
EXIT

/* Kagain */
CHAIN IF ~%BGT_VAR% InParty("coran") InMyArea("coran") CombatCounter(0) !See([ENEMY]) !StateCheck("kagain",CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoRomReaction","GLOBAL",1) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) !GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CoranFriend","GLOBAL",1) Global("P#CRKA1","LOCALS",0)~ THEN ~%KAGAIN_BANTER%~ CRKA1
@261
DO ~SetGlobal("P#CRKA1","LOCALS",1)~
== ~%CORAN_BANTER%~ @262
EXIT

CHAIN IF ~%BGT_VAR% InParty("coran") InMyArea("coran") CombatCounter(0) !See([ENEMY]) !StateCheck("kivan",CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoRomReaction","GLOBAL",1) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) !GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CoranFriend","GLOBAL",1) Global("P#CRKI1","LOCALS",0)~ THEN ~%KIVAN_BANTER%~ CRKI1
@263
DO ~ SetGlobal("P#CRKI1","LOCALS",1)~
== ~%CORAN_BANTER%~ @264
== ~%KIVAN_BANTER%~ @265
== ~%CORAN_BANTER%~ @266
== ~%KIVAN_BANTER%~ @267
== ~%CORAN_BANTER%~ @268
== ~%KIVAN_BANTER%~ @269
== ~%CORAN_BANTER%~ @270 
== ~%KIVAN_BANTER%~ @271
== ~%CORAN_BANTER%~ @272
== ~%KIVAN_BANTER%~ @273
EXIT

/* Montaron */
CHAIN IF ~%BGT_VAR% Global("P#CRMO1","LOCALS",0) Global("P#CoranMatch","GLOBAL",1) Global("P#CoranFriend","GLOBAL",1) InParty("coran") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoRomReaction","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) !GlobalGT("P#CoranLover","GLOBAL",0) See("coran") CombatCounter(0) !See([ENEMY])~ THEN ~%MONTARON_BANTER%~ CRMO1
@274
DO ~SetGlobal("P#CRMO1","LOCALS",1)~
== ~%CORAN_BANTER%~ @275
EXIT

/* Skie */
CHAIN IF ~%BGT_VAR% Global("P#CRSK1","LOCALS",0) !GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CoranFriend","GLOBAL",1) Global("P#CoRomReaction","GLOBAL",1) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck("skie",CD_STATE_NOTVALID) InParty("eldoth") See("eldoth") CombatCounter(0) !See([ENEMY])~ THEN ~%SKIE_BANTER%~ CRSK1
@276
DO ~SetGlobal("P#CRSK1","LOCALS",1)~
== ~%CORAN_BANTER%~ @277
== ~%SKIE_BANTER%~ @278
== ~%SKIE_BANTER%~ @279
== ~%CORAN_BANTER%~ @280
== ~%SKIE_BANTER%~ @281
== ~%SKIE_BANTER%~ @282
== ~%SKIE_BANTER%~ @283
== ~%CORAN_BANTER%~ @284
EXIT

/* Viconia_R1 */

CHAIN IF ~%BGT_VAR% Global("P#CRVI1","LOCALS",0) Race(Player1,ELF) GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CoRomReaction","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) InParty("viconia") See("viconia") CombatCounter(0) !See([ENEMY]) !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN ~%CORAN_BANTER%~ CRVI1
@285
DO ~SetGlobal("P#CRVI1","GLOBAL",1)~
== ~%VICONIA_BANTER%~ @286
== ~%CORAN_BANTER%~ @287
== ~%VICONIA_BANTER%~ @288
== ~%CORAN_BANTER%~ @289
== ~%VICONIA_BANTER%~ @290
== ~%CORAN_BANTER%~ @291
== ~%VICONIA_BANTER%~ @292
EXIT

/* Xan */
CHAIN IF ~%BGT_VAR% Global("P#CRXA1","LOCALS",0) GlobalGT("P#CoranLover","GLOBAL",0) Global("P#CoRomReaction","GLOBAL",1) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) !StateCheck("xan",CD_STATE_NOTVALID) CombatCounter(0) !See([ENEMY])~ THEN ~%XAN_BANTER%~ CRXA1
@293
DO ~SetGlobal("P#CRXA1","LOCALS",1)~
== ~%CORAN_BANTER%~ @294
== ~%XAN_BANTER%~ @295
== ~%CORAN_BANTER%~ @296
EXIT

/* Yeslick */
CHAIN IF ~%BGT_VAR% Global("P#CRYE1","LOCALS",0) GlobalGT("P#CoranLover","GLOBAL",0) InParty("coran") InMyArea("coran") CombatCounter(0) !See([ENEMY]) !StateCheck("yeslick",CD_STATE_NOTVALID) !StateCheck("coran",CD_STATE_NOTVALID)~ THEN ~%YESLICK_BANTER%~ CRYE1
@297
DO ~SetGlobal("P#CRYE1","LOCALS",1)~
== ~%CORAN_BANTER%~ @298
== ~%YESLICK_BANTER%~ @299
== ~%CORAN_BANTER%~ @300
== ~%YESLICK_BANTER%~ @301
EXIT