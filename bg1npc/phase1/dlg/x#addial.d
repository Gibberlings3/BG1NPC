/* CONTENTS */
/* Garrick */
///* Garrick - Nashkel mine banter */
///* Garrick - Chapter5 */
/* Ajantis */
///* PC is a paladin */
///* Walls of Baldur's Gate */
///* Ajantis' shield */
/* FALDORN */
///* Faldorn Friend Talk 1 */
///* Faldorn Friend Talk 2 */
///* Faldorn Friend Talk 3 */
/* EDWIN */
///* Edwin Friend talk 1 - do you know how lucky you are */
///* Edwin and Dynaheir */
///* Edwin Friend Talk 2 - Edwin discusses women */
/* Xzar */
/* SKIE */
/* Kivan */
/* Shar-Teel from Cliffette's BG2: */
/*  Jaheira Druid Specials */

ADD_TRANS_ACTION ~%tutu_var%KEEPER~ BEGIN 4 END BEGIN END
~SetGlobal("X#GainedEntryCandlekeep","GLOBAL",1) RealSetGlobalTimer("X#InsideCandlekeep","GLOBAL",200)~

BEGIN X#ADDIAL

/* Garrick */
APPEND ~%GARRICK_JOINED%~

///* Garrick - Nashkel mine banter */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#GarriNashkel","GLOBAL",1)~ GarrickNashkel
SAY @0
++ @1 DO ~SetGlobal("X#GarriNashkel","GLOBAL",2)~ + GANA1.1
++ @2 DO ~SetGlobal("X#GarriNashkel","GLOBAL",2)~ + GANA1.2
++ @3 DO ~SetGlobal("X#GarriNashkel","GLOBAL",2)~ + GANA1.3
++ @4 DO ~SetGlobal("X#GarriNashkel","GLOBAL",2)~ + GANA1.4
++ @5 DO ~SetGlobal("X#GarriNashkel","GLOBAL",2)~ + GANA1.1
END

IF ~~ GANA1.1
SAY @6
++ @7 + GANA1.5
++ @8 + GANA1.5
++ @9 EXIT
END

IF ~~ GANA1.2
SAY @10
++ @7 + GANA1.5
++ @11 + GANA1.5
++ @9 EXIT
END

IF ~~ GANA1.3
SAY @12
IF ~~ EXIT
END

IF ~~ GANA1.4
SAY @13
IF ~~ EXIT
END

IF ~~ GANA1.5
SAY @14
++ @15 EXIT
++ @16 EXIT
++ @17 EXIT
++ @18 EXIT
END

///* Garrick - Chapter5 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#GarriWar","GLOBAL",1)~ GarrickWar
SAY @19
++ @20 DO ~SetGlobal("X#GarriWar","GLOBAL",2)~ + GAWA1.1
++ @21 DO ~SetGlobal("X#GarriWar","GLOBAL",2)~ + GAWA1.2
++ @22 DO ~SetGlobal("X#GarriWar","GLOBAL",2)~ + GAWA1.3
++ @23 DO ~SetGlobal("X#GarriWar","GLOBAL",2)~ + GAWA1.3
END

IF ~~ GAWA1.1
SAY @24
IF ~~ EXIT
END

IF ~~ GAWA1.2
SAY @25
++ @26 + GAWA1.4
++ @27 + GAWA1.4
++ @28 EXIT
++ @29 EXIT
END

IF ~~ GAWA1.3
SAY @30
++ @31 + GAWA1.4
++ @32 + GAWA1.1
++ @33 + GAWA1.5
++ @34 + GAWA1.2
END

IF ~~ GAWA1.4
SAY @35
IF ~~ THEN EXIT
END

IF ~~ GAWA1.5
SAY @36
IF ~~ THEN EXIT
END

END

/* Ajantis */
APPEND ~%AJANTIS_JOINED%~

///* PC is a paladin */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjPaladinFriendTalk","GLOBAL",1)~ THEN BEGIN AJPaladin
SAY @37
++ @38 DO ~SetGlobal("X#AjPaladinFriendTalk","GLOBAL",2)~ + P2P_finish
+ ~Gender(Player1,MALE)~ + @39 DO ~SetGlobal("X#AjPaladinFriendTalk","GLOBAL",2)~ + P2P_chicks
+ ~Gender(Player1,FEMALE)~ + @40 DO ~SetGlobal("X#AjPaladinFriendTalk","GLOBAL",2)~ + P2P_boys
++ @41 DO ~SetGlobal("X#AjPaladinFriendTalk","GLOBAL",2)~ + P2P_Legend
++ @42 DO ~SetGlobal("X#AjPaladinFriendTalk","GLOBAL",2)~ + P2P_Icon
END

IF ~~ P2P_chicks
SAY @43
IF ~~ THEN EXIT
END

IF ~~ P2P_boys
SAY @44
IF ~~ THEN EXIT
END

IF ~~ P2P_Legend
SAY @45
++ @46 + P2P_legend2
++ @47 + P2P_legend3
END

IF ~~ P2P_legend2
SAY @48
IF ~~ THEN EXIT
END

IF ~~ P2P_legend3
SAY @49
IF ~~ THEN EXIT
END

IF ~~ P2P_Icon
SAY @50
++ @51 + P2P_finish
++ @52 + P2P_finish2
END

IF ~~ P2P_finish
SAY @53
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ P2P_finish2
SAY @54
IF ~~ THEN EXIT
END

///* Walls of Baldur's Gate */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjWalls","GLOBAL",1)~ THEN BEGIN AjWalls1
SAY @55
+ ~CheckStatGT(Player1,15,INT)~ + @56 DO ~SetGlobal("X#AjWalls","GLOBAL",2)~ + Culture1
++ @57 DO ~SetGlobal("X#AjWalls","GLOBAL",2) RealSetGlobalTimer("X#AjantisShield","GLOBAL",3600)~ + Culture2
++ @58 DO ~SetGlobal("X#AjWalls","GLOBAL",2) RealSetGlobalTimer("X#AjantisShield","GLOBAL",3600)~ + Culture3
END

IF ~~ Culture1
SAY @59
++ @60 + Culture3
++ @61 + Culture2
END

IF ~~ Culture2
SAY @62
++ @63 + FailedBluff1
END

