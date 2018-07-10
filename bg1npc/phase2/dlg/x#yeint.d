APPEND ~%YESLICK_JOINED%~
/* Yeslick, When Davaeorn Is Dead */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#YWDID","GLOBAL",1)~ THEN YWDID1
SAY @18
IF ~~ THEN DO ~SetGlobal("X#YWDID","GLOBAL",2)~ EXIT
END

/* Yeslick, As The Party Reach The Upper Level Of The Cloakwood Mine, and the slaves have not been freed) */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#YeslickPartyFreeSlaves","GLOBAL",1)~ THEN YATPRTULOTCM0
SAY @19
++ @20 DO ~SetGlobal("X#YeslickPartyFreeSlaves","GLOBAL",2) SetGlobalTimer("X#YeslickReminderFloodTime","GLOBAL",ONE_DAY)~ EXIT
++ @21 DO ~SetGlobal("X#YeslickPartyFreeSlaves","GLOBAL",2) SetGlobalTimer("X#YeslickReminderFloodTime","GLOBAL",ONE_DAY)~ EXIT
++ @22 DO ~SetGlobal("X#YeslickPartyFreeSlaves","GLOBAL",2) SetGlobalTimer("X#YeslickReminderFloodTime","GLOBAL",ONE_DAY)~ EXIT
++ @23 DO ~SetGlobal("X#YeslickPartyFreeSlaves","GLOBAL",2) SetGlobalTimer("X#YeslickReminderFloodTime","GLOBAL",ONE_DAY)~ + YATPRTULOTCM2
++ @24 DO ~SetGlobal("X#YeslickPartyFreeSlaves","GLOBAL",2) SetGlobalTimer("X#YeslickReminderFloodTime","GLOBAL",ONE_DAY)~ + YATPRTULOTCM3
++ @25 DO ~SetGlobal("X#YeslickPartyFreeSlaves","GLOBAL",2) SetGlobalTimer("X#YeslickReminderFloodTime","GLOBAL",ONE_DAY)~ + YATPRTULOTCM4
END

IF ~~ YATPRTULOTCM2
SAY @26
++ @27 + YATPRTULOTCM4
++ @28 EXIT
++ @29 + YATPRTULOTCM6
END

IF ~~ YATPRTULOTCM3
SAY @30
++ @27 + YATPRTULOTCM4
++ @28 EXIT
++ @29 + YATPRTULOTCM6
END

IF ~~ YATPRTULOTCM4
SAY @31
++ @32 + YATPRTULOTCM5
++ @33 + YATPRTULOTCM6
++ @34 EXIT
END

IF ~~ YATPRTULOTCM5
SAY @35
++ @36 EXIT
++ @37 + YATPRTULOTCM7
END

IF ~~ YATPRTULOTCM7
SAY @38
IF ~~ THEN DO ~LeaveParty() ChangeAIScript("",7) EscapeArea()~ EXIT
END

IF ~~ YATPRTULOTCM6
SAY @39
++ @40 EXIT
++ @41 + YATPRTULOTCM8
++ @42 DO ~Enemy()~ EXIT
END

IF ~~ YATPRTULOTCM8
SAY @43
IF ~~ THEN DO ~LeaveParty() ChangeAIScript("",7) EscapeArea()~ EXIT
END

/* Follow up to Free slaves: If Yeslick remains in the party, then set a timer - in a day, if the mine has not been flooded, Yeslick says */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#YeslickReminderFlood","GLOBAL",1)~ YATPRTULOTCM9
SAY @44
++ @45 DO ~SetGlobal("X#YeslickReminderFlood","GLOBAL",2) SetGlobalTimer("X#YeslickReminderFlood2","GLOBAL",TWO_DAYS)~ EXIT
++ @46 DO ~SetGlobal("X#YeslickReminderFlood","GLOBAL",2) SetGlobalTimer("X#YeslickReminderFlood2","GLOBAL",TWO_DAYS)~ + YATPRTULOTCM10
END

IF ~~ YATPRTULOTCM10
SAY @47
IF ~~ THEN DO ~LeaveParty() ChangeAIScript("",7) EscapeArea()~ EXIT
END

/* if Yeslick stays in the party, set another timer, for two days - if, at the end of this, the mine has STILL not been flooded, Yeslick says */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#YeslickReminderFlood","GLOBAL",3)~ YATPRTULOTCM12
SAY @48
IF ~~ THEN DO ~SetGlobal("X#YeslickReminderFlood","GLOBAL",4) LeaveParty() ChangeAIScript("",7) EscapeArea()~ EXIT
END

/* Yeslick, If the party flood the mine without freeing the slaves */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#YITPFTMWFTS","GLOBAL",1)~ YATPRTULOTCM14
SAY @49
IF ~~ THEN DO ~SetGlobal("X#YITPFTMWFTS","GLOBAL",2) LeaveParty() ChangeAIScript("",7) Enemy()~ EXIT
END

