BEGIN ~X#GAEL~
BEGIN ~X#MAZURI~
BEGIN ~X#SKODD~
BEGIN ~X#DIALA~
BEGIN ~X#MINUW~
BEGIN ~X#SIENE~
BEGIN ~X#WDOE~

CHAIN IF WEIGHT #-1 ~%BGT_VAR% GlobalGT("X#XQMerchantsAppeared","GLOBAL",0)~ THEN ~X#MAZURI~ X#XQMazuriGoAway
@0 
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% GlobalGT("X#XQMerchantsAppeared","GLOBAL",0)~ THEN ~X#GAEL~ X#XQGaelGoAway
@1 
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XQSkoddInitialDialogue","GLOBAL",0)~ THEN ~X#SKODD~ X#XQSkoddGreetings 
@2 
DO ~SetGlobal("X#XQSkoddInitialDialogue","GLOBAL",1)~
== ~X#MAZURI~ @3
== ~X#GAEL~ @4
END
+ ~Dead("Mutamin")~ + @5 EXTERN ~X#GAEL~ X#XQGael1
+ ~Dead("Mutamin")~ + @6 EXTERN ~X#GAEL~ X#XQGael2
++ @7 EXTERN ~X#GAEL~ X#XQGael3
++ @8 EXTERN ~X#GAEL~ X#XQGael4
++ @9 EXTERN ~X#GAEL~ X#XQGael5

CHAIN ~X#GAEL~ X#XQGael5
@10
== ~X#MAZURI~ @11
== ~X#SKODD~ @12
END
IF ~~ EXTERN ~X#GAEL~ X#XQGael4

CHAIN ~X#GAEL~ X#XQGael1
@13
END
IF ~~ EXTERN ~X#GAEL~ X#XQGaelReward

CHAIN ~X#GAEL~ X#XQGael2
@14
END
IF ~~ EXTERN ~X#GAEL~ X#XQGaelReward

CHAIN ~X#GAEL~ X#XQGael3
@15 
DO ~SetGlobal("X#XQAttackedSlaversBefore","GLOBAL",1)
CreateCreature("X#XQMER1",[80.3060],0)
CreateCreature("X#XQMER2",[110.3065],0)
CreateCreature("X#XQMER3",[140.3060],0)
CreateCreature("X#XQMER4",[170.3065],0)
CreateCreature("X#XQMER5",[200.3060],0)
CreateCreature("X#XQMER6",[230.3065],0)
ActionOverride("X#Skodd",Enemy())
ActionOverride("X#Mazuri",Enemy())
ActionOverride("X#Gael",Enemy())
ActionOverride("X#XQMER1",Enemy())
ActionOverride("X#XQMER2",Enemy())
ActionOverride("X#XQMER3",Enemy())
ActionOverride("X#XQMER4",Enemy())
ActionOverride("X#XQMER5",Enemy())
ActionOverride("X#XQMER6",Enemy())~
EXIT

CHAIN ~X#GAEL~ X#XQGael4
@16
END
IF ~~ EXTERN ~X#GAEL~ X#XQOption2Chosen

CHAIN ~X#GAEL~ X#XQGaelReward
@17
END
++ @18 DO ~ReputationInc(1)~ EXTERN ~X#GAEL~ X#XQOption2Chosen
++ @19 EXTERN ~X#GAEL~ X#XQOption2Chosen
++ @20 EXTERN ~X#GAEL~ X#XQOption2Chosen