IF ~~ Culture3
SAY @64
IF ~~ THEN EXIT
END

IF ~~ FailedBluff1
SAY @65
IF ~~ THEN EXIT
END

///* Ajantis' shield */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjShieldFriendTalk","GLOBAL",1)~ THEN BEGIN AjCrest1
SAY @66
++ @67 DO ~SetGlobal("X#AjShieldFriendTalk","GLOBAL",2)~ + Family1
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @68 DO ~SetGlobal("X#AjShieldFriendTalk","GLOBAL",2)~ + Family2
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @68 DO ~SetGlobal("X#AjShieldFriendTalk","GLOBAL",2)~ + Family2Bhaal
++ @69 DO ~SetGlobal("X#AjShieldFriendTalk","GLOBAL",2)~ + Family3
++ @70 DO ~SetGlobal("X#AjShieldFriendTalk","GLOBAL",2)~ EXIT
END

IF ~~ Family1
SAY @71
= @72
++ @73 + Humble1
++ @74 + Humble2
END

IF ~~ Family2
SAY @75
++ @76 EXIT
END

IF ~~ Family2Bhaal
SAY @77
= @78
= @72
++ @73 + Humble1
++ @79 + Humble2
END

IF ~~ Family3
SAY @80
+ ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @81 + Family1.1
+ ~OR(3) !InParty("%IMOEN_DV%") !InMyArea("%IMOEN_DV%") StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @82 + Family1.1
++ @83 + Family1.2
END

IF ~~ Humble1
SAY @84
IF ~~ THEN EXIT
END

IF ~~ Humble2
SAY @85
IF ~~ THEN EXIT
END

IF ~~ Family1.1
SAY @86
IF ~~ THEN EXIT
END

IF ~~ Family1.2
SAY @87
IF ~~ THEN EXIT
END

END

/* FALDORN */
APPEND ~%FALDORN_JOINED%~

///* Faldorn Friend Talk 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#FaFriendTalk","GLOBAL",2)~ THEN BEGIN FAPC1
SAY @88
IF ~~ THEN REPLY @89 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",3) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC1.1
IF ~~ THEN REPLY @90 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",3) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC1.2
IF ~~ THEN REPLY @91 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",3) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC1.3
IF ~~ THEN REPLY @92 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",3) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC1.4
IF ~~ THEN REPLY @93 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",3) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC1.5
IF ~~ THEN REPLY @94 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",3) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC1.6
END

IF ~~ THEN BEGIN FAPC1.1
SAY @95
IF ~~ THEN REPLY @96 GOTO FAPC1.7
IF ~~ THEN REPLY @97 GOTO FAPC1.7
IF ~~ THEN REPLY @98 GOTO FAPC1.2
END

IF ~~ THEN BEGIN FAPC1.2
SAY @99
IF ~~ THEN GOTO FAPC1.2A
END

IF ~~ THEN BEGIN FAPC1.3
SAY @100
IF ~~ THEN GOTO FAPC1.2A
END

IF ~~ THEN BEGIN FAPC1.2A
SAY @101
IF ~~ THEN REPLY @102 GOTO FAPC1.8
IF ~~ THEN REPLY @103 GOTO FAPC1.4
IF ~~ THEN REPLY @104 GOTO FAPC1.9
END

IF ~~ THEN BEGIN FAPC1.4
SAY @105
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FAPC1.5
SAY @106
IF ~~ THEN GOTO FAPC1.2A
END

IF ~~ THEN BEGIN FAPC1.6
SAY @107
IF ~~ THEN GOTO FAPC1.2A
END

IF ~~ THEN BEGIN FAPC1.7
SAY @108
IF ~~ THEN GOTO FAPC1.4
END

IF ~~ THEN BEGIN FAPC1.8
SAY @109
IF ~~ THEN REPLY @110 GOTO FAPC1.4
IF ~~ THEN REPLY @111 GOTO FAPC1.4
IF ~~ THEN REPLY @112GOTO FAPC1.4
IF ~~ THEN REPLY @113GOTO FAPC1.10
END

IF ~~ THEN BEGIN FAPC1.9
SAY @114
IF ~~ THEN REPLY @110 GOTO FAPC1.4
IF ~~ THEN REPLY @115GOTO FAPC1.4
IF ~~ THEN REPLY @112GOTO FAPC1.4
IF ~~ THEN REPLY @113GOTO FAPC1.10
END

IF ~~ THEN BEGIN FAPC1.10
SAY @116
IF ~~ THEN EXIT
END

///* Faldorn Friend Talk 2 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#FaFriendTalk","GLOBAL",4)~ THEN BEGIN FAPC2
SAY @117
IF ~~ THEN REPLY @118 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",5) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC2.1
IF ~~ THEN REPLY @119 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",5) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC2.2
IF ~~ THEN REPLY @120 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",5) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC2.3
IF ~~ THEN REPLY @121 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",5) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC2.4
IF ~~ THEN REPLY @122 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",5) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC2.5
IF ~~ THEN REPLY @123 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",5) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC2.6
IF ~~ THEN REPLY @124 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",5) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC2.7
END

IF ~~ THEN BEGIN FAPC2.1
SAY @125
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FAPC2.2
SAY @126
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FAPC2.3
SAY @127
IF ~~ THEN REPLY @128 EXIT
IF ~~ THEN REPLY @129 GOTO FAPC2.1
IF ~~ THEN REPLY @130 GOTO FAPC2.4
IF ~~ THEN REPLY @131 GOTO FAPC2.5
IF ~~ THEN REPLY @132 GOTO FAPC2.6
IF ~~ THEN REPLY @124 GOTO FAPC2.7
END

IF ~~ THEN BEGIN FAPC2.4
SAY @133
IF ~Class(Player1,DRUID_ALL)~ THEN REPLY @134 GOTO FAPC2.9
IF ~~ THEN REPLY @135 GOTO FAPC2.9
IF ~~ THEN REPLY @136 GOTO FAPC2.10
IF ~~ THEN REPLY @137 GOTO FAPC2.10
END

