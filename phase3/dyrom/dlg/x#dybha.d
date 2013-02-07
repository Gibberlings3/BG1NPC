/* Bhallspawn Talks */

APPEND ~%DYNAHEIR_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#BTTalk","GLOBAL",2)~ THEN BEGIN X#DYBhaalTalk1
SAY @0 
++ @1 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1) IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + DYBH1.1
++ @2 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + DYBH1.2
++ @3 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + DYBH1.3
++ @4 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + DYBH1.4
++ @5 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + DYBH1.3
END

IF ~~ DYBH1.1
SAY @6
++ @7 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ + DYBH1.5
++ @8 + DYBH1.3
++ @2 + DYBH1.2
END

IF ~~ DYBH1.2
SAY @9
++ @10 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",1)~ + DYBH1.5
++ @11 + DYBH1.6
++ @12 + DYBH1.3
++ @13 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",1)~ EXIT
END

IF ~~ DYBH1.3
SAY @14
++ @15 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",1)~ EXIT
++ @16 + DYBH1.7
++ @17 + DYBH1.8
++ @18 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",1)~ + DYBH1.7A
++ @19 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ + DYBH1.7B
END

IF ~~ DYBH1.4
SAY @20
IF ~~ THEN GOTO DYBH1.2
END

IF ~~ DYBH1.5
SAY @21
++ @12 + DYBH1.3
++ @13 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",1)~ EXIT
END

IF ~~ DYBH1.6
SAY @22
++ @23 + DYBH1.3
++ @24 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ + DYBH1.3
++ @25 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ + DYBH1.3
END

IF ~~ DYBH1.7A
SAY @26
IF ~~ THEN EXIT
END

IF ~~ DYBH1.7B
SAY @27
IF ~~ THEN GOTO DYBH1.7
END

IF ~~ DYBH1.7
SAY @28
= @29
= @30
= @31
= @32
= @33
= @34
= @35
++ @36 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ + DYBH1.9
++ @37 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ + DYBH1.8
++ @38 + DYBH1.10
++ @39 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ + DYBH1.11
++ @40 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ + DYBH1.12
++ @41 + DYBH1.13
++ @42 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ + DYBH1.16
END

IF ~~ DYBH1.8
SAY @43
++ @44 + DYBH1.10
++ @45 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ + DYBH1.12
++ @46 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ EXIT
+ ~Global("X#DynaheirLover","GLOBAL",0)~ + @47 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",1)~ + DYBH1.14
++ @48 + DYBH1.17
END

IF ~~ DYBH1.9
SAY @49
++ @50 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ + DYBH1.15
++ @51 EXIT
+ ~Global("X#DynaheirLover","GLOBAL",0)~ + @47 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",1)~ + DYBH1.14
++ @52 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",1)~ EXIT
END

IF ~~ DYBH1.10
SAY @53
= @54
++ @50 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ + DYBH1.15
++ @55 EXIT
+ ~Global("X#DynaheirLover","GLOBAL",0)~ + @47 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",1)~ + DYBH1.14
++ @52 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",1)~ EXIT
END

IF ~~ DYBH1.11
SAY @56
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT END

IF ~~ DYBH1.12
SAY @57
IF ~~ THEN EXIT
END

IF ~~ DYBH1.13
SAY @58
IF ~~ THEN EXIT
END

IF ~~ DYBH1.14
SAY @59
IF ~~ THEN EXIT
END
 
IF ~~ DYBH1.15
SAY @60
IF ~~ THEN EXIT
END

IF ~~ DYBH1.16
SAY @61
IF ~~ THEN EXIT
END

IF ~~ DYBH1.17
SAY @62
IF ~~ THEN EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#BTTalk","GLOBAL",4)~ THEN BEGIN X#DYBhaalTalk2
SAY @63 
++ @64 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + BT2.1
++ @65 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + BT2.2
+ ~Race(Player1,HUMAN)~ + @66 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + BT2.3
+ ~Race(Player1,HALF_ELF)~ + @67 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + BT2.4
+ ~Race(Player1,HALFORC)~ + @68 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + BT2.5
+ ~Race(Player1,ELF)~ + @69 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + BT2.6
++ @70 + BT2.7
END

IF ~~ BT2.1
SAY @71
++ @65 + BT2.2
+ ~Race(Player1,HUMAN)~ + @66 + BT2.3
+ ~Race(Player1,HALF_ELF)~ + @67 + BT2.4