CHAIN ~X#GAEL~ X#XQOption2Chosen
@21 
DO ~SetGlobal("X#XQWhiteDoeAppeared","GLOBAL",1)
ActionOverride("X#Skodd",EscapeArea())
ActionOverride("X#Mazuri",EscapeArea())
ActionOverride("X#Gael",EscapeArea())~ EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% OR(2) Global("X#XQAttackedSlaversBefore","GLOBAL",2) Global("X#XQAttackedSlaversAfter","GLOBAL",2) Global("X#XQWomenPlea","GLOBAL",0)~ THEN ~X#SIENE~ X#XQSieneMercy
@22 
DO ~SetGlobal("X#XQWomenPlea","GLOBAL",1)~
== ~X#DIALA~ @23
== ~X#MINUW~ @24
== ~X#DIALA~ @25
== ~X#MINUW~ @26
== ~X#DIALA~ @27
== ~X#SIENE~ @28
== ~%XAN_BANTER%~ @29
== ~%XAN_BANTER%~ @30
== ~%XAN_BANTER%~ IF ~Gender(Player1,FEMALE) Race(Player1,ELF)~ THEN @31 
== ~%XAN_BANTER%~ IF ~OR(2) InParty("kivan") InParty("Coran")~ THEN @32 
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @33
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @34
== ~%XAN_BANTER%~ @35
END
+ ~Race(Player1,ELF)~ + @36 EXTERN ~%XAN_JOINED%~ X#XQXanQuest1
+ ~!Race(Player1,ELF)~ + @37 EXTERN ~%XAN_JOINED%~ X#XQXanQuest1
+ ~!Race(Player1,ELF)~ + @38 EXTERN ~%XAN_JOINED%~ X#XQXanQuest1
+ ~Gender(Player1,MALE)~ + @39 EXTERN ~%XAN_JOINED%~ X#XQXanQuest2
++ @40 EXTERN ~%XAN_JOINED%~ X#XQXanQuest3
++ @41 EXTERN ~%XAN_JOINED%~ X#XQXanQuest1
++ @42 EXTERN ~%XAN_JOINED%~ X#XQXanQuest4
++ @43 EXTERN ~%XAN_JOINED%~ X#XQXanQuest1

CHAIN ~%XAN_JOINED%~ X#XQXanQuest1
@44
== ~X#SIENE~ @45
== ~X#DIALA~ @46
== ~X#MINUW~ @47
== ~%XAN_BANTER%~ @48
END
++ @49 EXTERN ~%XAN_JOINED%~ X#XQXanQuest6
++ @50 EXTERN ~%XAN_JOINED%~ X#XQXanQuest7
++ @51 EXTERN ~%XAN_JOINED%~ X#XQXanQuest8
++ @52 EXTERN ~%XAN_JOINED%~ X#XQXanQuest8
+ ~Gender(Player1,FEMALE) Race(Player1,ELF)~ + @53 EXTERN ~%XAN_JOINED%~ X#XQXanQuest8

CHAIN ~%XAN_JOINED%~ X#XQXanQuest2
@54
END
++ @55 EXTERN ~%XAN_JOINED%~ X#XQXanQuest1
++ @56 EXTERN ~%XAN_JOINED%~ X#XQXanQuest3
++ @57 EXTERN ~%XAN_JOINED%~ X#XQXanQuest3
++ @58 EXTERN ~%XAN_JOINED%~ X#XQXanQuest1

CHAIN ~%XAN_JOINED%~ X#XQXanQuest3
@59
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @60
== ~%CORAN_BANTER%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @61
== ~%KHALID_BANTER%~ IF ~InParty("khalid")InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @62
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @63
END
++ @64 EXTERN ~%XAN_JOINED%~ X#XQXanQuest1
++ @65 EXTERN ~%XAN_JOINED%~ X#XQXanQuest5
++ @66 EXTERN ~%XAN_JOINED%~ X#XQXanQuest5

CHAIN ~%XAN_JOINED%~ X#XQXanQuest4
@67
END
+ ~Gender(Player1,FEMALE)~ + @68 EXTERN ~%XAN_JOINED%~ X#XQXanQuest1
+ ~Gender(Player1,FEMALE)~ + @69 EXTERN ~%XAN_JOINED%~ X#XQXanQuest1
++ @70 EXTERN ~%XAN_JOINED%~ X#XQXanQuest1
++ @71 EXTERN ~%XAN_JOINED%~ X#XQXanQuest1
++ @72 EXTERN ~%XAN_JOINED%~ X#XQXanQuest3

CHAIN ~%XAN_JOINED%~ X#XQXanQuest5
@73
DO ~ActionOverride("X#Diala",Enemy())
ActionOverride("X#Minuw",Enemy())
ActionOverride("X#Siene",Enemy())
ActionOverride("xan",LeaveParty())
ActionOverride("xan",Enemy())
ActionOverride("kivan",LeaveParty())
ActionOverride("kivan",Enemy())
ActionOverride("coran",LeaveParty())
ActionOverride("coran",Enemy())
ActionOverride("xan",SetLeavePartyDialogFile())
SetGlobal("X#XQXanFightsPC","GLOBAL",1)~
EXIT