IF ~~ THEN BEGIN FAPC2.5
SAY @138
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FAPC2.6
SAY @139
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FAPC2.7
SAY @140
IF ~~ THEN REPLY @141 GOTO FAPC2.11
IF ~~ THEN REPLY @142 EXIT
IF ~~ THEN REPLY @143 GOTO FAPC2.11
IF ~~ THEN REPLY @144 GOTO FAPC2.2
END

IF ~~ THEN BEGIN FAPC2.9
SAY @145
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FAPC2.10
SAY @146
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FAPC2.11
SAY @147
IF ~~ THEN EXIT
END

///* Faldorn Friend Talk 3 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#FaFriendTalk","GLOBAL",6)~ THEN BEGIN FAPC3
SAY @148
IF ~~ THEN REPLY @149 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",7) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC3.1
IF ~~ THEN REPLY @150 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",7) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC3.2
IF ~~ THEN REPLY @151 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",7) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC3.3
IF ~~ THEN REPLY @152 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",7) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC3.4
IF ~~ THEN REPLY @153 DO ~SetGlobal("X#FaFriendTalk","GLOBAL",7) SetGlobal("X#FaFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#FaFriendTalkTime","GLOBAL",7200)~ GOTO FAPC3.5
END

IF ~~ THEN BEGIN FAPC3.1
SAY @154
IF ~~ THEN REPLY @155 GOTO FAPC3.6
IF ~~ THEN REPLY @156 EXIT
IF ~~ THEN REPLY @157 GOTO FAPC3.2
IF ~~ THEN REPLY @158 GOTO FAPC3.2
END

IF ~~ THEN BEGIN FAPC3.2
SAY @159
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FAPC3.3
SAY @160
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FAPC3.4
SAY @161
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FAPC3.5
SAY @162
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FAPC3.6
SAY @163
IF ~~ THEN REPLY @164 GOTO FAPC3.6.1
IF ~~ THEN REPLY @165 GOTO FAPC3.6.2
IF ~~ THEN REPLY @166 EXIT
END

IF ~~ THEN BEGIN FAPC3.6.1
SAY @167
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FAPC3.6.2
SAY @168
IF ~~ THEN EXIT
END

END

/* EDWIN */
APPEND ~%EDWIN_JOINED%~

///* Edwin Friend talk 1 - do you know how lucky you are */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinFriendTalk","GLOBAL",2)~ THEN BEGIN EDPC1
SAY @169
++ @170 DO ~SetGlobal("X#EdwinFriendTalk","GLOBAL",3) RealSetGlobalTimer("X#EDFriendTalkTime","GLOBAL",5000)~ GOTO EDPC1.1
+ ~Class(Player1,MAGE_ALL)~ + @171 DO ~SetGlobal("X#EdwinFriendTalk","GLOBAL",3) SetGlobal("X#EdFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#EDFriendTalkTime","GLOBAL",5000)~ GOTO EDPC1.2
+ ~Class(Player1,SORCERER)~ + @172 DO ~SetGlobal("X#EdwinFriendTalk","GLOBAL",3) SetGlobal("X#EdFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#EDFriendTalkTime","GLOBAL",5000)~ GOTO EDPC1.3
++ @173 DO ~SetGlobal("X#EdwinFriendTalk","GLOBAL",3) SetGlobal("X#EdFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#EDFriendTalkTime","GLOBAL",5000)~ GOTO EDPC1.4
++ @174 DO ~SetGlobal("X#EdwinFriendTalk","GLOBAL",3) SetGlobal("X#EdFriendCheck","GLOBAL",0) RealSetGlobalTimer("X#EDFriendTalkTime","GLOBAL",5000)~ GOTO EDPC1.5
END

IF ~~ EDPC1.1
SAY @175
++ @176 GOTO EDPC1.4
++ @177 GOTO EDPC1.6
++ @178 GOTO EDPC1.5
END

IF ~~ EDPC1.2
SAY @179
++ @180 GOTO EDPC1.7
++ @181 GOTO EDPC1.8
++ @182 EXIT
END

IF ~~ EDPC1.3
SAY @183
IF ~~ THEN EXIT
END

IF ~~ EDPC1.4
SAY @184
++ @185 EXIT
++ @186 GOTO EDPC1.8
++ @182 EXIT
END

IF ~~ EDPC1.5
SAY @187
IF ~~ THEN EXIT
END

IF ~~ EDPC1.6
SAY @188
++ @189 GOTO EDPC1.5
++ @190 GOTO EDPC1.4
++ @191 EXIT
END

IF ~~ EDPC1.7
SAY @192
++ @193 GOTO EDPC1.9
++ @194 GOTO EDPC1.8
++ @195 EXIT
END

IF ~~ EDPC1.8
SAY @196
IF ~~ THEN GOTO EDPC1.9
END

IF ~~ EDPC1.9
SAY @197
IF ~~ THEN EXIT
END

///* Edwin and Dynaheir */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinDynaheir","GLOBAL",2)~ THEN BEGIN EDPC2
SAY @198
+ ~!Alignment(Player1,MASK_EVIL)~ + @199 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",3) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ GOTO EDPC2.1
+ ~Alignment(Player1,MASK_EVIL)~ + @199 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",3) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ + EDPC2.1a
+ ~Gender(Player1,FEMALE) CheckStatGT(Player1,12,CHR)~ + @200 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",3) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ GOTO EDPC2.2a
+ ~Gender(Player1,FEMALE) !CheckStatGT(Player1,12,CHR)~ + @200 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",3) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ GOTO EDPC2.2b
++ @201 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",3) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ GOTO EDPC2.3
++ @202 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",3) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ GOTO EDPC2.4
++ @203 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",3) ActionOverride("edwin",ReallyForceSpell("edwin",WIZARD_PROTECTION_FROM_FIRE)) ActionOverride("edwin",ReallyForceSpell(Player1,WIZARD_FIREBALL)) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ EXIT
++ @204 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",3) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ GOTO EDPC2.4
++ @205  DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",3) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ EXIT
END

IF ~~ EDPC2.1
SAY @206
IF ~~ THEN EXIT
END

IF ~~ EDPC2.1a
SAY @207
IF ~~ THEN EXIT
END

IF ~~ EDPC2.2a
SAY @208
++ @209 + EDPC2.1a
+ ~CheckStatGT(Player1,15,CHR)~ + @210 + EDPC2.8
+ ~!CheckStatGT(Player1,15,CHR)~ + @210 + EDPC2.5
++ @201 + EDPC2.3a
END