/* Yeslick, If the Party leave the mine, and it has not been flooded */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#YeslickDemandsFlooding","GLOBAL",1)~ YITPLTMNF0
SAY @50
++ @32 DO ~SetGlobal("X#YeslickDemandsFlooding","GLOBAL",2) SetGlobalTimer("X#YeslickFloodTime","GLOBAL",ONE_DAY)~ + YITPLTMNF1
++ @51 DO ~SetGlobal("X#YeslickDemandsFlooding","GLOBAL",2) SetGlobalTimer("X#YeslickFloodTime","GLOBAL",ONE_DAY)~ EXIT
++ @52 DO ~SetGlobal("X#YeslickDemandsFlooding","GLOBAL",2) SetGlobalTimer("X#YeslickFloodTime","GLOBAL",ONE_DAY)~ EXIT
END

IF ~~ YITPLTMNF1
SAY @35
++ @36 EXIT
++ @37 + YITPLTMNF2
END

IF ~~ YITPLTMNF2
SAY @53
IF ~~ THEN DO ~LeaveParty() ChangeAIScript("",7) EscapeArea()~ EXIT
END

/* Yeslick, if remains in the party, then set a timer - in a day, if the mine has not been flooded (part 2) */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#YeslickDemandsFlooding","GLOBAL",3)~ YITPLTMNF4
SAY @54
++ @45 DO ~SetGlobal("X#YeslickDemandsFlooding","GLOBAL",4) SetGlobalTimer("X#YeslickFloodTime2","GLOBAL",FOUR_DAYS)~ EXIT
++ @46 DO ~SetGlobal("X#YeslickDemandsFlooding","GLOBAL",4) SetGlobalTimer("X#YeslickFloodTime2","GLOBAL",FOUR_DAYS)~ + YITPLTMNF5
END

IF ~~ YITPLTMNF5
SAY @55
IF ~~ THEN DO ~LeaveParty() ChangeAIScript("",7) EscapeArea()~ EXIT
END

/* Yeslick, if stays in the party, set another timer, for four days - if, at the end of this, the mine has STILL not been flooded */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#YeslickDemandsFlooding","GLOBAL",5)~ YITPLTMNF7
SAY @56
IF ~~ THEN DO ~SetGlobal("X#YeslickDemandsFlooding","GLOBAL",6) LeaveParty() ChangeAIScript("",7) EscapeArea()~ EXIT
END

/* Yeslick flooded and freed */
IF WEIGHT #-1 ~%BGT_VAR% Global("X#YeslickLiturgy","GLOBAL",1)~ THEN BEGIN YELIT
SAY @57
= @58
IF ~~ THEN DO ~SetGlobal("X#YeslickLiturgy","GLOBAL",2)~ EXIT
END

/* Yeslick, upon coming to Baldur's Gate for the first time */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#YUCTBGFTFT","GLOBAL",1)~ YUCTBGFTFT1
SAY @59
IF ~~ THEN DO ~SetGlobal("X#YUCTBGFTFT","GLOBAL",2)~ EXIT
END

/* Yeslick, Chapter Seven */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#YChapter7","GLOBAL",1)~ YChapter71
SAY @85
++ @86 DO ~SetGlobal("X#YChapter7","GLOBAL",2)~ + YChapter72
++ @87 DO ~SetGlobal("X#YChapter7","GLOBAL",2)~ + YChapter73
++ @88 DO ~SetGlobal("X#YChapter7","GLOBAL",2)~ + YChapter74
++ @89 DO ~SetGlobal("X#YChapter7","GLOBAL",2)~ + YChapter75
++ @90 DO ~SetGlobal("X#YChapter7","GLOBAL",2)~ EXIT
END

/* go to block four */
IF ~~ YChapter72
SAY @91
++ @92 EXIT
++ @93 + YChapter74
++ @94 EXIT
END

/* go to block four */
IF ~~ YChapter73
SAY @95
++ @96 EXIT
++ @97 + YChapter74
++ @98 EXIT
IF ~~ EXIT
END

/* go to block five */
IF ~~ YChapter74
SAY @99
++ @100 + YChapter75
++ @101 + YChapter75
++ @102 + YChapter74a
++ @103 + YChapter74a
END

IF ~~ YChapter74a
SAY @104
IF ~~ EXIT
END

IF ~~ YChapter75
SAY @105
++ @106 + YChapter75a
++ @107 + YChapter75a
++ @108 + YChapter75a
END

IF ~~ YChapter75a
SAY @109
IF ~~ EXIT
END

/*  Yeslick, When in the lower levels of Durlag's Tower */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#YWITLLODT","GLOBAL",1)~ YWITLLODT1
SAY @110
++ @111 DO ~SetGlobal("X#YWITLLODT","GLOBAL",2)~ + YWITLLODT2
++ @112 DO ~SetGlobal("X#YWITLLODT","GLOBAL",2)~ + YWITLLODT3
++ @113 DO ~SetGlobal("X#YWITLLODT","GLOBAL",2)~ + YWITLLODT4
END

IF ~~ YWITLLODT2
SAY @114
IF ~~ EXIT
END

IF ~~ YWITLLODT3
SAY @115
IF ~~ EXIT
END

/* go to block five */
IF ~~ YWITLLODT4
SAY @116
++ @117 + YWITLLODT4a
++ @118 + YWITLLODT5
END

IF ~~ YWITLLODT4a
SAY @119
IF ~~ EXIT
END

IF ~~ YWITLLODT5
SAY @120
IF ~~ EXIT
END
END