+ ~Race(Player1,HALFORC)~ + @68 + BT2.5
+ ~Race(Player1,ELF)~ + @72 + BT2.6
++ @73 + BT2.8
END

IF ~~ BT2.2
SAY @74
+ ~Race(Player1,HUMAN)~ + @66 + BT2.3
+ ~Race(Player1,HALF_ELF)~ + @67 + BT2.4
+ ~Race(Player1,HALFORC)~ + @68 + BT2.5
+ ~Race(Player1,ELF)~ + @75 + BT2.6
++ @76 + BT2.7
END

IF ~~ BT2.3
SAY @77
++ @78 +BT2.9
++ @79 + BT2.10
++ @80 + BT2.10
++ @81 + BT2.11
END

IF ~~ BT2.4
SAY @82
++ @78 +BT2.9
++ @79 + BT2.10
++ @80 + BT2.10
++ @81 + BT2.11
END


IF ~~ BT2.5
SAY @83
= @84 
++ @78 +BT2.9
++ @79 + BT2.10
++ @80 + BT2.10
++ @81 + BT2.11
END

IF ~~ BT2.6
SAY @85
++ @86 + BT2.12
++ @79 + BT2.10
++ @87 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ EXIT
END

IF ~~ BT2.7
SAY @88
++ @89 + BT2.13
++ @90 + BT2.14
++ @91 + BT2.15
END

IF ~~ BT2.8
SAY @92
= @93
++ @94 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",1)~ EXIT
++ @89 + BT2.13
++ @90 + BT2.14
++ @91 + BT2.15
END

IF ~~ BT2.9
SAY @95
++ @96 + BT2.16
++ @97 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ EXIT
END

IF ~~ BT2.10
SAY @98
++ @99 + BT2.17
++ @100 + BT2.16
++ @101 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ EXIT
END

IF ~~ BT2.11
SAY @102
= @103
= @104
++ @105 + BT2.10
++ @106 + BT2.16
END

IF ~~ BT2.12
SAY @107
++ @108 + BT2.18
++ @109 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ EXIT
END

IF ~~ BT2.13
SAY @110
++ @99 + BT2.17
++ @111 + BT2.16
++ @101 DO 
~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ EXIT
END

IF ~~ BT2.14
SAY @112
IF ~~ THEN DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",2)~ EXIT
END

IF ~~ BT2.15
SAY @113
IF ~~ THEN DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",1)~ EXIT
END

IF ~~ BT2.16
SAY @114
++ @115 + BT2.19
++ @116 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ EXIT
END

IF ~~ BT2.17
SAY @117
IF ~~ THEN DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ EXIT
END

IF ~~ BT2.18
SAY @118
++ @119 + BT2.16
++ @120 + BT2.20
++ @121 + BT2.16
END

IF ~~ BT2.19
SAY @122
++ @123 + BT2.21
++ @116 DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ EXIT
END

IF ~~ BT2.20
SAY @124
= @125
IF ~~ THEN DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ EXIT
END

IF ~~ BT2.21
SAY @126
IF ~~ THEN DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",2)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#BTTalk","GLOBAL",6)~ THEN BEGIN X#DYBhaalTalk3
SAY @127
= @128
= @129
++ @130 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + BT3.1
++ @131 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + BT3.2
++ @132 DO ~IncrementGlobal("X#BTTalk","GLOBAL",1) RealSetGlobalTimer("X#BTTalkTime","GLOBAL",DYROM_TIMER)~ + BT3.3
END

IF ~~ BT3.1
SAY @133 
++ @134 
DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ EXIT
++ @131 + BT3.2
++ @132 + BT3.3
END

IF ~~ BT3.2
SAY @135
++ @136 +BT3.4
++ @137 + BT3.5
++ @138 + BT3.6
++ @139 + BT3.7
END

IF ~~ BT3.3
SAY @140
= @141
++ @136 +BT3.4
++ @137 + BT3.5
++ @138 + BT3.6
++ @139 + BT3.7
END

IF ~~ BT3.4
SAY @142
= @143
++ @137 + BT3.5
++ @138 + BT3.6
++ @139 + BT3.7
END

IF ~~ BT3.5
SAY @144
IF ~~ THEN DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-1)~ EXIT
END

IF ~~ BT3.6
SAY @145
= @146
IF ~~ THEN DO ~SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1) GiveItemCreate("X#DYOATH",Player1,1,0,0)~ EXIT
END

IF ~~ BT3.7
SAY @147
IF ~~ THEN DO ~IncrementGlobal("X#DynaheirBhaalBreak","GLOBAL",-2)~ EXIT
END

END