IF ~~ EDPC2.2b
SAY @211
++ @210 + EDPC2.5
++ @212 GOTO EDPC2.1
++ @201 + EDPC2.3
END

IF ~~ EDPC2.3
SAY @213
IF ~~ EXIT
END

IF ~~ EDPC2.3a
SAY @214
IF ~~ EXIT
END

IF ~~ EDPC2.4
SAY @215
IF ~~ THEN EXIT
END

IF ~~ EDPC2.5
SAY @216
++ @217 + EDPC2.6
++ @218 + EDPC2.7
++ @219 + EDPC2.3
+ ~CheckStatGT(Player1,15,INT)~ + @220 + EDPC2.9
END

IF ~~ EDPC2.6
SAY @221
IF ~~ THEN EXIT
END

IF ~~ EDPC2.7
SAY @222
IF ~~ THEN EXIT
END

IF ~~ EDPC2.8
SAY @223
IF ~~ THEN GOTO EDPC2.1a
END

IF ~~ EDPC2.9
SAY @224
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinDynaheir","GLOBAL",4)~ THEN BEGIN EDPC3
SAY @225
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @226 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",5) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ GOTO EDPC3.1
++ @227 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",5) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ GOTO EDPC3.2
++ @228 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",5) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ GOTO EDPC3.3
+ ~Gender(Player1, FEMALE)~ + @229 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",5) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ GOTO EDPC3.6
++ @230 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",5) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ EXTERN ~%DYNAHEIR_BANTER%~ EDPC3.4
++ @231 DO ~SetGlobal("X#EdwinDynaheir","GLOBAL",5) RealSetGlobalTimer("X#EDDynaTalkTime","GLOBAL",7200)~ + EDPC3.12
END

IF ~~ EDPC3.1
SAY @232
= @233
++ @234 + EDPC3.5
++ @235 EXTERN ~%DYNAHEIR_BANTER%~ EDPC3.4
++ @236 GOTO EDPC3.2
+ ~Gender(Player1,FEMALE) CheckStatGT(Player1, 15,CHR)~ + @237 GOTO EDPC3.8
+ ~Alignment(Player1,MASK_EVIL) !Gender(Player1, FEMALE)~ + @237 GOTO EDPC3.7
END

IF ~~ EDPC3.2
SAY @238
= @239
++ @240 + EDPC3.5
++ @235 EXTERN ~%DYNAHEIR_BANTER%~ EDPC3.4
++ @241 GOTO EDPC3.3
+ ~Gender(Player1,FEMALE) CheckStatGT(Player1,15,CHR)~ + @237 GOTO EDPC3.8
+ ~Alignment(Player1,MASK_EVIL) !Gender(Player1,FEMALE)~ + @237 GOTO EDPC3.7
END

IF ~~ EDPC3.3
SAY @242
IF ~~ THEN DO ~SetGlobalTimer("X#EdwinKillsDynaheir","GLOBAL",15000)~ EXIT
END

IF ~~ EDPC3.5
SAY @243
IF ~~ THEN DO ~SetGlobalTimer("X#EdwinKillsDynaheir","GLOBAL",15000)~ EXIT
END

IF ~~ THEN BEGIN EDPC3.6
SAY @244
+ ~!CheckStatGT(Player1, 15, INT)~ + @245 GOTO EDPC3.9
++ @246 EXTERN ~%DYNAHEIR_BANTER%~ EDPC3.4
+ ~InParty("minsc") CheckStatGT(Player1, 15,INT)~ + @247 + EDPC3.11
+ ~!InParty("minsc") CheckStatGT(Player1, 15,INT)~ + @248 + EDPC3.11
++ @249 + EDPC3.10
END

IF ~~ EDPC3.7
SAY @250
IF ~~ THEN DO ~SetGlobalTimer("X#EdwinKillsDynaheir","GLOBAL",15000)~ EXIT
END

IF ~~ EDPC3.8
SAY @251
+ ~InParty("minsc") CheckStatGT(Player1,15,INT)~ + @252 + EDPC3.11
+ ~!InParty("minsc") CheckStatGT(Player1,15,INT)~ + @253 + EDPC3.11
+ ~!CheckStatGT(Player1,15,INT)~ + @254 + EDPC3.9
++ @240 + EDPC3.5
++ @255 + EDPC3.12
END

IF ~~ EDPC3.9
SAY @256
IF ~~ THEN DO ~SetGlobalTimer("X#EdwinKillsDynaheir","GLOBAL",15000)~ EXIT
END

IF ~~ EDPC3.10
SAY @257
IF ~~ THEN DO ~SetGlobalTimer("X#EdwinKillsDynaheir","GLOBAL",15000)~ EXIT
END

IF ~~ EDPC3.11
SAY @258
= @259
IF ~~ EXIT
END

IF ~~ EDPC3.12
SAY @260
IF ~~ THEN EXIT
END

///* Edwin Friend Talk 2 - Edwin discusses women */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinFriendTalk","GLOBAL",4)~ THEN BEGIN EDPC4
SAY @261
++ @262 DO ~SetGlobal("X#EdwinFriendTalk","GLOBAL",5) SetGlobal("X#EdFriendCheck","GLOBAL",0)~ GOTO EDPC4.1
++ @263 DO ~SetGlobal("X#EdwinFriendTalk","GLOBAL",5) SetGlobal("X#EdFriendCheck","GLOBAL",0)~ GOTO EDPC4.2
+ ~Gender(Player1,MALE)~ + @264 DO ~SetGlobal("X#EdwinFriendTalk","GLOBAL",5) SetGlobal("X#EdFriendCheck","GLOBAL",0)~ GOTO EDPC4.3
+ ~Gender(Player1,FEMALE) OR(2) CheckStatGT(Player1,12,INT) CheckStatGT(Player1,12,CHR)~ + @265 DO ~SetGlobal("X#EdwinFriendTalk","GLOBAL",5) SetGlobal("X#EdFriendCheck","GLOBAL",0)~ GOTO EDPC4.4a
++ @266 GOTO EDPC4.5
END