CHAIN ~%XAN_JOINED%~ X#XQXanQuest6
@74
DO ~SetGlobal("X#XQFriendlyArmsMoved","GLOBAL",1)
ActionOverride("X#Siene",EscapeArea())
ActionOverride("X#Minuw",EscapeArea())
ActionOverride("X#Diala",EscapeArea())
ActionOverride(Player1,LeaveAreaLUA("%FriendlyArmInn_L2%","",[653.730],12))
ActionOverride(Player1,SetMasterArea("%FriendlyArmInn%"))
ActionOverride(Player2,LeaveAreaLUA("%FriendlyArmInn_L2%","",[677.760],12))
ActionOverride(Player3,LeaveAreaLUA("%FriendlyArmInn_L2%","",[713.784],12))
ActionOverride(Player4,LeaveAreaLUA("%FriendlyArmInn_L2%","",[745.758],12))
ActionOverride(Player5,LeaveAreaLUA("%FriendlyArmInn_L2%","",[721.733],12))
ActionOverride(Player6,LeaveAreaLUA("%FriendlyArmInn_L2%","",[686.710],12))
AddexperienceParty(1000)~
EXIT 

CHAIN ~%XAN_JOINED%~ X#XQXanQuest7
@75
= @76
= @77
DO ~SetGlobal("X#XQFriendlyArmsAlone","GLOBAL",1)
EscapeAreaMove("%FriendlyArmInn_L2%",790,660,13)
ActionOverride("X#Diala",EscapeArea())
ActionOverride("X#Minuw",EscapeArea())
ActionOverride("X#Siene",EscapeArea())
AddexperienceParty(1000)~
EXIT 

CHAIN ~%XAN_JOINED%~ X#XQXanQuest8
@78
== ~X#SIENE~ @79
== ~X#DIALA~ @80
== ~X#MINUW~ @81
DO ~ActionOverride("X#Diala",EscapeArea())
ActionOverride("X#Minuw",EscapeArea())
ActionOverride("X#Siene",EscapeArea())
AddexperienceParty(1000)~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XQXanRewarded","GLOBAL",1)~ THEN ~%XAN_JOINED%~ X#XQGoodFinale
@82
= @83
DO ~SetGlobal("X#XQXanRewarded","GLOBAL",2)
ReallyForceSpell("xan",CLERIC_DRAW_UPON_HOLY_MIGHT)
AddXPObject("xan",10000)~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% XPGT("xan",10000) Global("X#XQXanPunished","GLOBAL",1)~ THEN ~%XAN_JOINED%~ X#XQBadFinale1
@84
= @85
DO ~SetGlobal("X#XQXanPunished","GLOBAL",2)
ReallyForceSpell("xan",CLERIC_CALL_LIGHTNING)
AddXPObject("xan",-10000)~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% XPLT("xan",10001) Global("X#XQXanPunished","GLOBAL",1)~ THEN ~%XAN_JOINED%~ X#XQBadFinale2
@84
= @85
DO ~SetGlobal("X#XQXanPunished","GLOBAL",2)
ReallyForceSpell("xan",CLERIC_CALL_LIGHTNING)~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XQXanPunished","GLOBAL",3)~ THEN ~%XAN_JOINED%~ X#XQXanIsPunished
@86
DO ~SetGlobal("X#XQXanPunished","GLOBAL",4)~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XQXanFightsPC","GLOBAL",2)~ THEN ~%XAN_POST%~ X#XQXanIsDefeated
@87
DO ~SetGlobal("X#XQXanFightsPC","GLOBAL",3)~
END
+ ~CheckStatGT(Player1,17,CHR) OR(2) Gender(Player1,MALE) !Race(Player1,ELF)~ + @88 EXTERN ~%XAN_POST%~ X#XQXanRedeem1
+ ~Gender(Player1,FEMALE) Race(Player1,ELF)~ + @88 EXTERN ~%XAN_POST%~ X#XQXanRedeem1
+ ~!CheckStatGT(Player1,17,CHR) OR(2) Gender(Player1,MALE) !Race(Player1,ELF)~ + @88 EXTERN ~%XAN_POST%~ X#XQXanRedeem2
+ ~CheckStatGT(Player1,17,CHR) OR(2) Gender(Player1,MALE) !Race(Player1,ELF)~ + @89 EXTERN ~%XAN_POST%~ X#XQXanRedeem1
+ ~Gender(Player1,FEMALE) Race(Player1,ELF)~ + @89 EXTERN ~%XAN_POST%~ X#XQXanRedeem1
+ ~!CheckStatGT(Player1,17,CHR) OR(2) Gender(Player1,MALE) !Race(Player1,ELF)~ + @89 EXTERN ~%XAN_POST%~ X#XQXanRedeem3
++ @90 EXTERN ~%XAN_POST%~ X#XQXanRedeem4

