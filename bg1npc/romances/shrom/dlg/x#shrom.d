/* Shar-Teel Interest Talks */
APPEND ~%SHARTEEL_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",2)~ THEN BEGIN SHRO1
SAY @0 
++ @1 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",3) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO1.1
++ @2 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",3) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO1.2
++ @3 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",3) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO1.2
++ @4 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",3) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO1.3
END

IF ~~ SHRO1.1
SAY @5
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3) RestParty()~
EXIT
END

IF ~~ SHRO1.2
SAY @6
= @7
IF ~~ THEN DO ~SetGlobal("X#SharLoveFight","GLOBAL",1)~ EXIT
END

IF ~~ SHRO1.3
SAY @8
= @9
++ @10 + SHRO1.4
++ @11 + SHRO1.5
++ @12 + SHRO1.2
END

IF ~~ SHRO1.4
SAY @13
= @14 
= @15 
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ SHRO1.5
SAY @16 
= @17 
= @18
IF ~~ THEN DO ~RestParty()~
EXIT
END

/* Shar had first hit */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharLoveFight","GLOBAL",2)~ THEN BEGIN SharAfterFight1
SAY @19 
++ @20 DO ~SetGlobal("X#SharLoveFight","GLOBAL",3)~ + SHRO1.6
+ ~!InParty("dynaheir") !InParty("branwen")~ + @21 DO ~SetGlobal("X#SharLoveFight","GLOBAL",3)~ + SHRO1.5
+ ~InParty("dynaheir") !InParty("branwen")~ + @21 DO ~SetGlobal("X#SharLoveFight","GLOBAL",3)~ + SHRO1.5Dyna
+ ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ + @21 DO ~SetGlobal("X#SharLoveFight","GLOBAL",3)~ + SHRO1.5Bran
++ @22 DO ~SetGlobal("X#SharLoveFight","GLOBAL",3)~ + SHRO1.7
END

IF ~~ SHRO1.6
SAY @23
IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ SHRO1.7
SAY @24
= @25 
= @17 
= @18
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ SHRO1.5Dyna
SAY @26
++ @27 DO ~RestParty()~ EXIT
++ @28 + SHRO1.8Dyna
++ @29 DO ~SetGlobal("X#SharInterest","GLOBAL",3) RestParty()~
EXIT
END

IF ~~ SHRO1.5Bran
SAY @30
++ @27 DO ~RestParty()~ EXIT
++ @31 + SHRO1.8Bran
++ @32 DO ~SetGlobal("X#SharInterest","GLOBAL",3) RestParty()~
EXIT
END

IF ~~ SHRO1.8Dyna
SAY @33
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ SHRO1.8Bran
SAY @34
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* Player1 had first hit */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharLoveFight","GLOBAL",4)~ THEN BEGIN SharAfterFight2
SAY @35
++ @36 DO ~SetGlobal("X#SharLoveFight","GLOBAL",5)~ + SHRO1.6
+ ~CheckStatGT(Player1,13,CHR)~ + @37 DO ~SetGlobal("X#SharLoveFight","GLOBAL",5)~ + SHRO1.9
+ ~!InParty("dynaheir") !InParty("branwen")~ + @38 DO ~SetGlobal("X#SharLoveFight","GLOBAL",5)~ + SHRO1.5
+ ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !InParty("branwen")~ + @38 DO ~SetGlobal("X#SharLoveFight","GLOBAL",5)~ + SHRO1.5Dyna
+ ~InParty("branwen") InMyArea("branwen") !StateCheck("branwen",CD_STATE_NOTVALID)~ + @38 DO ~SetGlobal("X#SharLoveFight","GLOBAL",5)~ + SHRO1.5Bran1
++ @39 DO ~SetGlobal("X#SharLoveFight","GLOBAL",5)~ + SHRO1.10
END

IF ~~ SHRO1.9
SAY @40
= @41
= @42
= @43
= @44
IF ~~ THEN DO ~RestParty() SetGlobal("X#ShartSex","GLOBAL",1)~ EXIT
END

IF ~~ SHRO1.5Bran1
SAY @30
++ @27 DO ~ RestParty()~ EXIT
++ @45 + SHRO1.8Bran1
++ @32 DO ~SetGlobal("X#SharInterest","GLOBAL",3) RestParty()~
EXIT
END

IF ~~ SHRO1.8Bran1
SAY @46
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ SHRO1.10
SAY @47
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~Global("X#SharInterestTalk","GLOBAL",4)~ THEN BEGIN SHRO2
SAY @48
= @49
++ @50 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",5) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO2.1
++ @51 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",5) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO2.2
++ @52 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",5) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO2.3
++ @53 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",5) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO2.4
++ @54 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",5) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO2.3A
END

IF ~~ SHRO2.1
SAY @55
++ @56 + SHRO2.5
+ ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ + @57 + SHRO2.6
+ ~!InParty("yeslick")~ + @58 + SHRO2.6
++ @53 + SHRO2.4
++ @59 + SHRO2.2
END

IF ~~ SHRO2.2
SAY @60 
++ @61 + SHRO2.7
++ @62 + SHRO2.8
++ @63 + SHRO2.7
END

IF ~~ SHRO2.3
SAY @64
++ @65 + SHRO2.2
++ @53 + SHRO2.4
END

IF ~~ SHRO2.3A
SAY @66
++ @67 + SHRO2.2
++ @53 + SHRO2.4
END

IF ~~ SHRO2.4
SAY @68 
IF ~~ THEN DO ~SetGlobal("X#SharKind","GLOBAL",1)~ EXIT
END

IF ~~ SHRO2.5
SAY @69
	IF ~~ THEN EXIT
END

IF ~~ SHRO2.6
SAY @70
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ SHRO2.7
SAY @71
++ @72 + SHRO2.9
++ @73 + SHRO2.10
++ @74 + SHRO2.11
++ @75 + SHRO2.12
END

IF ~~ SHRO2.8
SAY @76
	IF ~~ THEN EXIT
END

IF ~~ SHRO2.9
SAY @77 
++ @78 + SHRO2.11
++ @75 + SHRO2.12
++ @79 + SHRO2.4
++ @80 + SHRO2.13
END

IF ~~ SHRO2.10
SAY @81
++ @80 + SHRO2.13
++ @75 + SHRO2.12
++ @82 + SHRO2.4
END

IF ~~ SHRO2.11
SAY @83
	IF ~~ THEN EXIT
END

IF ~~ SHRO2.12
SAY @84
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ SHRO2.13
SAY @85
++ @86 +SHRO2.14
++ @87 EXIT
++ @88 + SHRO2.4
END

IF ~~ SHRO2.14
SAY @89
IF ~~ THEN DO ~SetGlobal("X#SharKind","GLOBAL",1)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",6)~ THEN BEGIN SHRO3
SAY @90
++ @91 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO3.1
++ @92 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO3.2
++ @93 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO3.1
++ @94 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO3.3
++ @95 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO3.3A
END

IF ~~ SHRO3.1
SAY @96
++ @97 + SHRO3.4
++ @98 + SHRO3.5
++ @99 + SHRO3.6
END

IF ~~ SHRO3.2
SAY @100
= @101
++ @97 + SHRO3.4
++ @98 + SHRO3.5
++ @99 + SHRO3.6
END

IF ~~ SHRO3.3
SAY @102
= @103
++ @97 + SHRO3.4
++ @98 + SHRO3.5
++ @99 + SHRO3.6
END

IF ~~ SHRO3.3A
SAY @104
= @105
++ @97 + SHRO3.4
++ @98 + SHRO3.5
++ @99 + SHRO3.6
END

IF ~~ SHRO3.4
SAY @106
= @107
= @108
= @109
= @110
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_6%)~ + @111 + SHRO3.7
++ @112 + SHRO3.8
++ @99 + SHRO3.6
END

IF ~~ SHRO3.5
SAY @113
++ @114 + SHRO3.4
++ @99 + SHRO3.6
++ @115 EXIT
END

IF ~~ SHRO3.6
SAY @116 
++ @117 +SHRO3.9
++ @118 + SHRO3.10
++ @119 + SHRO3.11
END

IF ~~ SHRO3.7
SAY @120
= @121
= @122
++ @117 +SHRO3.9
++ @118 + SHRO3.10
++ @119 + SHRO3.11
END

IF ~~ SHRO3.8
SAY @123
= @124
++ @117 +SHRO3.9
++ @118 + SHRO3.10
++ @119 + SHRO3.11
END

IF ~~ SHRO3.9
SAY @125
= @126
++ @127 + SHRO3.12
++ @128 + SHRO3.11
END

IF ~~ SHRO3.10
SAY @129
= @130
++ @117 +SHRO3.9
++ @127 + SHRO3.12
++ @128 + SHRO3.11
END

IF ~~ SHRO3.11
SAY @131
= @132
+ ~Global("X#SHCHdone","GLOBAL",1)~ + @133 + SHRO3.13
+ ~!Global("X#SHCHdone","GLOBAL",1)~ + @134 + SHRO3.13
++ @135 EXIT
++ @136 + SHRO3.14
END

IF ~~ SHRO3.12
SAY @137
= @138
= @132
+ ~Global("X#SHCHdone","GLOBAL",1)~ + @139 + SHRO3.13
+ ~!Global("X#SHCHdone","GLOBAL",1)~ + @134 + SHRO3.13
++ @135 EXIT
++ @136 + SHRO3.14
END

IF ~~ SHRO3.13
SAY @140
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~ EXIT
END

IF ~~ SHRO3.14
SAY @141
++ @142 + SHRO3.15
++ @143 + SHRO3.16
++ @144 + SHRO3.17
END

IF ~~ SHRO3.15
SAY @145
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ SHRO3.16
SAY @146
	IF ~~ THEN EXIT
END

IF ~~ SHRO3.17
SAY @147
	IF ~~ THEN EXIT
END