IF ~~ EDPC4.1
SAY @267
++ @263 GOTO EDPC4.2
+ ~Gender(Player1,MALE)~ + @264 GOTO EDPC4.3
+ ~Gender(Player1,FEMALE) OR(2) CheckStatGT(Player1,12,INT) CheckStatGT(Player1,12,CHR)~ + @268 GOTO EDPC4.4
++ @266 GOTO EDPC4.5
END

IF ~~ EDPC4.2
SAY @269
IF ~~ THEN EXIT
END

IF ~~ EDPC4.3
SAY @270
IF ~~ THEN EXIT
END

IF ~~ EDPC4.4
SAY @271
++ @272 GOTO EDPC4.5
++ @273 EXIT
++ @274 + EDPC4.4a
END

IF ~~ EDPC4.4a
SAY @275
++ @276 + EDPC4.6
++ @277 + EDPC4.7
++ @278 + EDPC4.8
END

IF ~~ EDPC4.5
SAY @279
IF ~~ THEN EXIT
END

IF ~~ EDPC4.6
SAY @280
IF ~~ THEN EXIT
END

IF ~~ THEN EDPC4.7
SAY @281
IF ~~ THEN EXIT
END

IF ~~ EDPC4.8
SAY @282
++ @283 + EDPC4.9
++ @284 + EDPC4.10
++ @285 + EDPC4.9
END

IF ~~ EDPC4.9
SAY @286
=@287
++ @288 EXIT
++ @289 EXIT
++ @290 EXIT
END

IF ~~ EDPC4.10
SAY @291
IF ~~ THEN EXIT
END

END

CHAIN3 ~%DYNAHEIR_BANTER%~ EDPC3.4
@292
DO ~ActionOverride("minsc",LeaveParty()) ActionOverride("minsc",SetLeavePartyDialogFile()) ActionOverride("minsc",ChangeAIScript("",DEFAULT)) ActionOverride("minsc",Enemy()) ActionOverride("dynaheir",LeaveParty()) ActionOverride("dynaheir",SetLeavePartyDialogFile()) ActionOverride("dynaheir",ChangeAIScript("",DEFAULT)) ActionOverride("dynaheir",Enemy())~
EXIT

/* Xzar */
APPEND ~%XZAR_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzFriendTalk","GLOBAL",3)~ THEN BEGIN X#XzarFriend2
SAY @293
++ @294 DO ~SetGlobal("X#XzFriendTalk","GLOBAL",4)~ + XZPC2.1
++ @295 DO ~SetGlobal("X#XzFriendTalk","GLOBAL",4)~ + XZPC2.2
++ @296 DO ~SetGlobal("X#XzFriendTalk","GLOBAL",4)~ + XZPC2.3
END

IF ~~ XZPC2.1
SAY @297
++ @295 + XZPC2.2
++ @298 + XZPC2.3
END

IF ~~ XZPC2.2
SAY @299
++ @300 + XZPC2.4
++ @301 + XZPC2.3
END

IF ~~ XZPC2.3
SAY @302
IF ~~ THEN EXIT
END

IF ~~ XZPC2.4
SAY @303
++ @304 + XZPC2.5
++ @305 + XZPC2.3
++ @306 + XZPC2.9
END

IF ~~ XZPC2.5
SAY @307
++ @308 + XZPC2.7
++ @309 + XZPC2.8
++ @310 + XZPC2.3
END

IF ~~ XZPC2.7
SAY @311
IF ~~ THEN EXIT
END

IF ~~ XZPC2.8
SAY @312
IF ~~ THEN EXIT
END

IF ~~ XZPC2.9
SAY @313
++ @314 + XZPC2.3
++ @315 + XZPC2.10
++ @316 + XZPC2.7
END

IF ~~ XZPC2.10
SAY @317
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#XzarMendas","GLOBAL",1)~ THEN BEGIN XzarMendas
SAY @318
= @319
++ @320 DO ~SetGlobal("X#XzarMendas","GLOBAL",2)~ + XZPC3.0
END

IF ~~ XZPC3.0
SAY @321
= @322
++ @323 + XZPC3.1
++ @324 + XZPC3.2
++ @325 + XZPC3.3
END

IF ~~ XZPC3.1
SAY @326
++ @327 + XZPC3.4
++ @328 + XZPC3.5
++ @329 + XZPC3.6
END

IF ~~ XZPC3.2
SAY @330
IF ~~ THEN GOTO XZPC3.1
END

IF ~~ XZPC3.3
SAY @331
IF ~~ THEN EXIT
END

IF ~~ XZPC3.4
SAY @332
++ @333 + XZPC3.7
++ @334 + XZPC3.8
++ @335 + XZPC3.6
END

IF ~~ XZPC3.5
SAY @336
IF ~~ THEN GOTO XZPC3.5a
END

IF ~~ XZPC3.5a
SAY @337
++ @333 + XZPC3.7
++ @334 + XZPC3.8
++ @335 + XZPC3.6
END

IF ~~ XZPC3.6
SAY @338
++ @339 + XZPC3.18
++ @340 + XZPC3.7a
END

IF ~~ XZPC3.7
SAY @341
IF ~~ THEN GOTO XZPC3.7a
END

IF ~~ XZPC3.7a
SAY @342
++ @343 + XZPC3.9
++ @344 + XZPC3.18
END

IF ~~ XZPC3.8
SAY @345
IF ~~ THEN GOTO XZPC3.8a
END

IF ~~ XZPC3.8a
SAY @346
++ @343 + XZPC3.9
++ @347 + XZPC3.18
END

IF ~~ XZPC3.9
SAY @348
IF ~~ THEN GOTO XZPC3.10
END

IF ~~ XZPC3.10
SAY @349
++ @350 + XZPC3.11
++ @351 + XZPC3.12
END

IF ~~ XZPC3.11
SAY @352
IF ~~ THEN GOTO XZPC3.12
END

IF ~~ XZPC3.12
SAY @353
++ @354 DO ~ApplyDamage(Player1,5,FIRE)~ GOTO XZPC3.13
END

IF ~~ XZPC3.13
SAY @355
++ @356 + XZPC3.14
END

IF ~~ XZPC3.14
SAY @357
++ @358 + XZPC3.15
++ @359 + XZPC3.16
++ @360 + XZPC3.17
END