CHAIN ~%XAN_POST%~ X#XQXanRedeem1
@91 
DO ~RealSetGlobalTimer("X#XanBadOutcomeTimer","GLOBAL",90) ActionOverride("xan",JoinParty())~
EXIT

CHAIN ~%XAN_POST%~ X#XQXanRedeem2
@92 
DO ~ActionOverride("xan",Kill(Myself))~
EXIT

CHAIN ~%XAN_POST%~ X#XQXanRedeem3
@93 
DO ~ActionOverride("xan",Kill(Myself))~
EXIT

CHAIN ~%XAN_POST%~ X#XQXanRedeem4
@94
DO ~ActionOverride("xan",Kill(Myself))~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XQWhiteDoeAppeared","GLOBAL",2)~ THEN ~%XAN_JOINED%~ X#XQWDoeGreetings
@95 
== ~%KIVAN_BANTER%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @96
== ~%XAN_BANTER%~ @97
DO ~SetGlobal("X#XQWhiteDoeAppeared","GLOBAL",3)
ActionOverride(Player1,LeaveAreaLUA("%SpiderWood%","",[240.3150],8))
ActionOverride(Player2,LeaveAreaLUA("%SpiderWood%","",[265.3150],8))
ActionOverride(Player3,LeaveAreaLUA("%SpiderWood%","",[240.3200],8))
ActionOverride(Player4,LeaveAreaLUA("%SpiderWood%","",[265.3200],8))
ActionOverride(Player5,LeaveAreaLUA("%SpiderWood%","",[240.3250],8))
ActionOverride(Player6,LeaveAreaLUA("%SpiderWood%","",[265.3250],8))~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XQWhiteDoeAppeared","GLOBAL",4)~ THEN ~X#SKODD~ X#XQXanHiSlavers
@98 
DO ~SetGlobal("X#XQWhiteDoeAppeared","GLOBAL",5)~
== ~%XAN_BANTER%~ @99
END
++ @100 EXTERN ~X#SIENE~ X#XQSieneHelp
++ @101 EXTERN ~X#SIENE~ X#XQSieneHelp
++ @102 EXTERN ~X#SIENE~ X#XQSieneHelp
++ @103 EXTERN ~X#SIENE~ X#XQSieneHelp

CHAIN ~X#SIENE~ X#XQSieneHelp
@104 
== ~X#MINUW~ @105
== ~X#DIALA~ @106
== ~%XAN_BANTER%~ IF ~!Race(Player1,ELF)~ THEN @107
== ~%XAN_BANTER%~ IF ~Race(Player1,ELF)~ THEN @108
== ~X#SKODD~ @109
END
++ @110 EXTERN ~X#SKODD~ X#XQXanSkodd1
++ @111 EXTERN ~X#SKODD~ X#XQXanSkodd2
++ @112 EXTERN ~%XAN_JOINED%~ X#XQXanLaw
++ @113 EXTERN ~X#SKODD~ X#XQXanSkodd1
++ @114 EXTERN ~%XAN_JOINED%~ X#XQXanObligations
++ @115 EXTERN ~%XAN_JOINED%~ X#XQXanObligations
++ @116 EXTERN ~X#SKODD~ X#XQXanSkodd2