/* Interest 4 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",8)~ THEN BEGIN SHRO4
SAY @148
+ ~Global("X#SHCHdone","GLOBAL",1)~ + @149 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO4.1
+ ~!Global("X#SHCHdone","GLOBAL",1)~ + @150 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO4.1
++ @151 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO4.2
++ @152 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO4.2
+ ~Class(Player1,FIGHTER_ALL)~ + @153 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO4.3
END

IF ~~ SHRO4.1
SAY @154
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ SHRO4.2
SAY @155
++ @156 +SHRO4.4
++ @157 + SHRO4.5
++ @158 + SHRO4.6
END

IF ~~ SHRO4.3
	SAY @159
	IF ~~ THEN EXIT
END

IF ~~ SHRO4.4
SAY @160
++ @161 +SHRO4.5
++ @158 + SHRO4.6
END

IF ~~ SHRO4.5
SAY @162
= @163
= @164
= @165
++ @166 + SHRO4.7
++ @167 + SHRO4.7
++ @158 + SHRO4.6
END

IF ~~ SHRO4.6
SAY @168
= @169
= @170
= @171
++ @172 +SHRO4.8
++ @173 + SHRO4.9
++ @174 + SHRO4.10
END

IF ~~ SHRO4.7
SAY @175
= @176
= @170
= @177
++ @172 +SHRO4.8
++ @173 + SHRO4.9
++ @178 + SHRO4.10
END

IF ~~ SHRO4.8
SAY @179
= @180
= @181
= @182
= @183
++ @184 + SHRO4.11
++ @185 + SHRO4.11
++ @186 + SHRO4.12
END

IF ~~ SHRO4.9
SAY @180
= @181
= @182
= @183
++ @184 + SHRO4.11
++ @185 + SHRO4.11
++ @186 + SHRO4.12
END

IF ~~ SHRO4.10
SAY @187
= @181
= @182
= @183
++ @184 + SHRO4.11
++ @185 + SHRO4.11
++ @186 + SHRO4.12
END

IF ~~ SHRO4.11
SAY @188
++ @189 EXIT
++ @186 + SHRO4.12
END

IF ~~ SHRO4.12
	SAY @190
	++ @191 + SHRO4.13
	++ @192 + SHRO4.14
	++ @193 + SHRO14.15
END

IF ~~ SHRO4.13
	SAY @194
	IF ~~ THEN EXIT
END

IF ~~ SHRO4.14
	SAY @195
	IF ~~ THEN EXIT
END

IF ~~ SHRO14.15
	SAY @196
	IF ~~ THEN EXIT
END

/* Interest 5 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",10)~ THEN BEGIN SHRO5
SAY @197
++ @198 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO5.1
++ @199 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO5.2
++ @200 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO5.3
++ @201 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO5.2
END

IF ~~ SHRO5.1
SAY @202 
= @203
IF ~~ THEN DO ~ActionOverride(Player1,ApplyDamagePercent(Player1,5,CRUSHING)) SetGlobal("X#SharInterest","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ SHRO5.2
SAY @204
++ @205 + SHRO5.4
++ @206 + SHRO5.5
++ @207 + SHRO5.6
END

IF ~~ SHRO5.3
SAY @208
++ @209 + SHRO5.7
++ @210 + SHRO5.2
++ @211 DO ~RestParty()~ EXIT
END

IF ~~ SHRO5.4
SAY @212
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ SHRO5.5
SAY @213
IF ~~ THEN DO ~ SetGlobal("X#SharInterest","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ SHRO5.6
SAY @214
++ @215 + SHRO5.8
++ @216 DO ~ SetGlobal("X#SharInterest","GLOBAL",3) RestParty()~ EXIT
++ @217 + SHRO5.8
++ @218 + SHRO5.8
END

IF ~~ SHRO5.7
SAY @219
++ @205 + SHRO5.4
++ @206 + SHRO5.5
++ @207 + SHRO5.6
END

IF ~~ SHRO5.8
SAY @220
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* Interest 6 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",12)~ THEN BEGIN SHRO6
SAY @221
+ ~!Class(Player1,BARD_ALL)~ + @222 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO6.1
+ ~Class(Player1,BARD_ALL)~ + @223 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO6.2
+ ~ CheckStatLT(Player1, 17,STR)~ + @224 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO6.3
+ ~ CheckStatGT(Player1, 16,STR)~ + @224 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO6.4
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @225 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO6.5 
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @226 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO6.6
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @227 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO6.7
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @228 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO6.8
END

IF ~~ SHRO6.1
SAY @229
+ ~CheckStatLT(Player1, 8,INT)~ + @230 + SHRO6.9A
+ ~CheckStatLT(Player1, 18,STR)~ + @231 + SHRO6.3
+ ~CheckStatGT(Player1, 17, STR)~ + @232 + SHRO6.4
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @225 + SHRO6.5 
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @226 + SHRO6.6
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @233 + SHRO6.7
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @228 + SHRO6.8
END

IF ~~ SHRO6.2
SAY @234
++ @235 + SHRO6.9A
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @236 + SHRO6.5 
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @237 + SHRO6.6
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @238 + SHRO6.7
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @239 + SHRO6.8
END

IF ~~ SHRO6.3
	SAY @240
	= @241
	IF ~~ THEN EXIT
END

IF ~~ SHRO6.4
SAY @242
++ @243 + SHRO6.9
++ @244 + SHRO6.10
++ @245 + SHRO6.11
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @246 + SHRO6.5 
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @226 + SHRO6.6
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @247 + SHRO6.7
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @228 + SHRO6.8
END

IF ~~ SHRO6.5
SAY @248
++ @249 + SHRO6.12
++ @250 + SHRO6.13
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @247 + SHRO6.7
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @228 + SHRO6.8
END

IF ~~ SHRO6.6
SAY @251
= @252
= @253
++ @254 + SHRO6.14
++ @255 + SHRO6.15
++ @256 EXIT
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @257 + SHRO6.8
END

IF ~~ SHRO6.7
SAY @258
= @259 
= @260
	IF ~~ THEN EXIT
END

IF ~~ SHRO6.8
SAY @251
= @259
= @260
	IF ~~ THEN EXIT
END

IF ~~ SHRO6.9
SAY @261
= @262
= @263
	IF ~~ THEN EXIT
END

IF ~~ SHRO6.9A
SAY @264
IF ~~ THEN GOTO SHRO6.16
END

IF ~~ SHRO6.10
SAY @265
= @266
	IF ~~ THEN EXIT
END

IF ~~ SHRO6.11
SAY @267
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~
 EXIT
END

IF ~~ SHRO6.12
SAY @268
++ @269 + SHRO6.16
++ @270 + SHRO6.11
++ @271 + SHRO6.18
END

IF ~~ SHRO6.13
SAY @272
++ @273 + SHRO6.18
END

IF ~~ SHRO6.14
SAY @274
= @275
++ @269 + SHRO6.16
++ @270 + SHRO6.11
++ @276 + SHRO6.18
END

IF ~~ SHRO6.15
SAY @277
++ @278 + SHRO6.18
END

IF ~~ SHRO6.16
SAY @279
	IF ~~ THEN EXIT
END

IF ~~ SHRO6.17
SAY @280
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @281 + SHRO6.8
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @282 + SHRO6.7
END

IF ~~ SHRO6.18
SAY @280
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @281 + SHRO6.8
+ ~Global("P#KnowBhaal","GLOBAL",0)~ + @282 + SHRO6.7
END

/* Interest 7 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",14)~ THEN BEGIN SHRO7
SAY @283
++ @284 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO7.1
++ @285 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO7.2
+ ~HPPercentLT("sharteel",99)~ + @286 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO7.3
++ @287 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO7.4
END

IF ~~ SHRO7.1
SAY @288 
+ ~CheckStatGT(Player1,14,CON)~ + @289 + SHRO7.5
+ ~CheckStatGT(Player1,14,CON)~ + @290 + SHRO7.5A
IF ~!CheckStatGT(Player1,14,CON)~ THEN DO ~ActionOverride(Player1,PlayDead(90))~ EXIT
END

IF ~~ SHRO7.2A
SAY @291 
IF ~~ GOTO SHRO7.2
END

IF ~~ SHRO7.2
SAY @292 
++ @293 + SHRO7.1
++ @294 + SHRO7.6
++ @295 + SHRO7.7
END

IF ~~ SHRO7.3
SAY @296
++ @297 + SHRO7.8
++ @298 + SHRO7.9
++ @299 + SHRO7.2A
++ @300 + SHRO7.1
END

IF ~~ SHRO7.4
SAY @301 
++ @302 + SHRO7.8
++ @298 + SHRO7.9
++ @299 + SHRO7.2A
++ @300 + SHRO7.1
END

IF ~~ SHRO7.5
SAY @303 
	IF ~~ THEN EXIT
END

IF ~~ SHRO7.5A
SAY @304
++ @297 + SHRO7.8
++ @298 + SHRO7.9
END

IF ~~ SHRO7.6
SAY @305 
++ @306 EXIT
++ @295 + SHRO7.7
END

IF ~~ SHRO7.7
SAY @307
++ @308 + SHRO7.10
++ @309 EXIT
++ @310 EXIT
++ @311 + SHRO7.11
END

IF ~~ SHRO7.8
SAY @312 
++ @313 + SHRO7.12
++ @314 + SHRO7.13
++ @315 + SHRO7.14
END

IF ~~ SHRO7.9
SAY @316
++ @317 + SHRO7.15
++ @318 + SHRO7.16
++ @319 + SHRO7.17
END

IF ~~ SHRO7.10
SAY @320
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~ EXIT
END

IF ~~ SHRO7.11
SAY @321 
	IF ~~ THEN EXIT
END

IF ~~ SHRO7.12
SAY @322
= @323
= @324
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~ EXIT
END

IF ~~ SHRO7.13
SAY @325
	IF ~~ THEN EXIT
END

IF ~~ SHRO7.14
SAY @326
IF ~~ THEN DO ~ SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ SHRO7.15
SAY @327 
IF ~~ THEN DO ~ SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ SHRO7.16
SAY @328
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~ EXIT
END

IF ~~ SHRO7.17
SAY @329 
	IF ~~ THEN EXIT
END

/* Interest 8 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",16)~ THEN BEGIN SHRO8
SAY @330
++ @331 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO8.1
++ @332 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO8.2
++ @333 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO8.3
END

IF ~~ SHRO8.1
SAY @334
++ @335 + SHRO8.2
++ @336 + SHRO8.3
++ @337 + SHRO8.4
END

IF ~~ SHRO8.2
SAY @338
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @339 EXIT
++ @340 + SHRO8.5
++ @341 + SHRO8.6
++ @342 + SHRO8.7
++ @343 + SHRO8.8
++ @344 + SHRO8.9
END

IF ~~ SHRO8.3
SAY @345
= @346 
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @339 EXIT
++ @340 + SHRO8.5
++ @341 + SHRO8.6
++ @342 + SHRO8.7
++ @343 + SHRO8.8
++ @344 + SHRO8.9
END

IF ~~ SHRO8.4
SAY @347
IF ~~ THEN DO ~ SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ SHRO8.5
SAY @348 
	IF ~~ THEN EXIT
END

IF ~~ SHRO8.6
SAY @349 
	IF ~~ THEN EXIT
END

IF ~~ SHRO8.7
SAY @350 
	IF ~~ THEN EXIT
END

IF ~~ SHRO8.8
SAY @351 
++ @352 + SHRO8.10
++ @353 + SHRO8.11
++ @354 EXIT
++ @355 EXIT
END

IF ~~ SHRO8.9
SAY @356 
+ ~Race(Player1,DWARF)~ + @357 + SHRO8.8
++ @358 + SHRO8.10
++ @354 EXIT
++ @355 EXIT
END

IF ~~ SHRO8.10
SAY @359 
	IF ~~ THEN EXIT
END

IF ~~ SHRO8.11
SAY @360 
	IF ~~ THEN EXIT
END

/* Interest Talk 9 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",18)~ THEN BEGIN SHRO9
SAY @361
++ @362 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO9.1
++ @363 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO9.2
++ @364 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO9.3
END

IF ~~ SHRO9.1
SAY @365
= @366
++ @367 DO ~ IncrementGlobal("X#SharKind","GLOBAL",1)~ + SHRO9.4
++ @368 + SHRO9.5
++ @369 + SHRO9.6
++ @370 + SHRO9.2
END

IF ~~ SHRO9.2
SAY @371
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3) LeaveParty() Enemy()~ EXIT
END

IF ~~ SHRO9.3
SAY @372
++ @363 + SHRO9.2
++ @373 + SHRO9.7
++ @374 DO ~ IncrementGlobal("X#SharKind","GLOBAL",1)~ + SHRO9.4
END

IF ~~ SHRO9.4
SAY @375 
++ @376 + SHRO9.5
++ @377 + SHRO9.8
++ @378 + SHRO9.9
END

IF ~~ SHRO9.5
SAY @379
	IF ~~ THEN EXIT
END

IF ~~ SHRO9.6
SAY @380 
++ @376 + SHRO9.5
++ @377 + SHRO9.8
++ @378 + SHRO9.9
END

IF ~~ SHRO9.7
SAY @381
	IF ~~ THEN EXIT
END

IF ~~ SHRO9.8
SAY @382
	IF ~~ THEN EXIT
END

IF ~~ SHRO9.9
SAY @383
	IF ~~ THEN EXIT
END

/* Interest Talk 10 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",20)~ THEN BEGIN SHRO9.A
SAY @384
++ @385 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + 6APO
++ @386 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + 6APO
++ @387 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + 6BEGONE
++ @388 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + 6BEGONE
END

IF ~~ 6BEGONE
SAY @389
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ 6APO
SAY @390
++ @391 + 6DIE
++ @392 + 6CHARSTR
++ @393 + 6BEGONE
++ @394 + 6WEAK
END

IF ~~ 6CHARSTR
SAY @395
++ @396 + 6LACK
++ @397 + 6THOUGHTS
++ @398 + 6WEAK
END

IF ~~ 6DIE
SAY @399
IF ~~ DO ~SetGlobal("X#SharInterest","GLOBAL",3) LeaveParty() Attack(Player1)~ EXIT
END

IF ~~ 6LACK
SAY @400
++ @401 + 6THOUGHTS
++ @402 EXIT
END

IF ~~ 6WEAK
SAY @403
	IF ~~ THEN EXIT
END

IF ~~ 6THOUGHTS
SAY @404
++ @405 + 6WELL
++ @406 + 6DODD
++ @407 + 6WEAK
END

IF ~~ 6WELL
SAY @408
	IF ~~ THEN EXIT
END

IF ~~ 6DODD
SAY @409
	IF ~~ THEN EXIT
END

/* Interest Talk 11 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",22)~ THEN BEGIN SHRO10
SAY @410
++ @411 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO10.1
++ @412 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO10.2
++ @413 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO10.3
++ @414 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO10.4
END

IF ~~ SHRO10.1
SAY @415
IF ~GlobalGT("X#SharKind","GLOBAL",3)~ THEN REPLY @416 GOTO SHRO10.5
IF ~~ THEN REPLY @417 GOTO SHRO10.6
IF ~~ THEN REPLY @414 GOTO SHRO10.4
IF ~~ THEN REPLY @418 GOTO SHRO10.8
END

IF ~~ SHRO10.2
SAY @419
++ @420 + SHRO10.7
++ @418 + SHRO10.8
++ @421 + SHRO10.11
END

IF ~~ SHRO10.3
SAY @422
= @423
= @424
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ SHRO10.3A
SAY @425
= @426
= @424
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ SHRO10.4
SAY @427
++ @420 + SHRO10.7
++ @418 + SHRO10.8
++ @428 DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~ + SHRO10.9
END

IF ~~ SHRO10.5
SAY @429
++ @430 + SHRO10.3A
++ @418 + SHRO10.8
++ @421 + SHRO10.11
++ @431 DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~ + SHRO10.10
END

IF ~~ SHRO10.6
SAY @432
IF ~~ THEN GOTO SHRO10.5
END

IF ~~ SHRO10.7
SAY @433
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-1)~ EXIT
END

IF ~~ SHRO10.8
SAY @434
++ @435 EXIT
++ @431 DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~ + SHRO10.10
END

IF ~~ SHRO10.9
SAY @436
= @437
= @438
= @439
IF ~~ THEN DO ~FadeToColor([40.0],0) 
Wait(3)
FadeFromColor([40.0],0) SetGlobal("X#SharBunk","GLOBAL",1)~ EXIT
END

IF ~~ SHRO10.10
SAY @440
	IF ~~ THEN EXIT
END

IF ~~ SHRO10.11
SAY @441
	IF ~~ THEN EXIT
END

IF ~Global("X#SharBunk","GLOBAL",2)~ SHRO10A
SAY @442
= @443
IF ~~ THEN DO ~SetGlobal("X#SharBunk","GLOBAL",3) ReallyForceSpell("sharteel",CLERIC_DRAW_UPON_HOLY_MIGHT)~ EXIT
END

/* Interest Talk 12 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",24)~ THEN BEGIN SHRO11
SAY @444
++ @445 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO11.1
++ @446 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO11.2
++ @447 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO11.3
++ @448 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER) IncrementGlobal("X#SharKind","GLOBAL",1)~ + SHRO11.10
END

IF ~~ SHRO11.1
SAY @449
++ @450 + SHRO11.4
+ ~ReputationLT("sharteel",8)~ + @451 + SHRO11.5
++ @452 + SHRO11.6
++ @453 + SHRO11.7
++ @454 DO ~IncrementGlobal("X#SharKind","GLOBAL",-2)~ + SHRO11.8
END

IF ~~ SHRO11.2
SAY @455
	IF ~~ THEN EXIT
END

IF ~~ SHRO11.3
SAY @456
++ @457 + SHRO11.9
++ @458 DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~ + SHRO11.10
++ @459 DO ~IncrementGlobal("X#SharKind","GLOBAL",-2)~ + SHRO11.11
++ @460 + SHRO11.1
END

IF ~~ SHRO11.4
SAY @461
+ ~ReputationLT(Player1,8)~ + @462 + SHRO11.5
++ @463 + SHRO11.7
++ @464 DO ~IncrementGlobal("X#SharKind","GLOBAL",-2)~ + SHRO11.8
END

IF ~~ SHRO11.5
SAY @465
++ @452 + SHRO11.6
++ @466 EXIT
END

IF ~~ SHRO11.6
SAY @467
++ @468 EXIT
++ @469 + SHRO11.12
END

IF ~~ SHRO11.7
SAY @470
= @471
	IF ~~ THEN EXIT
END

IF ~~ SHRO11.8
SAY @472
	IF ~~ THEN EXIT
END

IF ~~ SHRO11.9
SAY @473
++ @474 EXIT
++ @458 DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~ + SHRO11.10
++ @459 DO ~IncrementGlobal("X#SharKind","GLOBAL",-2)~ + SHRO11.11
++ @460 + SHRO11.1
END

IF ~~ SHRO11.10
SAY @475
	IF ~~ THEN EXIT
END

IF ~~ SHRO11.11
SAY @476
	IF ~~ THEN EXIT
END
 
IF ~~ SHRO11.12
SAY @477
++ @478 EXIT
++ @479 + SHRO11.13
END
 
IF ~~ SHRO11.13
SAY @480
	IF ~~ THEN EXIT
END

/* Interest 13 Rest Script, only in the day time or in an inn */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",26)~ THEN BEGIN SHRO13
SAY @481
++ @482 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO12.1
++ @483 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO12.2
++ @484 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO12.3
END