IF ~~ XZPC3.15
SAY @361
IF ~~ THEN EXIT
END

IF ~~ XZPC3.16
SAY @362
IF ~~ THEN EXIT
END

IF ~~ XZPC3.17
SAY @363
IF ~~ THEN EXIT
END

IF ~~ XZPC3.18
SAY @364
++ @365 EXIT
++ @366 + XZPC3.10
++ @367 + XZPC3.19
END

IF ~~ XZPC3.19
SAY @368
++ @369 + XZPC3.10
++ @370 EXIT
END

END


/* SKIE */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("montaron") Global("X#SKMO1","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("montaron") !StateCheck("montaron",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKMO1
@371
DO ~SetGlobal("X#SKMO1","LOCALS",1)~
== ~%MONTARON_BANTER%~ @372
== ~%SKIE_BANTER%~ @373
== ~%MONTARON_BANTER%~ @374
== ~%SKIE_BANTER%~ @375
== ~%MONTARON_BANTER%~ @376
== ~%SKIE_BANTER%~ @377
== ~%MONTARON_BANTER%~ @378
== ~%SKIE_BANTER%~ @379
== ~%MONTARON_BANTER%~ @380
== ~%SKIE_BANTER%~ @381
== ~%MONTARON_BANTER%~ @382
== ~%SKIE_BANTER%~ @383
== ~%MONTARON_BANTER%~ @384
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("xzar") Global("X#SKXZ1","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("xzar") !StateCheck("xzar",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKXZ1
@385
DO ~SetGlobal("X#SKXZ1","LOCALS",1)~
== ~%XZAR_BANTER%~ @386
== ~%SKIE_BANTER%~ @387
== ~%XZAR_BANTER%~ @388
== ~%SKIE_BANTER%~ @389
== ~%XZAR_BANTER%~ @390
== ~%SKIE_BANTER%~ @391
== ~%XZAR_BANTER%~ @392
== ~%SKIE_BANTER%~ @393
== ~%XZAR_BANTER%~ @394
== ~%SKIE_BANTER%~ @395
== ~%XZAR_BANTER%~ @396
== ~%SKIE_BANTER%~ @397
== ~%XZAR_BANTER%~ @398
== ~%SKIE_BANTER%~ @399
== ~%XZAR_BANTER%~ @400
EXIT

/* Kivan */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#KIMI2","LOCALS",0) !StateCheck(Myself,CD_STATE_NOTVALID) InParty("minsc") See("minsc") !StateCheck("minsc",CD_STATE_NOTVALID) AreaType(FOREST) CombatCounter(0) !See([ENEMY])~ THEN ~%KIVAN_BANTER%~ KIMI2
@401
DO ~SetGlobal("X#KIMI2","LOCALS",1)~
== ~%MINSC_BANTER%~ @402
== ~%KIVAN_BANTER%~ @403
== ~%MINSC_BANTER%~ @404
= @405
== ~%MINSC_BANTER%~ @406
== ~%KIVAN_BANTER%~ @407
== ~%MINSC_BANTER%~ @408
== ~%KIVAN_BANTER%~ @409
== ~%DYNAHEIR_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @410
== ~%KIVAN_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @411
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @412
== ~%MINSC_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @413
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @414
== ~%MINSC_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @415
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @416
== ~%MINSC_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @417
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @418
== ~%MINSC_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @419
= @420
= @405
EXIT

/* Shar-Teel from Cliffette's BG2: */
CHAIN IF ~%BGT_VAR% InParty("sharteel") Global("X#EDSH2","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID) OR(10) AreaCheck("%NWBaldursGate%") AreaCheck("%NBaldursGate%") AreaCheck("%NEBaldursGate%") AreaCheck("%WBaldursGate%") AreaCheck("%CentralBaldursGate%") AreaCheck("%EBaldursGate%") AreaCheck("%WyrmsCrossing%") AreaCheck("%SWBaldursGate%") AreaCheck("%BaldursGateDocks%") AreaCheck("%SEBaldursGate%")~ THEN ~%EDWIN_BANTER%~ EDSH2
@422
DO ~SetGlobal("X#EDSH2","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @423
== ~%EDWIN_BANTER%~ @424
EXIT

CHAIN IF ~%BGT_VAR% Global("X#SHED2","LOCALS",1) InParty("edwin") CombatCounter(0) !See([ENEMY]) See("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ STEddyTalk2
@425
DO ~SetGlobal("X#SHED2","LOCALS",2)~
== ~%EDWIN_BANTER%~ @426
== ~%SHARTEEL_BANTER%~ @427
== ~%EDWIN_BANTER%~ @428
== ~%SHARTEEL_BANTER%~ @429
== ~%EDWIN_BANTER%~ @430
== ~%SHARTEEL_BANTER%~ @431
== ~%EDWIN_BANTER%~ @432
== ~%EDWIN_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @433
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @434
== ~%EDWIN_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @435
== ~%EDWIN_BANTER%~ IF ~OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @436
== ~%SHARTEEL_BANTER%~ @437
== ~%EDWIN_BANTER%~ @438
EXIT

CHAIN IF ~%BGT_VAR% InParty("ajantis") Global("X#SHAJ1","LOCALS",0) !See([ENEMY]) CombatCounter(0) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ STAJ1
@439
DO ~SetGlobal("X#SHAJ1","LOCALS",1)~
== ~%AJANTIS_BANTER%~ @440
= @441
== ~%SHARTEEL_BANTER%~ @442
== ~%AJANTIS_BANTER%~ @443
EXIT

CHAIN IF ~%BGT_VAR% InParty("ajantis") Global("X#SHAJ2","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ STAJ2
@444
DO ~SetGlobal("X#SHAJ2","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @445
== ~%AJANTIS_BANTER%~ @446
== ~%SHARTEEL_BANTER%~ @447
== ~%AJANTIS_BANTER%~ @448
== ~%SHARTEEL_BANTER%~ @449
== ~%AJANTIS_BANTER%~ @450
EXIT

CHAIN IF ~%BGT_VAR% InParty("sharteel") Global("X#AjSH1","GLOBAL",0) CombatCounter(0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%AJANTIS_BANTER%~ AJSH1
@451
DO ~SetGlobal("X#AjSH1","GLOBAL",1)~
== ~%SHARTEEL_BANTER%~ @452
== ~%AJANTIS_BANTER%~ @453
== ~%SHARTEEL_BANTER%~ @454
== ~%AJANTIS_BANTER%~ @455
== ~%SHARTEEL_BANTER%~ @456
== ~%AJANTIS_BANTER%~ @457
== ~%SHARTEEL_BANTER%~ @458
== ~%AJANTIS_BANTER%~ @459
== ~%SHARTEEL_BANTER%~ @460
EXIT

CHAIN IF ~%BGT_VAR% InParty("ajantis") Global("X#SHAJ3","GLOBAL",0) CombatCounter(0) Global("X#AjSH1","GLOBAL",1) !See([ENEMY]) See("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ STAJ3
@461
DO ~SetGlobal("X#SHAJ3","GLOBAL",1)~
== ~%AJANTIS_BANTER%~ @462
== ~%SHARTEEL_BANTER%~ @463
== ~%AJANTIS_BANTER%~ @464
== ~%SHARTEEL_BANTER%~ @465
== ~%AJANTIS_BANTER%~ @466
== ~%SHARTEEL_BANTER%~ @467
== ~%AJANTIS_BANTER%~ @468
EXIT

CHAIN IF ~%BGT_VAR% InParty("sharteel") Global("X#JASH2","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%JAHEIRA_BANTER%~ JASH2
@469
DO ~SetGlobal("X#JASH2","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @470
== ~%JAHEIRA_BANTER%~ @471
== ~%SHARTEEL_BANTER%~ @472
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @473
== ~%JAHEIRA_BANTER%~ @474
== ~%SHARTEEL_BANTER%~ @475
= @476
== ~%JAHEIRA_BANTER%~ @477
== ~%SHARTEEL_BANTER%~ @478
== ~%JAHEIRA_BANTER%~ @479
= @480
== ~%SHARTEEL_BANTER%~ @481
== ~%JAHEIRA_BANTER%~ @482
EXIT

CHAIN IF ~%BGT_VAR% InParty("sharteel") Global("X#VISH1","LOCALS",0) CombatCounter(0) Gender(Player1,MALE) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ VISH1
@483
DO ~SetGlobal("X#VISH1","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @484
== ~%VICONIA_BANTER%~ @485
== ~%SHARTEEL_BANTER%~ @486
== ~%VICONIA_BANTER%~ @487
== ~%SHARTEEL_BANTER%~ @488
== ~%VICONIA_BANTER%~ @489
EXIT

CHAIN IF ~%BGT_VAR% InParty("sharteel") Global("X#VISH2","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%VICONIA_BANTER%~ STVico2
@490
DO ~SetGlobal("X#VISH2","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @491
== ~%VICONIA_BANTER%~ @492
== ~%SHARTEEL_BANTER%~ @493
== ~%VICONIA_BANTER%~ @494
== ~%SHARTEEL_BANTER%~ @495
EXIT

CHAIN IF ~%BGT_VAR% InParty("viconia") Gender(Player1,MALE) Global("X#SHVI1","LOCALS",0) Global("X#SharSex","GLOBAL",0) CombatCounter(0) !See([ENEMY]) See("viconia") !StateCheck("viconia",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SHARTEEL_BANTER%~ STVI1
@496
DO ~SetGlobal("X#SHVI1","LOCALS",1)~
== ~%VICONIA_BANTER%~ @497
= @498
== ~%SHARTEEL_BANTER%~ @499
== ~%VICONIA_BANTER%~ @500
== ~%SHARTEEL_BANTER%~ @501
== ~%VICONIA_BANTER%~ @502
EXIT

CHAIN IF ~%BGT_VAR% InParty("sharteel") Global("X#SKSH2","LOCALS",0) CombatCounter(0) !See([ENEMY]) See("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID) !StateCheck(Myself,CD_STATE_NOTVALID)~ THEN ~%SKIE_BANTER%~ SKSH2
@503
DO ~SetGlobal("X#SKSH2","LOCALS",1)~
== ~%SHARTEEL_BANTER%~ @504
== ~%SKIE_BANTER%~ @505
== ~%SHARTEEL_BANTER%~ @506
== ~%SKIE_BANTER%~ @507
== ~%SHARTEEL_BANTER%~ @508
== ~%SKIE_BANTER%~ @509
== ~%SHARTEEL_BANTER%~ @510
EXIT

/*  Jaheira Druid Specials */
APPEND ~%JAHEIRA_JOINED%~

IF WEIGHT #-2 ~Global("X#JaheiraDruidTalk","GLOBAL",1)~ THEN BEGIN JADRU1
SAY @511
++ @512 DO ~SetGlobal("X#JaheiraDruidTalk","GLOBAL",2) RealSetGlobalTimer("X#JADruidTalkTime","GLOBAL",7200)~ + JADRU1.2
++ @513 DO ~SetGlobal("X#JaheiraDruidTalk","GLOBAL",2) RealSetGlobalTimer("X#JADruidTalkTime","GLOBAL",7200)~ + JADRU1.3
++ @514 DO ~SetGlobal("X#JaheiraDruidTalk","GLOBAL",2) RealSetGlobalTimer("X#JADruidTalkTime","GLOBAL",7200)~ + JADRU1.4
++ @515 DO ~SetGlobal("X#JaheiraDruidTalk","GLOBAL",2) RealSetGlobalTimer("X#JADruidTalkTime","GLOBAL",7200)~ + JADRU1.12
END

IF ~~ JADRU1.2
SAY @516
++ @517 + JADRU1.5
++ @518 + JADRU1.6
END

IF ~~ JADRU1.3
SAY @519
++ @520 + JADRU1.5
++ @521 + JADRU1.7
END

IF ~~ JADRU1.4
SAY @522
++ @517 + JADRU1.5
++ @518 + JADRU1.6
END

IF ~~ JADRU1.5
SAY @523
IF ~~ THEN EXIT
END

IF ~~ JADRU1.6
SAY @524
++ @525 + JADRU1.8
++ @526 + JADRU1.9
END

IF ~~ JADRU1.7
SAY @527
++ @528 + JADRU1.10
++ @529 + JADRU1.11
END

IF ~~ JADRU1.8
SAY @530
IF ~~ THEN EXIT
END

IF ~~ JADRU1.9
SAY @531
IF ~~ THEN EXIT
END

IF ~~ JADRU1.10
SAY @532
IF ~~ THEN EXIT
END

IF ~~ JADRU1.11
SAY @533
IF ~~ THEN DO ~SetGlobal("X#JANoDruidAdvice","GLOBAL",1)~ EXIT
END

IF ~~ JADRU1.12
SAY @534
++ @517 + JADRU1.5
++ @518 + JADRU1.6
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraDruidTalk","GLOBAL",3)~ THEN BEGIN JADRU2
SAY @535
++ @536 DO ~SetGlobal("X#JaheiraDruidTalk","GLOBAL",4) RealSetGlobalTimer("X#JADruidTalkTime","GLOBAL",7200)~ + JADRU2.2
++ @537 DO ~SetGlobal("X#JaheiraDruidTalk","GLOBAL",4) RealSetGlobalTimer("X#JADruidTalkTime","GLOBAL",7200)~ + JADRU2.3
++ @538 DO ~SetGlobal("X#JaheiraDruidTalk","GLOBAL",4) RealSetGlobalTimer("X#JADruidTalkTime","GLOBAL",7200)~ + JADRU2.4
END

IF ~~ JADRU2.2
SAY @539
++ @540 + JADRU2.5
++ @541 + JADRU2.6
END

IF ~~ JADRU2.3
SAY @542
IF ~~ THEN DO ~SetGlobal("X#JANoDruidAdvice","GLOBAL",1)~ EXIT
END

IF ~~ JADRU2.4
SAY @543
++ @540 + JADRU2.5
++ @541 + JADRU2.6
END

IF ~~ JADRU2.5
SAY @544
++ @545 + JADRU2.7
++ @546 + JADRU2.8
++ @547 + JADRU2.9
END

IF ~~ JADRU2.6
SAY @548
IF ~~ THEN DO ~SetGlobal("X#JANoDruidAdvice","GLOBAL",1)~ EXIT
END

IF ~~ JADRU2.7
SAY @549
+ ~CheckStatGT(Player1,15,WIS)~ + @550 + JADRU2.10
++ @551 + JADRU2.11
+ ~OR(3) !InParty("quayle") !InMyArea("quayle") StateCheck("quayle",CD_STATE_NOTVALID)~ + @552 + JADRU2.11
+ ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ + @552 EXTERN ~%QUAYLE_JOINED%~ JADRU2.11Q
END

IF ~~ JADRU2.8
SAY @553
+ ~CheckStatGT(Player1,15,WIS)~ + @550 + JADRU2.10
++ @551 + JADRU2.11
+ ~OR(3) !InParty("quayle") !InMyArea("quayle") StateCheck("quayle",CD_STATE_NOTVALID)~ + @552 + JADRU2.11
+ ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ + @552 EXTERN ~%QUAYLE_JOINED%~ JADRU2.11Q
END

IF ~~ JADRU2.9
SAY @554
IF ~~ THEN DO ~SetGlobal("X#JANoDruidAdvice","GLOBAL",1)~ EXIT
END

IF ~~ JADRU2.10
SAY @555
IF ~~ THEN EXIT
END

IF ~~ JADRU2.11
SAY @556
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#JaheiraDruidTalk","GLOBAL",5)~ THEN BEGIN JADRU3
SAY @557
++ @558 DO ~SetGlobal("X#JaheiraDruidTalk","GLOBAL",6)~ + JADRU3.2
++ @559 DO ~SetGlobal("X#JaheiraDruidTalk","GLOBAL",6)~ + JADRU3.3
END

IF ~~ JADRU3.2
SAY @560
++ @561 + JADRU3.4
++ @562 + JADRU3.5
END

IF ~~ JADRU3.3
SAY @563
++ @561 + JADRU3.4
++ @562 + JADRU3.5
END

IF ~~ JADRU3.4
SAY @564
++ @565 + JADRU3.6
++ @566 + JADRU3.7
END

IF ~~ JADRU3.5
SAY @567
IF ~~ THEN EXIT
END

IF ~~ JADRU3.6
SAY @568
IF ~~ THEN EXIT
END

IF ~~ JADRU3.7
SAY @569
++ @570 + JADRU3.8
+ ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ + @571 + JADRU3.9
+ ~OR(4) !InParty("khalid") !InMyArea("khalid") Dead("khalid") StateCheck("khalid",CD_STATE_NOTVALID)~ + @571 + JADRU3.10
END

IF ~~ JADRU3.8
SAY @572
IF ~~ THEN EXIT
END

IF ~~ JADRU3.9
SAY @573
IF ~~ THEN EXIT
END

IF ~~ JADRU3.10
SAY @574
IF ~~ THEN EXIT
END

END

CHAIN ~%QUAYLE_JOINED%~ JADRU2.11Q
@575
END ~%JAHEIRA_JOINED%~ JADRU2.11

/* Thethoril will give you Gorion's letter if you did not get it: */
ADD_TRANS_TRIGGER ~%tutu_var%TETHTO2~ 1 ~Global("P#KnowBhaal","GLOBAL",1)~

EXTEND_BOTTOM ~%tutu_var%TETHTO2~ 1
IF ~Global("TalkedToKoveras","GLOBAL",1) Global("P#KnowBhaal","GLOBAL",0)~ THEN REPLY @576 DO ~GiveItemCreate("%tutu_var%scrl2J",Player1,0,0,0) SetGlobal("P#KnowBhaal","GLOBAL",1)~ GOTO 2
IF ~Global("P#KnowBhaal","GLOBAL",0)~ THEN REPLY @577 DO ~GiveItemCreate("%tutu_var%scrl2J",Player1,0,0,0) SetGlobal("P#KnowBhaal","GLOBAL",1)~ GOTO 3
IF ~Global("P#KnowBhaal","GLOBAL",0) Dead("rieltar")~ THEN REPLY @578 DO ~GiveItemCreate("%tutu_var%scrl2J",Player1,0,0,0) SetGlobal("P#KnowBhaal","GLOBAL",1)~ GOTO 5
END