CHAIN ~%XAN_JOINED%~ X#XQXanLaw
@117
= @118
END
IF ~~ EXTERN ~%XAN_JOINED%~ X#XQXanObligations

CHAIN ~%XAN_JOINED%~ X#XQXanObligations
@119
= @120
== ~X#SKODD~ @121
DO ~RealSetGlobalTimer("X#XanBadOutcomeTimer","GLOBAL",90)
ActionOverride("X#Mazuri",EscapeArea())
ActionOverride("X#Gael",EscapeArea())
ActionOverride("X#Diala",EscapeArea())
ActionOverride("X#Minuw",EscapeArea())
ActionOverride("X#Siene",EscapeArea())
ActionOverride("X#XQMer1",EscapeArea())
ActionOverride("X#XQMer2",EscapeArea())
ActionOverride("X#XQMer3",EscapeArea())
ActionOverride("X#XQMer4",EscapeArea())
ActionOverride("X#XQMer5",EscapeArea())
ActionOverride("X#XQMer6",EscapeArea())
ActionOverride("X#Skodd",EscapeArea())~
EXIT

CHAIN ~X#SKODD~ X#XQXanSkodd1
@122
== ~%XAN_BANTER%~ @123
DO ~ActionOverride("X#Skodd",Enemy())
ActionOverride("X#Mazuri",Enemy())
ActionOverride("X#Gael",Enemy())
ActionOverride("X#XQMer1",Enemy())
ActionOverride("X#XQMer2",Enemy())
ActionOverride("X#XQMer3",Enemy())
ActionOverride("X#XQMer4",Enemy())
ActionOverride("X#XQMer5",Enemy())
ActionOverride("X#XQMer6",Enemy())
SetGlobal("X#XQAttackedSlaversAfter","GLOBAL",1)~
EXIT

CHAIN ~X#SKODD~ X#XQXanSkodd2
@124
END
IF ~%BGT_VAR% OR(2) !InParty("coran") !InParty("kivan")~ EXTERN ~X#SKODD~ X#XQXanSkodd3
IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ EXTERN ~X#SKODD~ X#XQXanSkodd4

CHAIN ~X#SKODD~ X#XQXanSkodd3
@125
== ~%XAN_BANTER%~ @126
== ~X#SKODD~ @127
= @128
END
++ @129 EXTERN ~X#SKODD~ X#XQXanSkodd1
++ @130 EXTERN ~%XAN_JOINED%~ X#XQXanLaw
++ @113 EXTERN ~X#SKODD~ X#XQXanSkodd1
++ @131 EXTERN ~%XAN_JOINED%~ X#XQXanObligations

CHAIN ~X#SKODD~ X#XQXanSkodd4
@132
== ~X#SKODD~ @133
== ~%XAN_BANTER%~ @134
== ~X#SKODD~ @135 
== ~%KIVAN_BANTER%~ @136
== ~%CORAN_BANTER%~ @137
== ~%XAN_BANTER%~ @138
== ~%CORAN_BANTER%~ @139
== ~%KIVAN_BANTER%~ @140
== ~%XAN_BANTER%~ @141
END
++ @142 EXTERN ~%XAN_JOINED%~ X#XQXanBedSlave
++ @143 EXTERN ~%XAN_JOINED%~ X#XQXanBedSlave
++ @144  EXTERN ~%XAN_JOINED%~ X#XQXanBedSlave
++ @145 EXTERN ~%XAN_JOINED%~ X#XQXanBedSlave
++ @146  EXTERN ~%XAN_JOINED%~ X#XQXanBedSlave

CHAIN ~%XAN_JOINED%~ X#XQXanBedSlave
@147
END
IF ~!Global("P#CoranRomanceInactive","GLOBAL",1) Global("P#CoranMatch","GLOBAL",1)~ EXTERN ~%CORAN_JOINED%~ X#XQCoranSlave
IF ~OR(2) Global("P#CoranRomanceInactive","GLOBAL",1) !Global("P#CoranMatch","GLOBAL",1)~ EXTERN ~X#SKODD~ X#XQSkoddExchange

CHAIN ~%CORAN_JOINED%~ X#XQCoranSlave
@148
END
++ @149 EXTERN ~%CORAN_JOINED%~ X#XQCoran1
++ @150 EXTERN ~X#SKODD~ X#XQSkoddExchange
++ @151 EXTERN ~X#SKODD~ X#XQSkoddExchange