IF ~~ SHRO12.1
SAY @485
++ @486 + SHRO12.4
++ @487 + SHRO12.5
END

IF ~~ SHRO12.2
SAY @488
++ @487 + SHRO12.5
++ @489 + SHRO12.4
++ @490 DO ~RestParty()~ EXIT
END

IF ~~ SHRO12.3
SAY @491
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-1) RestParty()~ EXIT
END

IF ~~ SHRO12.4
SAY @492
+ ~CheckStatGT(Player1,15,CON)~ + @493 + SHRO12.7High
+ ~CheckStatGT(Player1,10,CON) CheckStatLT(Player1,16,CON)~ + @493 + SHRO12.7Med
+ ~CheckStatLT(Player1,11,CON)~ + @493 + SHRO12.7Low
++ @494 + SHRO12.6
++ @495 + SHRO12.8
END

IF ~~ SHRO12.5
SAY @496 
++ @497 DO ~RestParty()~ EXIT
++ @498 + SHRO12.3
END

IF ~~ SHRO12.6
SAY @499
IF ~~ THEN DO ~ RestParty()~ EXIT
END

IF ~~ SHRO12.8
SAY @500
+ ~CheckStatGT(Player1,15,CON)~ + @501 + SHRO12.7High
+ ~CheckStatGT(Player1,10,CON) CheckStatLT(Player1,16,CON)~ + @502 + SHRO12.7Med
+ ~CheckStatLT(Player1,11,CON)~ + @502 + SHRO12.7Low
++ @503 + SHRO12.6
END

