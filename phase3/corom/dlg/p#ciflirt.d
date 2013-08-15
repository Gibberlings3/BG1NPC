APPEND ~%CORAN_JOINED%~

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CoSunrise","GLOBAL",1)~ THEN BEGIN CoSunrise
SAY @0
= @1
= @2
= @3
= @4
++ @5 DO ~SetGlobal("P#CoSunrise","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ EXIT
++ @6 DO ~SetGlobal("P#CoSunrise","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ EXIT
++ @7 DO ~SetGlobal("P#CoSunrise","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ EXIT
++ @8 DO ~SetGlobal("P#CoSunrise","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ EXIT
++ @9 DO ~SetGlobal("P#CoSunrise","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + CoSunrise1
END 

IF ~~ THEN BEGIN CoSunrise1
SAY @10
IF ~~ THEN DO ~SetGlobal("P#CoranLover", "GLOBAL",1) SetGlobal("P#CoranRomancePath","GLOBAL",2)~ EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CoNight","GLOBAL",1)~ THEN BEGIN CoNight
SAY @11
= @12
= @13
= @14
= @15
++ @16 DO ~SetGlobal("P#CoNight","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER) RestParty()~ EXIT
++ @17 DO ~SetGlobal("P#CoNight","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER) RestParty()~ EXIT
++ @18 DO ~SetGlobal("P#CoNight","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + CoNight1
END

IF ~~ THEN BEGIN CoNight1
 SAY @19
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CoRain","GLOBAL",2)~ THEN BEGIN CoRain
SAY @20
= @21
= @22
= @23
= @24
= @25
++ @26 DO ~SetGlobal("P#CoRain","GLOBAL",3) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ EXIT
++ @27 DO ~SetGlobal("P#CoRain","GLOBAL",3) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + CoRain1
++ @28 DO ~SetGlobal("P#CoRain","GLOBAL",3) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + CoRain2
END

IF ~~ THEN BEGIN CoRain1
SAY @29
IF ~~ THEN EXIT
END
 
IF ~~ THEN BEGIN CoRain2
SAY @30
IF ~~ THEN EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CoInn","GLOBAL",1)~ THEN BEGIN CoInn
SAY @31
= @32
= @33
= @34
= @35
= @36
IF ~~ THEN DO ~SetGlobal("P#CoInn","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER) RestParty()~ EXIT
END

IF WEIGHT #-3 ~%BGT_VAR% Global("P#CorBhaal","GLOBAL",1)~ THEN BEGIN CoBaahl
SAY @37 
++ @38 DO ~SetGlobal("P#CorBhaal","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + COBH1.1
++ @39 DO ~SetGlobal("P#CorBhaal","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + COBH1.2
++ @40 DO ~SetGlobal("P#CorBhaal","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + COBH1.1
+ ~!InParty("eldoth")~ + @41 DO ~SetGlobal("P#CorBhaal","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + COBH1.4
+ ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ + @42 DO ~SetGlobal("P#CorBhaal","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + COBH1.4
++ @43 DO ~SetGlobal("P#CorBhaal","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + COBH1.5
++ @44 DO ~SetGlobal("P#CorBhaal","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + COBH1.11
++ @45 DO ~SetGlobal("P#CorBhaal","GLOBAL",2) RealSetGlobalTimer("P#CFlirtTalkTime","GLOBAL",COROM_TIMER)~ + COBH1.12
END

IF ~~ THEN BEGIN COBH1.1
SAY @46
IF ~~ THEN REPLY @47 GOTO COBH1.6
IF ~~ THEN REPLY @48 GOTO COBH1.5
IF ~~ THEN REPLY @49 GOTO COBH1.4
END

IF ~~ THEN BEGIN COBH1.2
SAY @50
= @51
IF ~~ THEN GOTO COBH1.3
END

IF ~~ THEN BEGIN COBH1.3
SAY @52
IF ~~ THEN REPLY @53 GOTO COBH1.8
IF ~~ THEN REPLY @54 GOTO COBH1.4
IF ~~ THEN REPLY @55 GOTO COBH1.7
IF ~~ THEN REPLY @56 EXIT
++ @44 + COBH1.11
++ @45 + COBH1.12
END

IF ~~ THEN BEGIN COBH1.4
SAY @57
IF ~~ THEN REPLY @58 GOTO COBH1.8
IF ~~ THEN REPLY @54 GOTO COBH1.4
IF ~~ THEN REPLY @55 GOTO COBH1.7
IF ~~ THEN REPLY @56 EXIT
++ @44 + COBH1.11
++ @45 + COBH1.12
END

IF ~~ THEN BEGIN COBH1.5
SAY @59
IF ~~ THEN GOTO COBH1.4
END

IF ~~ THEN BEGIN COBH1.6
SAY @60
IF ~~ THEN GOTO COBH1.3
END

IF ~~ THEN BEGIN COBH1.7
SAY @61
IF ~~ THEN REPLY @62 EXIT
IF ~~ THEN REPLY @63 GOTO COBH1.8
IF ~CheckStatLT(Player1,12,INT)~ THEN REPLY @64 GOTO COBH1.9
IF ~~ THEN REPLY @65 GOTO COBH1.10
END

IF ~~ THEN BEGIN COBH1.8
  SAY @66
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COBH1.9
SAY @67
IF ~~ THEN DO ~RestParty()~ EXIT
END 

IF ~~ THEN BEGIN COBH1.10
SAY @68
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN COBH1.11
SAY @69
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN COBH1.12
SAY @70
= @71
IF ~~ THEN DO ~RestParty()~ EXIT
END

/*Coran Repetitive Flirts */
/* Before Becoming Lovers */
IF WEIGHT #-3 ~%BGT_VAR% Global("X#CoranFlirtEarly","GLOBAL",1)~ THEN BEGIN CoFlirtEarly
SAY @72 
IF ~RandomNum(25,1)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL1
IF ~RandomNum(25,2)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL2
IF ~RandomNum(25,3)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL3
IF ~RandomNum(25,4)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL4
IF ~RandomNum(25,5)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL5
IF ~RandomNum(25,6)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL6
IF ~RandomNum(25,7)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL7
IF ~RandomNum(25,8)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL8
IF ~RandomNum(25,9)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL9
IF ~RandomNum(25,10)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL10
IF ~RandomNum(25,11)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL11
IF ~RandomNum(25,12)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL12
IF ~RandomNum(25,13)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL13
IF ~RandomNum(25,14)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL14
IF ~RandomNum(25,15)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL15
IF ~RandomNum(25,16)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL16
IF ~RandomNum(25,17)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL17
IF ~RandomNum(25,18)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL18
IF ~RandomNum(25,19)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL19
IF ~RandomNum(25,20)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL20
IF ~RandomNum(25,21)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL21
IF ~RandomNum(25,22)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL22
IF ~RandomNum(25,23)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL23
IF ~RandomNum(25,24)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL24
IF ~RandomNum(25,25)~ DO ~SetGlobal("X#CoranFlirtEarly","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtEarlyTime","GLOBAL",1800)~ + COIFL25
END


IF ~~ COIFL1
SAY @73
IF ~~ THEN EXIT
END

IF ~~ COIFL2
SAY @74
IF ~~ THEN EXIT
END

IF ~~ COIFL3
SAY @75
IF ~~ THEN EXIT
END

IF ~~ COIFL4
SAY @76
IF ~~ THEN EXIT
END

IF ~~ COIFL5
SAY @77
IF ~~ THEN EXIT
END

IF ~~ COIFL6
SAY @78
= @79
IF ~~ THEN EXIT
END

IF ~~ COIFL7
SAY @80
IF ~~ THEN EXIT
END

IF ~~ COIFL8
SAY @81
IF ~~ THEN EXIT
END

IF ~~ COIFL9
SAY @82
IF ~~ THEN EXIT
END

IF ~~ COIFL10
SAY @83
IF ~~ THEN EXIT
END

IF ~~ COIFL11
SAY @84
IF ~~ THEN EXIT
END

IF ~~ COIFL12
SAY @85
= @86
IF ~~ THEN EXIT
END

IF ~~ COIFL13
SAY @87
= @88
= @89
= @90
= @91
IF ~~ THEN EXIT
END

IF ~~ COIFL14
SAY @92
= @93
= @94
IF ~~ THEN EXIT
END

IF ~~ COIFL15
SAY @95
IF ~~ THEN EXIT
END

IF ~~ COIFL16
SAY @96
= @97
IF ~~ THEN EXIT
END

IF ~~ COIFL17
SAY @98
IF ~~ THEN EXIT
END

IF ~~ COIFL18
SAY @99
IF ~~ THEN EXIT
END

IF ~~ COIFL19
SAY @100
= @101
= @102
= @103
= @104
IF ~~ THEN EXIT
END

IF ~~ COIFL20
SAY @105
IF ~~ THEN EXIT
END

IF ~~ COIFL21
SAY @106
= @107
IF ~~ THEN EXIT
END

IF ~~ COIFL22
SAY @108
IF ~~ THEN EXIT
END

IF ~~ COIFL23
SAY @109
IF ~~ THEN EXIT
END

IF ~~ COIFL24
SAY @110
= @111
= @112
IF ~~ THEN EXIT
END

IF ~~ COIFL25
SAY @113
IF ~~ THEN EXIT
END

/* After Becoming Lovers */
IF WEIGHT #-3 ~%BGT_VAR% Global("X#CoranFlirtLate","GLOBAL",1)~ THEN BEGIN CoFlirtLate
SAY @114 
IF ~RandomNum(25,1)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL46
IF ~RandomNum(25,2)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL47
IF ~RandomNum(25,3)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL48
IF ~RandomNum(25,4)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL49
IF ~RandomNum(25,5)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL50
IF ~RandomNum(25,6)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL26
IF ~RandomNum(25,7)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL27
IF ~RandomNum(25,8)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL28
IF ~RandomNum(25,9)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL29
IF ~RandomNum(25,10)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL30
IF ~RandomNum(25,11)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL31
IF ~RandomNum(25,12)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL32
IF ~RandomNum(25,13)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL33
IF ~RandomNum(25,14)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL34
IF ~RandomNum(25,15)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL35
IF ~RandomNum(25,16)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL36
IF ~RandomNum(25,17)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL37
IF ~RandomNum(25,18)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL38
IF ~RandomNum(25,19)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL39
IF ~RandomNum(25,20)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL40
IF ~RandomNum(25,21)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL41
IF ~RandomNum(25,22)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL42
IF ~RandomNum(25,23)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL43
IF ~RandomNum(25,24)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL44
IF ~RandomNum(25,25)~ DO ~SetGlobal("X#CoranFlirtLate","GLOBAL",0) RealSetGlobalTimer("X#CoranFlirtLateTime","GLOBAL",1800)~ + COIFL45
END

IF ~~ COIFL26
SAY @115
IF ~~ THEN EXIT
END

IF ~~ COIFL27
SAY @116
IF ~~ THEN EXIT
END

IF ~~ COIFL28
SAY @117
= @118
IF ~~ THEN EXIT
END

IF ~~ COIFL29
SAY @119
IF ~~ THEN EXIT
END

IF ~~ COIFL30
SAY @120
IF ~~ THEN EXIT
END

IF ~~ COIFL31
SAY @121
IF ~~ THEN EXIT
END

IF ~~ COIFL32
SAY @122
= @123
IF ~~ THEN EXIT
END

IF ~~ COIFL33
SAY @124
= @125
IF ~~ THEN EXIT
END

IF ~~ COIFL34
SAY @126
= @127
IF ~~ THEN EXIT
END

IF ~~ COIFL35
SAY @128
= @129
IF ~~ THEN EXIT
END

IF ~~ COIFL36
SAY @130
= @131
IF ~~ THEN EXIT
END

IF ~~ COIFL37
SAY @132
= @133
IF ~~ THEN EXIT
END

IF ~~ COIFL38
SAY @134
= @135
IF ~~ THEN EXIT
END

IF ~~ COIFL39
SAY @136
IF ~~ THEN EXIT
END

IF ~~ COIFL40
SAY @137
= @138
= @139
= @140
IF ~~ THEN EXIT
END

IF ~~ COIFL41
SAY @141
= @142
= @143
IF ~~ THEN EXIT
END

IF ~~ COIFL42
SAY @144
= @145
= @146
IF ~~ THEN EXIT
END

IF ~~ COIFL43
SAY @147
= @148
= @149
IF ~~ THEN EXIT
END

IF ~~ COIFL44
SAY @150
= @151
IF ~~ THEN EXIT
END

IF ~~ COIFL45
SAY @152
= @153
IF ~~ THEN EXIT
END

IF ~~ COIFL46
SAY @154
IF ~~ THEN EXIT
END

IF ~~ COIFL47
SAY @155
IF ~~ THEN EXIT
END

IF ~~ COIFL48
SAY @156
IF ~~ THEN EXIT
END

IF ~~ COIFL49
SAY @157
IF ~~ THEN EXIT
END

IF ~~ COIFL50
SAY @158
= @159
= @160
= @161
IF ~~ THEN EXIT
END

/* Coran's Hanali's Cycle */
/* Night 1, Dream Script, talking about Agape. This one sets a Morning After Talk */
IF WEIGHT #-3 ~%BGT_VAR% Global("X#CoranHanaliRune","GLOBAL",1) Global("X#CoranHanaliRuneFirst","GLOBAL",1)~ THEN BEGIN X#CoHa2
SAY @162
= @163
= @164
= @165
= @166
IF ~~ THEN DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",2) RestParty()~ EXIT
END

/* Morning After Night 1 */
IF WEIGHT #-3 ~%BGT_VAR% Global("X#CoranHanaliRune","GLOBAL",3)~ X#CoHa3
SAY @167
= @168
= @169
= @170
= @171
++ @172 + X#CoHa3.1
++ @173 + X#CoHa3.2
++ @174 + X#CoHa3.3
END

IF ~~ X#CoHa3.1
SAY @175
IF ~~ THEN DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",4) RealSetGlobalTimer("X#CoHanaliTime","GLOBAL",300)~ EXIT
END

IF ~~ X#CoHa3.2
SAY @176
IF ~~ THEN DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",4) RealSetGlobalTimer("X#CoHanaliTime","GLOBAL",300)~ EXIT
END

IF ~~ X#CoHa3.3
SAY @177
IF ~~ THEN DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",4) RealSetGlobalTimer("X#CoHanaliTime","GLOBAL",300)~ EXIT
END

/* Night 2, Lutus, simple dream talk */
IF WEIGHT #-3 ~%BGT_VAR% Global("X#CoranHanaliRune","GLOBAL",5)~ THEN BEGIN X#CoHa4
SAY @178
= @179
= @180
= @181
IF ~~ THEN DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",6) RealSetGlobalTimer("X#CoHanaliTime","GLOBAL",300) RestParty()~ EXIT
END

/* Night 3, Pragma, simple dream talk */
IF WEIGHT #-3 ~%BGT_VAR% Global("X#CoranHanaliRune","GLOBAL",7)~ THEN BEGIN X#CoHa5
SAY @182
= @183
= @184
= @185
= @186
IF ~~ THEN DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",8)  RealSetGlobalTimer("X#CoHanaliTime","GLOBAL",300) RestParty()~ EXIT
END

/* Night 4, big scripting, to make Coran speak on cue if Pc did not give up first */
IF WEIGHT #-3 ~%BGT_VAR% Global("X#CoranHanaliRune","GLOBAL",9)~ THEN BEGIN X#CoHa6
SAY @187
 = @188
= @189
IF ~~ THEN DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",10) SetGlobalTimer("X#CoranLonging","GLOBAL", THREE_DAYS) SetGlobal("P#CoranRomanceInactive","GLOBAL",1) RestParty()~ EXIT
END

/* Coran Gives up after waiting: */
IF WEIGHT #-3 ~%BGT_VAR% Global("X#CoranHanaliRune","GLOBAL",11)~ THEN BEGIN X#CoHa7
SAY @190
= @191
IF ~AreaType(FOREST)~ THEN REPLY @192 DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",0) SetGlobal("X#CoranHanaliRune","GLOBAL",12) RealSetGlobalTimer("X#CoHanaliTime","GLOBAL",300)~ GOTO X#CoHa6.2
IF ~!AreaType(FOREST)~ THEN REPLY @192 DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",12) SetGlobal("P#CoranRomanceInactive","GLOBAL",0) RealSetGlobalTimer("X#CoHanaliTime","GLOBAL",300)~ GOTO X#CoHa6.3
++ @193 EXIT
END

IF ~~ X#CoHa6.2
SAY @194
= @195
= @196
IF ~~ THEN EXIT
END

IF ~~ X#CoHa6.3
SAY @197
= @198
= @199
IF ~~ THEN EXIT
END

/* Night 5, Eros, simple dream talk */
IF WEIGHT #-3 ~%BGT_VAR% Global("X#CoranHanaliRune","GLOBAL",13)~ THEN BEGIN X#CoHa8
SAY @200
= @201
IF ~~ THEN DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",14)  RealSetGlobalTimer("X#CoHanaliTime","GLOBAL",300) RestParty()~ EXIT
END

/* Night 6, Love of the hearth, Simple dream talk */
IF ~Global("X#CoranHanaliRune","GLOBAL",15)~ THEN BEGIN X#CoHa9
SAY @202
= @203
= @204
= @205
IF ~~ THEN DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",16)  RealSetGlobalTimer("X#CoHanaliTime","GLOBAL",300) RestParty()~ EXIT
END

/* Night 7, the end of all things */
/* Love-torment - Day 7 */
IF ~Global("X#CoranHanaliRune","GLOBAL",17)~ THEN BEGIN X#CoHa10
SAY @206
= @207
= @208
= @209
= @210
++ @211 DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",18)~ + X#CoHa10.1
++ @212 DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",18)~ + X#CoHa10.2
++ @213 DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",18)~ + X#CoHa10.3
++ @214 DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",18)~ + X#CoHa10.4
++ @215 DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",18)~ + X#CoHa10.5
++ @216 DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",18)~ + X#CoHa10.6
++ @217 DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",18)~ + X#CoHa10.7
END

IF ~~ X#CoHa10.7
SAY @218
= @219
= @220
IF ~!Alignment("coran",CHAOTIC_NEUTRAL)~ THEN DO ~SetGlobal("P#CoranRomancePath","GLOBAL",2) RestParty()~ EXIT
IF ~Alignment("coran",CHAOTIC_NEUTRAL)~ THEN DO ~SetGlobal("P#CoranRomancePath","GLOBAL",4) RestParty()~ EXIT
END

IF ~~ X#CoHa10.6
SAY @221
= @222
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#CoHa10.5
SAY @221
= @223
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#CoHa10.4
SAY @221
= @224
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#CoHa10.3
SAY @221
= @225
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#CoHa10.2
SAY @221
= @226
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ X#CoHa10.1
SAY @221
= @227
IF ~~ THEN DO ~RestParty()~ EXIT
END

END