CHAIN ~%CORAN_JOINED%~ X#XQCoran1
@152
END
IF ~~ EXTERN ~X#SKODD~ X#XQSkoddExchange

CHAIN ~X#SKODD~ X#XQSkoddExchange
@153
DO ~SetGlobal("X#XQSlavesExchanged","GLOBAL",1)
StartCutSceneMode()
StartCutScene("X#XQCUT")~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XQSlavesExchanged","GLOBAL",1)~ THEN ~%KIVAN_POST%~ X#XQKivanCut
@154
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XQSlavesExchanged","GLOBAL",1)~ THEN ~%CORAN_POST%~ X#XQCoranCut
@155
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XQSlavesExchanged","GLOBAL",1)~ THEN ~%XAN_POST%~ X#XQXanCharge
@156
END
++ @157 EXTERN ~X#SKODD~ X#XQXanSkodd5
++ @158 EXTERN ~X#SKODD~ X#XQXanSkodd6
++ @159 EXTERN ~X#SKODD~ X#XQXanSkodd6
++ @160 EXTERN ~X#SKODD~ X#XQXanSkodd5

CHAIN ~X#SKODD~ X#XQXanSkodd5
@161
DO ~ActionOverride("coran",JoinParty()) ActionOverride("kivan",JoinParty()) ActionOverride("xan",JoinParty()) SetGlobal("X#XQSlavesExchanged","GLOBAL",2) ActionOverride("X#Skodd",Enemy()) ActionOverride("X#Mazuri",Enemy()) ActionOverride("X#Gael",Enemy()) ActionOverride("X#XQMer1",Enemy()) ActionOverride("X#XQMer2",Enemy()) ActionOverride("X#XQMer3",Enemy()) ActionOverride("X#XQMer4",Enemy()) ActionOverride("X#XQMer5",Enemy()) ActionOverride("X#XQMer6",Enemy()) SetGlobal("X#XQAttackedSlaversAfter","GLOBAL",1)~
EXIT

CHAIN ~X#SKODD~ X#XQXanSkodd6
@161
DO ~ActionOverride("coran",Enemy()) ActionOverride("kivan",Enemy()) ActionOverride("xan",Enemy()) SetGlobal("X#XQSlavesExchanged","GLOBAL",3) SetGlobal("X#XQXanFightsPC","GLOBAL",1) ActionOverride("X#Skodd",Enemy()) ActionOverride("X#Mazuri",Enemy()) ActionOverride("X#Gael",Enemy()) ActionOverride("X#XQMer1",Enemy()) ActionOverride("X#XQMer2",Enemy()) ActionOverride("X#XQMer3",Enemy()) ActionOverride("X#XQMer4",Enemy()) ActionOverride("X#XQMer5",Enemy()) ActionOverride("X#XQMer6",Enemy()) ActionOverride("X#Diala",EscapeArea()) ActionOverride("X#Minuw",EscapeArea()) ActionOverride("X#Siene",EscapeArea())~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XQFriendlyArmsAlone","GLOBAL",1)~ THEN ~%XAN_POST%~ X#XQXanFinally
@162
= @163 
= @164
DO ~SetGlobal("X#XQFriendlyArmsAlone","GLOBAL",2) SetGlobal("X#XQXanMissionAccomplished","GLOBAL",2) ActionOverride("xan",JoinParty()) ReputationInc(1) RealSetGlobalTimer("X#XanGoodOutcomeTimer","GLOBAL",90)~
EXIT

CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#XQFriendlyArmsMoved","GLOBAL",2)~ THEN ~X#SIENE~ X#XQSieneGratitude
@165
== ~X#DIALA~ @80
== ~X#MINUW~ @81
DO ~SetGlobal("X#XQFriendlyArmsMoved","GLOBAL",3) ReputationInc(1) RealSetGlobalTimer("X#XanGoodOutcomeTimer","GLOBAL",90) ActionOverride("X#Diala",EscapeArea()) ActionOverride("X#Minuw",EscapeArea()) ActionOverride("X#Siene",EscapeArea())~
EXIT