IF ~~ SHRO12.7High
SAY @504
++ @505 DO ~RestParty()~ EXIT
++ @506 + SHRO12.13
++ @507 + SHRO12.9
++ @508 + SHRO12.10
END

IF ~~ SHRO12.13
SAY @509
IF ~~ THEN DO ~ RestParty()~ EXIT
END

IF ~~ SHRO12.9
SAY @510
IF ~~ THEN DO ~ RestParty()~ EXIT
END

IF ~~ SHRO12.10
SAY @511
IF ~~ THEN DO ~ IncrementGlobal("X#SharKind","GLOBAL",-5) RestParty()~ EXIT
END

IF ~~ SHRO12.10Med
SAY @512
IF ~~ THEN DO ~ SetGlobal("X#SharInterest","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ SHRO12.10Low
SAY @513 
IF ~~ THEN DO ~ SetGlobal("X#SharInterest","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ SHRO12.7Med
SAY @514
++ @515 DO ~RestParty()~ EXIT
++ @506 + SHRO12.13
++ @516 + SHRO12.9
++ @517 + SHRO12.10Med
END

IF ~~ SHRO12.7Low
SAY @518
++ @519 + SHRO12.10Low
++ @520 + SHRO12.11
++ @521 + SHRO12.3
END

IF ~~ SHRO12.11
SAY @522
++ @523 + SHRO12.10Low
++ @524 + SHRO12.12
END

IF ~~ SHRO12.12
SAY @525
++ @526 + SHRO12.3
++ @527 DO ~IncrementGlobal("X#SharKind","GLOBAL", 2) RestParty()~ EXIT 
END 

/* Interest 14 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",28)~ THEN BEGIN SHRO14
SAY @528
++ @529 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO13.1
++ @530 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO13.2
++ @531 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO13.2
++ @532 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO13.3
++ @533 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO13.4
END

IF ~~ SHRO13.1
SAY @534
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ SHRO13.2A
SAY @535
++ @536 + SHRO13.5
++ @537 + SHRO13.5
++ @538 + SHRO13.6
++ @533 + SHRO13.4
++ @539 + SHRO13.8
++ @540 + SHRO13.9
++ @541 + SHRO13.10
END

IF ~~ SHRO13.2
SAY @542
++ @543 + SHRO13.5
++ @537 + SHRO13.5
++ @544 + SHRO13.6
++ @545 + SHRO13.7
++ @533 + SHRO13.4
++ @539 + SHRO13.8
++ @540 + SHRO13.9
++ @541 + SHRO13.10
END

IF ~~ SHRO13.3
SAY @546
++ @547 GOTO SHRO13.1
++ @548 + SHRO13.2A
++ @549 + SHRO13.11
++ @533 + SHRO13.4
END

IF ~~ SHRO13.4
SAY @550
++ @551 + SHRO13.12
++ @552 + SHRO13.1
++ @553 + SHRO13.6
++ @554 + SHRO13.5
++ @555 + SHRO13.13
END

IF ~~ SHRO13.5
SAY @556
	IF ~~ THEN EXIT
END

IF ~~ SHRO13.6
SAY @557
	IF ~~ THEN EXIT
END

IF ~~ SHRO13.7
SAY @558
++ @537 + SHRO13.5
++ @544 + SHRO13.6
++ @559 EXIT
++ @551 + SHRO13.12
END

IF ~~ SHRO13.8
SAY @560
	IF ~~ THEN EXIT
END

IF ~~ SHRO13.9
SAY @561
	IF ~~ THEN EXIT
END

IF ~~ SHRO13.10
SAY @562
	IF ~~ THEN EXIT
END

IF ~~ SHRO13.11
SAY @563
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ SHRO13.12
SAY @564
	IF ~~ THEN EXIT
END

IF ~~ SHRO13.13
SAY @565
= @566
	IF ~~ THEN EXIT
END

/* Interest 15 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",30)~ THEN BEGIN SHRO15
SAY @567
= @568
++ @569 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO14.1A
++ @570 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO14.1
END

IF ~~ SHRO14.1A
SAY @571
= @572
IF ~~ THEN GOTO SHRO14.1
END

IF ~~ SHRO14.1
SAY @573
= @574
= @575
= @576
= @577
++ @578 + SHRO14.2
++ @579 + SHRO14.3
++ @580 + SHRO14.4
++ @581 + SHRO14.5
END

IF ~~ SHRO14.2
SAY @582
IF ~~ THEN GOTO SHRO14.4
END

IF ~~ SHRO14.3
SAY @583
IF ~~ THEN GOTO SHRO14.4
END

IF ~~ SHRO14.4
SAY @584
++ @585 + SHRO14.6
++ @586 + SHRO14.7
++ @587 + SHRO14.8
++ @588 + SHRO14.7
++ @589 + SHRO14.9
END

IF ~~ SHRO14.5
SAY @590
IF ~~ THEN GOTO SHRO14.4
END

IF ~~ SHRO14.6
SAY @591
++ @592 + SHRO14.7
++ @593 + SHRO14.8
++ @588 + SHRO14.7
++ @589 + SHRO14.9
++ @594 + SHRO14.10
END

IF ~~ SHRO14.7
SAY @595
	IF ~~ THEN EXIT
END

IF ~~ SHRO14.8
SAY @596
++ @597 + SHRO14.11
++ @588 + SHRO14.7
++ @598 EXIT
++ @599 EXIT
++ @594 + SHRO14.10
END

IF ~~ SHRO14.9
SAY @600
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ SHRO14.10
SAY @601
	IF ~~ THEN EXIT
END

IF ~~ SHRO14.11
SAY @602
	IF ~~ THEN EXIT
END

/* Interest 16 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",32)~ THEN BEGIN SHRO16
SAY @603
++ @604 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO15.1
++ @605 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO15.2
++ @606 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO15.3
++ @607 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO15.4
END

IF ~~ SHRO15.1
SAY @608 
++ @609 + SHRO15.5
++ @610 + SHRO15.6
++ @605 + SHRO15.2
++ @611 + SHRO15.7
END

IF ~~ SHRO15.2
SAY @612
++ @613 + SHRO15.8
++ @614 + SHRO15.9
++ @615 + SHRO15.10
++ @616 DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~ + SHRO15.11
END
 
IF ~~ SHRO15.3
SAY @617
= @618
IF ~~ THEN GOTO SHRO15.1
END

IF ~~ SHRO15.4
SAY @619
IF ~~ THEN GOTO SHRO15.1
END

IF ~~ SHRO15.5
SAY @620
= @621
	IF ~~ THEN EXIT
END

IF ~~ SHRO15.6
SAY @622
	IF ~~ THEN EXIT
END

IF ~~ SHRO15.7
SAY @623
	IF ~~ THEN EXIT
END

IF ~~ SHRO15.8
SAY @624
	IF ~~ THEN EXIT
END

IF ~~ SHRO15.9
SAY @625
	IF ~~ THEN EXIT
END

IF ~~ SHRO15.10
SAY @626
= @627
	IF ~~ THEN EXIT
END

IF ~~ SHRO15.11
SAY @628
	IF ~~ THEN EXIT
END

/* Interest 17 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",34)~ THEN BEGIN SHRO17
SAY @629 
++ @630 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO16.1
++ @631 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO16.2
++ @632 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO16.3
++ @633 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO16.4
++ @634 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO16.6
END

IF ~~ SHRO16.1
SAY @635
++ @636 + SHRO16.2
++ @637 + SHRO16.5
++ @638 + SHRO16.6
++ @639 + SHRO16.3
END

IF ~~ SHRO16.2
SAY @640
++ @641 + SHRO16.7
++ @642 + SHRO16.8
++ @643 EXIT
END

IF ~~ SHRO16.3
SAY @644
++ @633 + SHRO16.4
++ @645 + SHRO16.8
++ @646 + SHRO16.9
++ @647 + SHRO16.10
END

IF ~~ SHRO16.4
SAY @648
++ @649 + SHRO16.11
++ @650 EXIT
++ @651 DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~ + SHRO16.12
END

IF ~~ SHRO16.5
SAY @652
++ @653 + SHRO16.2
++ @632 + SHRO16.3
++ @633 + SHRO16.4
++ @634 + SHRO16.6
END

IF ~~ SHRO16.6
SAY @654
++ @655 + SHRO16.11
++ @656 + SHRO16.13
++ @657 + SHRO16.8
END

IF ~~ SHRO16.7
SAY @658
++ @659 EXIT
++ @660 EXIT
++ @661 + SHRO16.14
++ @662 + SHRO16.15
END

IF ~~ SHRO16.8
SAY @663
	IF ~~ THEN EXIT
END

IF ~~ SHRO16.9
SAY @664
	IF ~~ THEN EXIT
END

IF ~~ SHRO16.10
SAY @665
= @666
IF ~~ THEN GOTO SHRO16.7
END

IF ~~ SHRO16.11
SAY @667
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-2)~EXIT
END

IF ~~ SHRO16.12
SAY @668
	IF ~~ THEN EXIT
END

IF ~~ SHRO16.13
SAY @669
IF ~~ THEN GOTO SHRO16.7
END

IF ~~ SHRO16.14
SAY @670
	IF ~~ THEN EXIT
END

IF ~~ SHRO16.15
SAY @671
	IF ~~ THEN EXIT
END

/* Interest 18 - At rest */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",36)~ THEN BEGIN SHRO18
SAY @672
++ @673 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",37) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO17.1
++ @674 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",37) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO17.1
++ @675 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",37) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO17.2
++ @676 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",37) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO17.3
++ @677 + SHRO17.4
END

IF ~~ SHRO17.1
SAY @678
++ @675 + SHRO17.2
++ @679 + SHRO17.5
++ @680 + SHRO17.6
++ @681 + SHRO17.7
END

IF ~~ SHRO17.2
SAY @682
++ @683 + SHRO17.8
++ @684 + SHRO17.9
++ @685 + SHRO17.5
END

IF ~~ SHRO17.3
SAY @686
++ @675 + SHRO17.2
++ @679 + SHRO17.5
++ @677 + SHRO17.4
END

IF ~~ SHRO17.4
SAY @687
++ @688 + SHRO17.7
++ @689 + SHRO17.2
END

IF ~~ SHRO17.5
SAY @690
= @691
++ @692 + SHRO17.10
++ @693 + SHRO17.7
END

IF ~~ SHRO17.6
SAY @694
IF ~~ THEN GOTO SHRO17.5
END

IF ~~ SHRO17.7
SAY @695
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ SHRO17.8
SAY @696
IF ~~ THEN DO ~RestParty()~
EXIT
END

IF ~~ SHRO17.9
SAY @697
++ @688 + SHRO17.7
++ @698 + SHRO17.5
END

IF ~~ SHRO17.10
SAY @699
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",1) RestParty()~
EXIT
END

/* Interest 19 (Need to check that there are at least 4 people in the party, at rest) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",38)~ THEN BEGIN SHRO19
SAY @700
++ @701 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO18.1
++ @702 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO18.2
++ @703 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO18.2
++ @704 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO18.3
++ @705 DO ~IncrementGlobal("X#SharInterestTalk","GLOBAL",1) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO18.4
END

IF ~~ SHRO18.1
SAY @706
++ @707 DO ~IncrementGlobal("X#SharKind","GLOBAL",-1)~ EXIT
++ @708 + SHRO18.2
++ @709 + SHRO18.4
END

IF ~~ SHRO18.2
SAY @710 
IF ~~ THEN GOTO SHRO18.2A
IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN GOTO SHRO18.2Viconia
IF ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ THEN GOTO SHRO18.2Eldoth
IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN GOTO SHRO18.2Imoen
IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN GOTO SHRO18.2Kagain
IF ~!InParty("viconia") !InParty("eldoth") !InParty("%IMOEN_DV%") !InParty("kagain")~ THEN GOTO SHRO18.2A
END

IF ~~ SHRO18.2Viconia
SAY @711
IF ~~ GOTO SHRO18.2A
END

IF ~~ SHRO18.2Eldoth
SAY @712
IF ~~ GOTO SHRO18.2A
END

IF ~~ SHRO18.2Imoen
SAY @713
IF ~~ GOTO SHRO18.2A
END

IF ~~ SHRO18.2Kagain
SAY @714
IF ~~ GOTO SHRO18.2A
END

IF ~~ SHRO18.2A
SAY @715 
+ ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @716 + SHRO18.2Imo1
+ ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ + @717 + SHRO18.2Imo2
+ ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ + @718 + SHRO18.2Vic1
+ ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ + @719 + SHRO18.2Vic2
+ ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ + @720 + SHRO18.2El1
+ ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ + @721 + SHRO18.2El2
++ @722 + SHRO18.5
+ ~RandomNum(4,1)~ + @723 + SHRO18.6
+ ~RandomNum(4,2)~ + @723 + SHRO18.7
+ ~RandomNum(4,3)~ + @723 + SHRO18.7
+ ~RandomNum(4,4)~ + @723 + SHRO18.7
END

IF ~~ SHRO18.2Imo1
SAY @724
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-1) RestParty()~ EXIT
END

IF ~~ SHRO18.2Imo2
SAY @725
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3) GivePartyGold(-100000) ActionOverride(Player1,ApplyDamagePercent(Player1,50,CRUSHING)) LeaveParty() EscapeArea() RestParty()~ EXIT
END

IF ~~ SHRO18.2Vic1
SAY @726
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-1) RestParty()~ EXIT
END

IF ~~ SHRO18.2Vic2
SAY @727
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3) GivePartyGold(-100000) ActionOverride(Player1,ApplyDamagePercent(Player1,50,CRUSHING)) LeaveParty() EscapeArea() RestParty()~ EXIT
END

IF ~~ SHRO18.2El1
SAY @728
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-1) RestParty()~ EXIT
END

IF ~~ SHRO18.2El2
SAY @729
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3) GivePartyGold(-100000) ActionOverride(Player1,ApplyDamagePercent(Player1,50,CRUSHING)) LeaveParty() EscapeArea() RestParty()~ EXIT
END

IF ~~ SHRO18.3
SAY @730 
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-3) RestParty()~ EXIT
END

IF ~~ SHRO18.4
SAY @731
IF ~~ THEN GOTO SHRO18.2
END

IF ~~ SHRO18.5
SAY @732
IF ~~ THEN DO ~ RestParty()~ EXIT
END 

IF ~~ SHRO18.6
SAY @733
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3) GivePartyGold(-100000) ActionOverride(Player1,ApplyDamagePercent(Player1,50,CRUSHING)) LeaveParty() EscapeArea() RestParty()~ EXIT
END

IF ~~ SHRO18.7
SAY @734
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-1) RestParty()~ EXIT
END

/* Interest 20 In catacombs or caves */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",40)~ THEN BEGIN SHRO20
SAY @735 
= @736
++ @737 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",41) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO19.1
+ ~CheckStatGT(Player1,11,INT)~ + @738 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",41) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO19.2
++ @739 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",41) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO19.3
++ @740 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",41) RealSetGlobalTimer("X#SharInterestTime","GLOBAL",SHROM_TIMER)~ + SHRO19.4
END

IF ~~ SHRO19.1
SAY @741
	IF ~~ THEN EXIT
END

IF ~~ SHRO19.2
SAY @742 
= @743
++ @744 + SHRO19.5
++ @745 + SHRO19.6
++ @746 EXIT
END

IF ~~ SHRO19.3
SAY @747
= @748
++ @749 + SHRO19.7
++ @750 EXIT
++ @751 + SHRO19.8
END

IF ~~ SHRO19.4
SAY @752
= @753
++ @754 + SHRO19.9
++ @755 + SHRO19.10
++ @756 EXIT
++ @757 + SHRO19.11
END

IF ~~ SHRO19.5
SAY @758
++ @759 + SHRO19.9
++ @760 + SHRO19.11
++ @756 EXIT
END

IF ~~ SHRO19.6
SAY @761
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-1)~ EXIT
END

IF ~~ SHRO19.7
SAY @762
	IF ~~ THEN EXIT
END

IF ~~ SHRO19.8
SAY @763
	IF ~~ THEN EXIT
END

IF ~~ SHRO19.9
SAY @764
	IF ~~ THEN EXIT
END

IF ~~ SHRO19.10
SAY @765
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~EXIT
END

IF ~~ SHRO19.11
SAY @766
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",1)~EXIT 
END

/* Shar-Teel Paladin/Ranger fallen status talks */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharFallenTalk","GLOBAL",1) Class(Player1,PALADIN_ALL)~ THEN BEGIN SHLTA0
SAY @767
++ @768 DO ~SetGlobal("X#SharFallenTalk","GLOBAL",2)~ + ShLTA1.1
++ @769 DO ~SetGlobal("X#SharFallenTalk","GLOBAL",2)~ + ShLTA1.2
++ @770 DO ~SetGlobal("X#SharFallenTalk","GLOBAL",2)~ + ShLTA1.3
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharFallenTalk","GLOBAL",1) Class(Player1,RANGER_ALL)~ THEN BEGIN SHLTA1
SAY @771
++ @768 DO ~SetGlobal("X#SharFallenTalk","GLOBAL",2)~ + ShLTA1.1
++ @769 DO ~SetGlobal("X#SharFallenTalk","GLOBAL",2)~ + ShLTA1.2
++ @770 DO ~SetGlobal("X#SharFallenTalk","GLOBAL",2)~ + ShLTA1.3
END

IF ~~ ShLTA1.8
SAY @772
= @773
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",1)~ EXIT
END

IF ~~ ShLTA1.7
SAY @774
IF ~~ THEN GOTO ShLTA1.3
END

IF ~~ ShLTA1.6
SAY @775
	IF ~~ THEN EXIT
END

IF ~~ ShLTA1.5
SAY @776
IF ~~ THEN GOTO ShLTA1.3
END

IF ~~ ShLTA1.4
SAY @777
= @778
	IF ~~ THEN EXIT
END

IF ~~ ShLTA1.3
SAY @779
= @780
++ @781 + ShLTA1.8
++ @782 + ShLTA1.1
++ @783 + ShLTA1.2
END

IF ~~ ShLTA1.2
SAY @784
++ @785 + ShLTA1.4
+ ~Class(Player1,PALADIN_ALL)~ + @786 + ShLTA1.5
+ ~Class(Player1,RANGER_ALL)~ + @787 + ShLTA1.5
++ @788 + ShLTA1.6
++ @789 + ShLTA1.7
END

IF ~~ ShLTA1.1
SAY @790
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",1)~ EXIT
END

/* Interest 21 (from Clifette) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharInterestTalk","GLOBAL",42)~ THEN BEGIN SHRO21
SAY @791
++ @792 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",43)~ + 8_2
++ @793 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",43)~ + 8_3
++ @794 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",43)~ + 8_3
++ @795 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",43)~ + 8_4
++ @796 DO ~SetGlobal("X#SharInterestTalk","GLOBAL",43)~ + 8_9
END

IF ~~ 8_2
SAY @797
++ @798 + 8_5
++ @799 + 8_6
++ @800 + 8_7
END

IF ~~ 8_3
SAY @801
++ @802 + 8_11
++ @803 + 8_12
++ @804 + 8_13
END

IF ~~ 8_4
SAY @805
++ @806 + 8_4a
++ @807 + 8_6
++ @808 + 8_3
END

IF ~~ 8_4a
SAY @809
++ @807 + 8_6
++ @810 + 8_xx
++ @811 + 8_3
END

IF ~~ 8_xx
SAY @812
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ 8_5
SAY @813
++ @814 + 8_6
++ @815 + 8_7
END

IF ~~ 8_6aa
SAY @816
++ @817 + 8_16a
++ @818 + 8_16b
END

IF ~~ 8_6
SAY @819
++ @817 + 8_16a
++ @820 + 8_16a
++ @821 + 8_10
++ @818 + 8_16b
END

IF ~~ 8_16a
SAY @822
++ @823 + 8_16c
++ @824 + 8_10
++ @825 + 8_16b
END

IF ~~ 8_16b
SAY @826
	IF ~~ THEN EXIT
END

IF ~~ 8_16c
SAY @827
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)
LeaveParty()
GivePartyAllEquipment()
EscapeArea()~ EXIT
END

IF ~~ 8_7
SAY @828
++ @829 + 8_6aa
++ @830 + 8_14
END

IF ~~ 8_9
SAY @831
++ @832 + 8_6
++ @833 + 8_10
END

IF ~~ 8_10
SAY @834
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

IF ~~ 8_11
SAY @835
++ @836 + 8_9
++ @837 + 8_10
++ @838 + 8_9
END

IF ~~ 8_12
SAY @839
= @840
++ @841 + 8_6
++ @842 + 8_10
++ @843 + 8_6aa
END

IF ~~ 8_13
SAY @844
++ @845 + 8_6
++ @846 + 8_15
END

IF ~~ 8_14
SAY @847
	IF ~~ THEN EXIT
END

IF ~~ 8_15
SAY @848
++ @849 + 8_6
++ @850 + 8_17
END

IF ~~ 8_17
SAY @851
++ @852 + 8_6a
++ @853 + 8_6b
END

IF ~~ 8_6a
SAY @854

	IF ~~ THEN EXIT
END

IF ~~ 8_6b
SAY @855
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

/* Free Floaters */
/* Interest 22 (Free-floater, X#SharAngelo1=1) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharFloater1","GLOBAL",1)~ THEN BEGIN SHRO22
SAY @856
++ @857 DO ~SetGlobal("X#SharFloater1","GLOBAL",2)~ + SHRO20.1
++ @858 DO ~SetGlobal("X#SharFloater1","GLOBAL",2)~ + SHRO20.2
++ @859 DO ~SetGlobal("X#SharFloater1","GLOBAL",2)~ + SHRO20.3
++ @860 DO ~SetGlobal("X#SharFloater1","GLOBAL",2)~ + SHRO20.4
++ @861 DO ~SetGlobal("X#SharFloater1","GLOBAL",2)~ + SHRO20.5
END

IF ~~ SHRO20.1
SAY @862
++ @863 + SHRO20.4
++ @864 + SHRO20.5
++ @865 + SHRO20.6
++ @866 + SHRO20.3
++ @867 + SHRO20.2
END

IF ~~ SHRO20.2
SAY @868
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-1)~EXIT
END

IF ~~ SHRO20.3
SAY @869
++ @870 + SHRO20.7
++ @871 + SHRO20.8
++ @872 + SHRO20.9
++ @873 + SHRO20.10
END

IF ~~ SHRO20.4
SAY @874
++ @875 + SHRO20.9
++ @876 + SHRO20.11
++ @877 + SHRO20.12
++ @878 + SHRO20.13
++ @879 + SHRO20.14
END

IF ~~ SHRO20.5
SAY @880
++ @881 + SHRO20.15
++ @882 EXIT
++ @883 + SHRO20.9
END

IF ~~ SHRO20.6
SAY @884 
++ @885 + SHRO20.14
++ @886 + SHRO20.9
END

IF ~~ SHRO20.7
SAY @887 
IF ~RandomNum(2,1)~ THEN EXIT
IF ~RandomNum(2,2)~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ SHRO20.8
SAY @888 
	IF ~~ THEN EXIT
END

IF ~~ SHRO20.9
SAY @889
	IF ~~ THEN EXIT
END

IF ~~ SHRO20.10
SAY @890
= @891
= @892
	IF ~~ THEN EXIT
END

IF ~~ SHRO20.11
SAY @893
	IF ~~ THEN EXIT
END

IF ~~ SHRO20.12
SAY @894
IF ~RandomNum(2,1)~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-1)~ EXIT
IF ~RandomNum(2,2)~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ SHRO20.13
SAY @895
	IF ~~ THEN EXIT
END

IF ~~ SHRO20.14
SAY @896
= @897
	IF ~~ THEN EXIT
END

IF ~~ SHRO20.15
SAY @898
IF ~~ THEN DO ~IncrementGlobal("X#SharKind","GLOBAL",-2)~ EXIT
END

/* Interest 23 (free-floater) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharFloater2","GLOBAL",1)~ THEN BEGIN SHRO23
SAY @899
++ @900 DO ~SetGlobal("X#SharFloater2","GLOBAL",2)~ + SHRO21.1
++ @901 DO ~SetGlobal("X#SharFloater2","GLOBAL",2)~ + SHRO21.2
++ @902 DO ~SetGlobal("X#SharFloater2","GLOBAL",2)~ + SHRO21.3
++ @903 DO ~SetGlobal("X#SharFloater2","GLOBAL",2)~ + SHRO21.4
END

IF ~~ SHRO21.1
SAY @904
	IF ~~ THEN EXIT
END

IF ~~ SHRO21.2
SAY @905
++ @906 + SHRO21.5
++ @907 + SHRO21.5
++ @908 + SHRO21.6
++ @909 + SHRO21.7
END

IF ~~ SHRO21.3
SAY @910
IF ~~ THEN GOTO SHRO21.1
END

IF ~~ SHRO21.4
SAY @911
++ @901 + SHRO21.2
++ @909 + SHRO21.7
END

IF ~~ SHRO21.5
SAY @912
= @913
= @914
= @915
	IF ~~ THEN EXIT
END

IF ~~ SHRO21.6
SAY @916
IF ~~ THEN GOTO SHRO21.5
END

IF ~~ SHRO21.7
SAY @917
	IF ~~ THEN EXIT
END

/* Interest 24 (free-floater, at rest, have Bloodstone Ring in inventory _RING15, sets Global("X#SharRing","GLOBAL",3) for the amulet flirt to appear) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharRing","GLOBAL",1)~ THEN BEGIN SHRO24
SAY @918
++ @919 DO ~SetGlobal("X#SharRing","GLOBAL",2)~ + SHFLO2.1
++ @920 DO ~SetGlobal("X#SharRing","GLOBAL",2)~ + SHFLO2.2
++ @921 DO ~SetGlobal("X#SharRing","GLOBAL",2)~ + SHFLO2.3
END

IF ~~ SHFLO2.1
SAY @922
++ @923 + SHFLO2.4
++ @924 + SHFLO2.5
++ @925 + SHFLO2.4
++ @926 + SHFLO2.6
END

IF ~~ SHFLO2.2
SAY @927
++ @928 + SHFLO2.7
++ @929 + SHFLO2.6
END

IF ~~ SHFLO2.3
SAY @930
= @931
++ @928 + SHFLO2.7
++ @932 + SHFLO2.6
++ @933 + SHFLO2.8
++ @934 + SHFLO2.9
END

IF ~~ SHFLO2.4
SAY @935
= @936
= @937
++ @928 + SHFLO2.7
++ @938 + SHFLO2.6
++ @933 + SHFLO2.8
++ @934 + SHFLO2.9
END

IF ~~ SHFLO2.5
SAY @939
++ @940 + SHFLO2.4
++ @941 + SHFLO2.10
++ @942 + SHFLO2.11
++ @943 + SHFLO2.6
END

IF ~~ SHFLO2.6
SAY @944
++ @945 DO ~LeaveParty() Enemy() Attack(Player1)~ 
EXIT
++ @946 DO ~GiveGoldForce(-500) LeaveParty() EscapeArea()~ 
EXIT
END

IF ~~ SHFLO2.7
SAY @947
++ @948 + SHFLO2.12
++ @949 + SHFLO2.8
++ @950 + SHFLO2.13
++ @951 DO ~SetGlobal("X#SharRing","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ SHFLO2.8
SAY @952
IF ~~ THEN DO ~SetGlobal("X#SharRing","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ SHFLO2.9
SAY @953
IF ~~ THEN DO ~SetGlobal("X#SharRing","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ SHFLO2.10
SAY @954
IF ~~ THEN DO ~SetGlobal("X#SharRing","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ SHFLO2.11
SAY @955
++ @945 DO ~LeaveParty() Enemy() Attack(Player1)~ EXIT
++ @956 DO ~TakePartyItem("%tutu_var%RING15") DestroyItem("%tutu_var%RING15") RestParty()~ EXIT
END

IF ~~ SHFLO2.12
SAY @957
IF ~~ THEN DO ~SetGlobal("X#SharRing","GLOBAL",3) RestParty()~ EXIT
END

IF ~~ SHFLO2.13
SAY @958
IF ~~ THEN GOTO SHFLO2.12
END

/* Interest 25 (Free Floater, one of the following Books is in inventory */
/* If one of the following books is in inventory */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharBook","GLOBAL",1)~ THEN BEGIN X#SharBook
SAY @959
++ @960 DO ~SetGlobal("X#SharBook","GLOBAL",2)~ + SHFLO1.1
++ @961 DO ~SetGlobal("X#SharBook","GLOBAL",2)~ + SHFLO1.2
++ @962 DO ~SetGlobal("X#SharBook","GLOBAL",2)~ + SHFLO1.3
+ ~InParty(Player4) CheckStatGT(Player1,16,STR)~ + @963 DO ~SetGlobal("X#SharBook","GLOBAL",2)~ + SHFLO1.4STR
+ ~InParty(Player4) CheckStatLT(Player1,17,STR)~ + @963 DO ~SetGlobal("X#SharBook","GLOBAL",2)~ + SHFLO1.4WEAK
+ ~!InParty(Player4)~ + @964 DO ~SetGlobal("X#SharBook","GLOBAL",2)~ + SHFLO1.4NOPARTY
END

IF ~~ SHFLO1.1
SAY @965
++ @966 + SHFLO1.5
++ @967 + SHFLO1.3
+ ~InParty(Player4) CheckStatGT(Player1,16,STR)~ + @968 + SHFLO1.4STR
+ ~InParty(Player4) CheckStatLT(Player1,17,STR)~ + @968 + SHFLO1.4WEAK
+ ~!InParty(Player4)~ + @969 + SHFLO1.4NOPARTY
END

IF ~~ SHFLO1.2
SAY @970
+ ~Class(Player1,THIEF_ALL)~ + @971 + SHFLO1.6
++ @966 + SHFLO1.5
++ @967 + SHFLO1.3
+ ~InParty(Player4) CheckStatGT(Player1,16,STR)~ + @968 + SHFLO1.4STR
+ ~InParty(Player4) CheckStatLT(Player1,17,STR)~ + @968 + SHFLO1.4WEAK
+ ~!InParty(Player4)~ + @972 + SHFLO1.4NOPARTY
END

IF ~~ SHFLO1.3
SAY @973
= @974
+ ~CheckStatLT(Player1,18,STR)~ + @975 +SHFLO1.7
+ ~CheckStatGT(Player1,17,STR)~ + @976 +SHFLO1.7
++ @977 +SHFLO1.9
++ @978 +SHFLO1.8
END

IF ~~ SHFLO1.4STR
SAY @979
++ @980 DO ~RestParty()~ EXIT
++ @981 + SHFLO1.5
END

IF ~~ SHFLO1.4WEAK
SAY @982
++ @983 DO ~RestParty()~ EXIT
++ @981 + SHFLO1.5
++ @984 +SHFLO1.10
END

IF ~~ SHFLO1.4NOPARTY
SAY @985
++ @983 DO ~RestParty()~ EXIT
++ @981 + SHFLO1.5
++ @984 +SHFLO1.10
END

IF ~~ SHFLO1.5
SAY @986
++ @987 DO ~RestParty()~ EXIT
+ ~PartyHasItem("%tutu_var%BOOK36") CheckStatGT(Player1,15,CHR)~ + @988 + SHFLO1.13HighChar
+ ~PartyHasItem("%tutu_var%BOOK35") CheckStatGT(Player1,15,CHR)~ + @989 + SHFLO1.13HighChar
+ ~PartyHasItem("%tutu_var%BOOK40") CheckStatGT(Player1,15,CHR)~ + @990 + SHFLO1.13HighChar
+ ~PartyHasItem("%tutu_var%BOOK41") CheckStatGT(Player1,15,CHR)~ + @991 + SHFLO1.13HighChar
+ ~PartyHasItem("%tutu_var%BOOK36") CheckStatLT(Player1,16,CHR)~ + @988 + SHFLO1.13LowChar
+ ~PartyHasItem("%tutu_var%BOOK35") CheckStatLT(Player1,16,CHR)~ + @989 + SHFLO1.13LowChar
+ ~PartyHasItem("%tutu_var%BOOK40") CheckStatLT(Player1,16,CHR)~ + @992 + SHFLO1.13LowChar
+ ~PartyHasItem("%tutu_var%BOOK41") CheckStatLT(Player1,16,CHR)~ + @991 + SHFLO1.13LowChar
END

IF ~~ SHFLO1.6
SAY @993
++ @983 DO ~RestParty()~ EXIT
++ @994 + SHFLO1.5
++ @995 +SHFLO1.11
END

IF ~~ SHFLO1.7
SAY @996
IF ~~ THEN DO ~LeaveParty() EscapeArea() RestParty()~ EXIT
END

IF ~~ SHFLO1.8
SAY @997
IF ~~ THEN DO ~LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ SHFLO1.9
SAY @998
IF ~~ THEN DO ~LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ SHFLO1.10
SAY @999
++ @983 DO ~RestParty()~ EXIT
++ @1000 + SHFLO1.12
END

IF ~~ SHFLO1.11
SAY @1001
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ SHFLO1.12
SAY @1002
++ @983 DO ~RestParty()~ EXIT
++ @994 + SHFLO1.5
END

IF ~~ SHFLO1.13HighChar
SAY @1003
= @1004
++ @1005 + SHFLO1.14
++ @1006 DO ~RestParty()~ EXIT
++ @1007 + SHFLO1.15
END

IF ~~ SHFLO1.13LowChar
SAY @1008
= @1009
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ SHFLO1.14
SAY @1010
++ @1011 + SHFLO1.16
++ @1006 DO ~RestParty()~ EXIT
++ @1012 + SHFLO1.15
END

IF ~~ SHFLO1.15
SAY @1013
= @1014
IF ~~ THEN GOTO SHFLO1.13LowChar
END

IF ~~ SHFLO1.16
SAY @1015
IF ~~ THEN DO ~RestParty()~ EXIT
END

/* Shar is unhappy about flirting with Delainey */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharDelFlower","GLOBAL",1)~ THEN BEGIN X#SharDel
SAY @1016
++ @1017 DO ~SetGlobal("X#SharDelFlower","GLOBAL",2)~ + SHDEL1
++ @1018 DO ~SetGlobal("X#SharDelFlower","GLOBAL",2)~ + SHDEL1
++ @1019 DO ~SetGlobal("X#SharDelFlower","GLOBAL",2)~ + SHDEL2
END

IF ~~ SHDEL1
SAY @1020
	IF ~~ THEN EXIT
END

IF ~~ SHDEL2
SAY @889
	IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharDelFlower","GLOBAL",3)~ THEN BEGIN X#SharDel3
SAY @1021
IF ~~ THEN DO ~SetGlobal("X#SharDelFlower","GLOBAL",4) SetGlobal("X#SharInterest","GLOBAL",3) LeaveParty() Enemy() Attack(Player1)~ EXIT
END

/* Shar-Teel Initiated Flirts Early */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharFlirtEarly","GLOBAL",1)~ THEN BEGIN ShFlirtEarly
SAY @1022 
IF ~RandomNum(31,1)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL1
IF ~RandomNum(31,2)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL2
IF ~RandomNum(31,3)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL3
IF ~RandomNum(31,4)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL4
IF ~RandomNum(31,5)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL5
IF ~RandomNum(31,6)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL6
IF ~RandomNum(31,7)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL7
IF ~RandomNum(31,8)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL8
IF ~RandomNum(31,9)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL9
IF ~RandomNum(31,10)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL10
IF ~RandomNum(31,11)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL11
IF ~RandomNum(31,12)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL12
IF ~RandomNum(31,13)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL13
IF ~RandomNum(31,14)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL14
IF ~RandomNum(31,15)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL15
IF ~RandomNum(31,16)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL16
IF ~RandomNum(31,17)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL17
IF ~RandomNum(31,18)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL18
IF ~RandomNum(31,19)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL19
IF ~RandomNum(31,20)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL20
IF ~RandomNum(31,21)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL21
IF ~RandomNum(31,22)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL22
IF ~RandomNum(31,23)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL23
IF ~RandomNum(31,24)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL24
IF ~RandomNum(31,25)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL25
IF ~RandomNum(31,26)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL26
IF ~RandomNum(31,27)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL27
IF ~RandomNum(31,28)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL28
IF ~RandomNum(31,29)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL29
IF ~RandomNum(31,30)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL30
IF ~RandomNum(31,31)~ DO ~SetGlobal("X#SharFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtEarlyTime","GLOBAL",SHROM_TIMER)~ + SHINFL00
END

IF ~~ SHINFL1
	SAY @1023
	IF ~~ THEN EXIT
END

IF ~~ SHINFL2
	SAY @1024
	IF ~~ THEN EXIT
END

IF ~~ SHINFL3
	SAY @1025
	IF ~~ THEN EXIT
END

IF ~~ SHINFL4
	SAY @1026
	IF ~~ THEN EXIT
END

IF ~~ SHINFL5
	SAY @1027
	IF ~~ THEN EXIT
END

IF ~~ SHINFL6
	SAY @1028
	IF ~~ THEN EXIT
END

IF ~~ SHINFL7
	SAY @1029
	IF ~~ THEN EXIT
END

IF ~~ SHINFL8
	SAY @1030
	IF ~~ THEN EXIT
END

IF ~~ SHINFL9
	SAY @1031
	IF ~~ THEN EXIT
END

IF ~~ SHINFL10
	SAY @1032
	IF ~~ THEN EXIT
END

IF ~~ SHINFL11
	SAY @1033
	IF ~~ THEN EXIT
END

IF ~~ SHINFL12
	SAY @1034
	IF ~~ THEN EXIT
END

IF ~~ SHINFL13
	SAY @1035
	IF ~~ THEN EXIT
END

IF ~~ SHINFL14
	SAY @1036
	IF ~~ THEN EXIT
END

IF ~~ SHINFL15
	SAY @1037
	IF ~~ THEN EXIT
END

IF ~~ SHINFL16
	SAY @1038
	IF ~~ THEN EXIT
END

IF ~~ SHINFL17
	SAY @1039
	IF ~~ THEN EXIT
END

IF ~~ SHINFL18
	SAY @1040
= @1041
	IF ~~ THEN EXIT
END

IF ~~ SHINFL19
	SAY @1042
	IF ~~ THEN EXIT
END

IF ~~ SHINFL20
	SAY @1043
	IF ~~ THEN EXIT
END

IF ~~ SHINFL21
	SAY @1044
	IF ~~ THEN EXIT
END

IF ~~ SHINFL22
	SAY @1045
	IF ~~ THEN EXIT
END

IF ~~ SHINFL23
	SAY @1046
	IF ~~ THEN EXIT
END

IF ~~ SHINFL00
	SAY @1047
	IF ~~ THEN EXIT
END

IF ~~ SHINFL24
	SAY @1048
	IF ~~ THEN EXIT
END

IF ~~ SHINFL25
	SAY @1049
	IF ~~ THEN EXIT
END

IF ~~ SHINFL26
	SAY @1050
	IF ~~ THEN EXIT
END

IF ~~ SHINFL27
	SAY @1051
	IF ~~ THEN EXIT
END

IF ~~ SHINFL28
	SAY @1052
	IF ~~ THEN EXIT
END

IF ~~ SHINFL29
	SAY @1053
	IF ~~ THEN EXIT
END

IF ~~ SHINFL30
	SAY @1054
	IF ~~ THEN EXIT
END

/* Shar-Teel Initiated Flirts Late */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharFlirtLate","GLOBAL",1)~ THEN BEGIN ShFlirtLate
	SAY @1055 
	IF ~RandomNum(30,1)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL31
	IF ~RandomNum(30,2)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL32
	IF ~RandomNum(30,3)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL33
	IF ~RandomNum(30,4)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL34
	IF ~RandomNum(30,5)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL35
	IF ~RandomNum(30,6)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL36
	IF ~RandomNum(30,7)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL37
	IF ~RandomNum(30,8)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL38
	IF ~RandomNum(30,9)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL39
	IF ~RandomNum(30,10)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL40
	IF ~RandomNum(30,11)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL41
	IF ~RandomNum(30,12)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL42
	IF ~RandomNum(30,13)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL43
	IF ~RandomNum(30,14)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL44
	IF ~RandomNum(30,15)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL45
	IF ~RandomNum(30,16)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL46
	IF ~RandomNum(30,17)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL47
	IF ~RandomNum(30,18)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL48
	IF ~RandomNum(30,19)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL49
	IF ~RandomNum(30,20)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL50
	IF ~RandomNum(30,21)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL51
	IF ~RandomNum(30,22)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL52
	IF ~RandomNum(30,23)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL53
	IF ~RandomNum(30,24)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL54
	IF ~RandomNum(30,25)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL55
	IF ~RandomNum(30,26)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL56
	IF ~RandomNum(30,27)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL57
	IF ~RandomNum(30,28)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL58
	IF ~RandomNum(30,29)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL59
	IF ~RandomNum(30,30)~ DO ~SetGlobal("X#SharFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtLateTime","GLOBAL",SHROM_TIMER)~ + SHINFL60
END

IF ~~ SHINFL31
	SAY @1056
	IF ~~ THEN EXIT
END

IF ~~ SHINFL32
	SAY @1057
	IF ~~ THEN EXIT
END

IF ~~ SHINFL33
	SAY @1058
	IF ~~ THEN EXIT
END

IF ~~ SHINFL34
	SAY @1059
	IF ~~ THEN EXIT
END

IF ~~ SHINFL35
	SAY @1060
	IF ~~ THEN EXIT
END

IF ~~ SHINFL36
	SAY @1061
	IF ~~ THEN EXIT
END

IF ~~ SHINFL37
	SAY @1062
	IF ~~ THEN EXIT
END

IF ~~ SHINFL38
	SAY @1063
	IF ~~ THEN EXIT
END

IF ~~ SHINFL39
	SAY @1063
	IF ~~ THEN EXIT
END

IF ~~ SHINFL40
	SAY @1064
	IF ~~ THEN EXIT
END

IF ~~ SHINFL41
	SAY @1065
	IF ~~ THEN EXIT
END

IF ~~ SHINFL42
	SAY @1066
	IF ~~ THEN EXIT
END

IF ~~ SHINFL43
	SAY @1067
	IF ~~ THEN EXIT
END

IF ~~ SHINFL44
	SAY @1068
	IF ~~ THEN EXIT
END

IF ~~ SHINFL45
	SAY @1069
	IF ~~ THEN EXIT
END

IF ~~ SHINFL46
	SAY @1070
	IF ~~ THEN EXIT
END

IF ~~ SHINFL47
	SAY @1071
	IF ~~ THEN EXIT
END

IF ~~ SHINFL48
	SAY @1072
	IF ~~ THEN EXIT
END

IF ~~ SHINFL49
	SAY @1073
	IF ~~ THEN EXIT
END

IF ~~ SHINFL50
	SAY @1074
	IF ~~ THEN EXIT
END

IF ~~ SHINFL51
	SAY @1075
	IF ~~ THEN EXIT
END

IF ~~ SHINFL52
	SAY @1076
	IF ~~ THEN EXIT
END

IF ~~ SHINFL53
	SAY @1077
	IF ~~ THEN EXIT
END

IF ~~ SHINFL54
	SAY @1078
	IF ~~ THEN EXIT
END

IF ~~ SHINFL55
	SAY @1079
	IF ~~ THEN EXIT
END

IF ~~ SHINFL56
	SAY @1080
	IF ~~ THEN EXIT
END

IF ~~ SHINFL57
	SAY @1081
	IF ~~ THEN EXIT
END

IF ~~ SHINFL58
	SAY @1082
	IF ~~ THEN EXIT
END

IF ~~ SHINFL59
	SAY @1083
	IF ~~ THEN EXIT
END

IF ~~ SHINFL60
	SAY @1084
	IF ~~ THEN EXIT
END

/* Shar-Teel Initiated Flirts Late */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#SharFlirtKind","GLOBAL",1)~ THEN BEGIN ShFlirtKind
	SAY @1085  
	IF ~RandomNum(30,1)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL61
	IF ~RandomNum(30,2)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL62
	IF ~RandomNum(30,3)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL63
	IF ~RandomNum(30,4)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL64
	IF ~RandomNum(30,5)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL65
	IF ~RandomNum(30,6)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL66
	IF ~RandomNum(30,7)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL67
	IF ~RandomNum(30,8)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL68
	IF ~RandomNum(30,9)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL69
	IF ~RandomNum(30,10)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL70
	IF ~RandomNum(30,11)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL71
	IF ~RandomNum(30,12)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL72
	IF ~RandomNum(30,13)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL73
	IF ~RandomNum(30,14)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL74
	IF ~RandomNum(30,15)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL75
	IF ~RandomNum(30,16)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL76
	IF ~RandomNum(30,17)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL77
	IF ~RandomNum(30,18)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL78
	IF ~RandomNum(30,19)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL79
	IF ~RandomNum(30,20)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL80
	IF ~RandomNum(30,21)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL81
	IF ~RandomNum(30,22)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL82
	IF ~RandomNum(30,23)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL83
	IF ~RandomNum(30,24)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL84
	IF ~RandomNum(30,25)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL85
	IF ~RandomNum(30,26)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL86
	IF ~RandomNum(30,27)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL87
	IF ~RandomNum(30,28)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL88
	IF ~RandomNum(30,29)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL89
	IF ~RandomNum(30,30)~ DO ~SetGlobal("X#SharFlirtKind","GLOBAL",0) RealSetGlobalTimer("X#SharFlirtKindTime","GLOBAL",SHROM_TIMER)~ + SHINFL90
END

IF ~~ SHINFL61
SAY @1086
	IF ~~ THEN EXIT
END

IF ~~ SHINFL62
SAY @1087
	IF ~~ THEN EXIT
END

IF ~~ SHINFL63
SAY @1088
	IF ~~ THEN EXIT
END

IF ~~ SHINFL64
SAY @1089
	IF ~~ THEN EXIT
END

IF ~~ SHINFL65
SAY @1090
	IF ~~ THEN EXIT
END

IF ~~ SHINFL66
	SAY @1091
	IF ~~ THEN EXIT
END

IF ~~ SHINFL67
	SAY @1092
	IF ~~ THEN EXIT
END

IF ~~ SHINFL68
	SAY @1093
	IF ~~ THEN EXIT
END

IF ~~ SHINFL69
	SAY @1094
	= @1095
	IF ~~ THEN EXIT
END

IF ~~ SHINFL70
	SAY @1096
	IF ~~ THEN EXIT
END

IF ~~ SHINFL71
	SAY @1097
	IF ~~ THEN EXIT
END

IF ~~ SHINFL72
	SAY @1098
	IF ~~ THEN EXIT
END

IF ~~ SHINFL73
	SAY @1099
	IF ~~ THEN EXIT
END

IF ~~ SHINFL74
	SAY @1100
	IF ~~ THEN EXIT
END

IF ~~ SHINFL75
	SAY @1101
	IF ~~ THEN EXIT
END

IF ~~ SHINFL76
	SAY @1102
	IF ~~ THEN EXIT
END

IF ~~ SHINFL77
	SAY @1103
	IF ~~ THEN EXIT
END

IF ~~ SHINFL78
	SAY @1104
	IF ~~ THEN EXIT
END

IF ~~ SHINFL79
	SAY @1105
	IF ~~ THEN EXIT
END

IF ~~ SHINFL80
	SAY @1106
	IF ~~ THEN EXIT
END

IF ~~ SHINFL81
	SAY @1107
	IF ~~ THEN EXIT
END

IF ~~ SHINFL82
	SAY @1108
	IF ~~ THEN EXIT
END

IF ~~ SHINFL83
	SAY @1109
	IF ~~ THEN EXIT
END

IF ~~ SHINFL84
	SAY @1110
	IF ~~ THEN EXIT
END

IF ~~ SHINFL85
	SAY @1111
	= @1112
	= @1113
	IF ~~ THEN EXIT
END

IF ~~ SHINFL86
	SAY @1114
	IF ~~ THEN EXIT
END

IF ~~ SHINFL87
	SAY @1115
	= @1116
	= @1117
	IF ~~ THEN EXIT
END

IF ~~ SHINFL88
	SAY @1118
	IF ~~ THEN EXIT
END

IF ~~ SHINFL89
	SAY @1119
	IF ~~ THEN EXIT
END

IF ~~ SHINFL90
	SAY @1120
	= @1121
	IF ~~ THEN DO ~RestParty()~ EXIT
END

END

