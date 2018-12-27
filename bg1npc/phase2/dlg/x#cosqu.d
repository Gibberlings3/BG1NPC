BEGIN X#NATAN
APPEND X#NATAN

IF ~%BGT_VAR% OR(2) Global("X#CoranSuccubus","GLOBAL",13) Global("X#CoranSuccubus","GLOBAL",17) PartyHasItem("X#SUCRIN")~ NatanFinal2
SAY @0
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",18) TakePartyItem("X#SUCRIN")~ GOTO NAFI2.2
END

IF ~~ NAFI2.2
SAY @1
++ @2 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",19)~ + NAFI1.1
++ @3 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",19)~ + NAFI1.2
++ @4 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",19)~ + NAFI1.3
END

IF ~Global("X#CoranSuccubus","GLOBAL",16)~ NatanIsUnhappy
SAY @5
= @1
++ @2 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",19)~ + NAFI1.1
++ @3 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",19)~ + NAFI1.2
++ @4 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",19)~ + NAFI1.3
END

IF ~~ NAFI1.1
SAY @6
++ @7 + NAFI1.4
++ @8 + NAFI1.3
END

IF ~~ NAFI1.2
SAY @9
= @10
= @11
++ @12 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",19)~ + NAFI1.1
++ @4 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",19)~ + NAFI1.3
END

IF ~~ NAFI1.3
SAY @13
IF ~~ THEN DO ~AddExperienceParty(1000) EscapeArea()~ EXIT
END

IF ~~ NAFI1.4
SAY @14
IF ~~ THEN DO ~GiveItem("%tutu_var%POTN36",Player1) GiveItem("%tutu_var%POTN37",Player1) GiveItem("%tutu_var%POTN42",Player1) GiveItem("%tutu_var%POTN07",Player1) AddExperienceParty(100) EscapeArea()~ EXIT
END

IF ~%BGT_VAR% Global("X#CoranSuccubus","GLOBAL",11)~ NatanAdoreAmelia
SAY @15
IF ~~ THEN EXIT
END

IF ~%BGT_VAR% Global("X#CoranSuccubus","GLOBAL",7)~ HelpedAmelia
	SAY @16
	IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",11) TakePartyItem("X#COFRRO") GiveItemCreate("X#CODYE1",Player1,1,0,0) DestroyItem("X#COFRRO")~ GOTO X#NAAmelia1
END

IF ~~ X#NAAmelia1
SAY @17
= @18
IF ~!InParty("coran")~ THEN DO ~EscapeAreaMove("%FirewineBridge%",4090,2215,7)~ EXIT
IF ~InParty("coran") Global("P#CoranMatch","GLOBAL",1) !Global("X#CoranBlessed","GLOBAL",2)~ THEN DO ~ActionOverride("natan",EscapeAreaMove("%FirewineBridge%",4145,2190,7))~ EXTERN ~%CORAN_JOINED%~ CoranResistShort
IF ~InParty("coran") Global("P#CoranMatch","GLOBAL",1) Global("X#CoranBlessed","GLOBAL",2)~ THEN DO ~ActionOverride("natan",EscapeAreaMove("%FirewineBridge%",4145,2190,7))~ EXTERN ~%CORAN_JOINED%~ CoranResistLong
IF ~InParty("coran") !Global("P#CoranMatch","GLOBAL",1) GlobalLT("X#CoranBlessed","GLOBAL",2)~ THEN DO ~ActionOverride("natan",EscapeAreaMove("%FirewineBridge%",4145,2190,7))~ EXTERN ~%CORAN_JOINED%~ CoranNotResist
IF ~InParty("coran") !Global("P#CoranMatch","GLOBAL",1) Global("X#CoranBlessed","GLOBAL",2)~ THEN DO ~ActionOverride("natan",EscapeAreaMove("%FirewineBridge%",4145,2190,7))~ EXTERN ~%CORAN_JOINED%~ CoranResistShort
END

IF ~%BGT_VAR% GlobalGT("X#CoranSuccubus","GLOBAL",2) GlobalLT("X#CoranSuccubus","GLOBAL",7)~ NatanDidNotHelpAmelia
SAY @19
+ ~PartyHasItem("X#COWIRO")~ + @20 + X#NA1.1
++ @21 + X#NA1.2
+ ~PartyHasItem("X#COWIRO")~ + @22 + X#NA1.3
+ ~PartyHasItem("X#COWIRO")~ + @23 + X#NA1.4
END

IF ~~ X#NA1.1
SAY @24
++ @25 + X#NA1.6
++ @26 + X#NA1.4
++ @27 + X#NA1.5
END

IF ~~ X#NA1.2
SAY @28
++ @29 + X#NA1.4
+ ~GlobalGT("X#CoranSuccubus","GLOBAL",3)~ + @30 + X#NA1.6
++ @27 + X#NA1.5
END

IF ~~ X#NA1.3
SAY @31
++ @32 + X#NA1.6
++ @33 + X#NA1.4
++ @34 + X#NA1.5
END

IF ~~ X#NA1.4
SAY @35
IF ~~ THEN GOTO X#NA1.4A
END

IF ~~ X#NA1.6
SAY @36
= @35
IF ~~ THEN GOTO X#NA1.4A
END

IF ~~ X#NA1.4A
SAY @37
++ @38 + X#NA1.4B
++ @39 + X#NA1.4C
++ @34 + X#NA1.5
END

IF ~~ X#NA1.4B
SAY @40
= @41
= @42
= @43
++ @44 DO ~ActionOverride("natan",DestroyItem("X#CODYE1")) GiveItemCreate("X#CODYE2","natan",1,0,0)~ + X#NA1.4D
++ @45 DO ~ActionOverride("natan",DestroyItem("X#CODYE1")) GiveItemCreate("X#CODYE2","natan",1,0,0)~ + X#NA1.4E
++ @46 DO ~ActionOverride("natan",DestroyItem("X#CODYE1")) GiveItemCreate("X#CODYE2","natan",1,0,0)~ + X#NA1.5
++ @47 DO ~ActionOverride("natan",DestroyItem("X#CODYE1")) GiveItemCreate("X#CODYE2","natan",1,0,0)~ + X#NA1.4F
+ ~Global("X#CoranCharmed","GLOBAL",1) !InParty("coran")~ + @48 DO ~ActionOverride("natan",DestroyItem("X#CODYE1")) GiveItemCreate("X#CODYE2","natan",1,0,0)~ + X#NA1.4D
++ @49 DO ~ActionOverride("natan",DestroyItem("X#CODYE1")) GiveItemCreate("X#CODYE2","natan",1,0,0)~ + X#NA1.4D
END

IF ~~ X#NA1.5
SAY @50
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",8) Enemy()~ EXIT
END

/* Did not hear the whole story */
IF ~~ X#NA1.4C
SAY @51
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",9)~ UNSOLVED_JOURNAL @52 EXIT
END

IF ~~ X#NA1.4D
SAY @51
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",10)~ UNSOLVED_JOURNAL @53 EXIT
END

IF ~~ X#NA1.4E
SAY @54
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",10)~ UNSOLVED_JOURNAL @53 EXIT
END

IF ~~ X#NA1.4F
SAY @55
++ @56 + X#NA1.5
++ @57 + X#NA1.4D
++ @58 + X#NA1.4D
END

END

BEGIN X#RASHEL

APPEND X#RASHEL

IF ~True()~ RashelGreeting
SAY @59
IF ~!Global("X#CoranSuccubus","GLOBAL",5) !Global("X#CoranSuccubus","GLOBAL",6)~ THEN GOTO RashelGreeting1
IF ~InParty("coran") Global("X#CoranSuccubus","GLOBAL",5) Global("X#CoranBlessed","GLOBAL",0)~ THEN GOTO RashelRoses1
IF ~InParty("coran") Global("X#CoranSuccubus","GLOBAL",6)~ THEN GOTO RashelRoses2
IF ~InParty("coran") Global("X#CoranSuccubus","GLOBAL",5) Global("X#CoranBlessed","GLOBAL",1)~ THEN GOTO RashelRoses2
IF ~InParty("coran") Global("X#CoranSuccubus","GLOBAL",5) Global("X#CoranBlessed","GLOBAL",2)~ THEN GOTO RashelGreeting1
END

IF ~~ RashelGreeting1
SAY @60 
++ @61 + RashelKeldath
++ @62 + RashelLands
+ ~Gender(Player1,MALE)~ + @63 + RashelDinner
++ @64 + RashelTemple
+ ~NumTimesTalkedToGT(0)~ + @67 EXIT
END

IF ~~ RashelKeldath
SAY @65
= @66
++ @62 + RashelLands
+ ~Gender(Player1,MALE)~ + @63 + RashelDinner
++ @64 + RashelTemple
++ @67 + RashelBuy
END

IF ~~ RashelLands
SAY @68
= @69
= @70
= @71
= @66
++ @61 + RashelKeldath
+ ~Gender(Player1,MALE)~ + @72 + RashelDinner
++ @64 + RashelTemple
++ @67 + RashelBuy
END

IF ~~ RashelTemple
SAY @73
= @74
= @75
= @66
++ @76 + RashelKeldath
+ ~Gender(Player1,MALE)~ + @63 + RashelDinner
++ @67 + RashelBuy
END

IF ~~ RashelBuy
SAY @77
IF ~~ THEN EXIT
END

IF ~~ RARO1.1
SAY @78
++ @79 + RARO1.3
+ ~PartyGoldGT(200)~ + @80 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",7)~ + RARO1.4
++ @81 + RARO1.2
END

IF ~~ RARO1.3
SAY @82
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",6)~ EXIT
END

IF ~~ RARO1.2
SAY @83
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",7) TakePartyItem("X#COWIRO") DestroyItem("X#COWIRO")~ EXTERN ~%CORAN_JOINED%~ RosesRestored
END

IF ~~ RARO1.4
SAY @84
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",7) GiveGoldForce(-200) TakePartyItem("X#COWIRO") DestroyItem("X#COWIRO")~ EXTERN ~%CORAN_JOINED%~ RosesRestored
END

IF ~~ RARO1.5
SAY @85
IF ~~ THEN EXIT
END

IF ~~ RARO1.6
SAY @86
++ @87 + RARO1.7
++ @88  + RARO1.5
++ @89 + RARO1.7
END

IF ~~ RARO1.7
SAY @90
IF ~~ THEN DO ~GiveGoldForce(-100) ReallyForceSpellRES("SPPR101","coran") SetGlobal("X#CoranBlessed","GLOBAL",2)~ EXIT
END

IF ~~ RashelRoses2
SAY @91
+ ~Global("X#CoranSuccubus","GLOBAL",6)~ + @92 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",7)~ + RARO1.4
+ ~Global("X#CoranSuccubus","GLOBAL",7) Global("X#CoranBlessed","GLOBAL",0)~ + @93 + RARO1.7
+ ~Gender(Player1,MALE)~ + @63 + RashelDinner
++ @94 + RARO1.8
++ @95 + RARO1.9
END

IF ~~ RashelDinner
SAY @96
+ ~Gender(Player1,MALE)~ + @97 + RARO1.5
++ @94 + RARO1.8
++ @98 + RashelBuy
END

IF ~~ RARO1.8
SAY @99
IF ~~ THEN EXIT
END

IF ~~ RARO1.9
SAY @100
IF ~~ THEN EXIT
END

END

CHAIN ~X#RASHEL~ RashelRoses1
@101
== ~%CORAN_JOINED%~ @102
END
++ @103 + RARO1.1
++ @104 + RARO1.2

CHAIN ~%CORAN_JOINED%~ RosesRestored
@105
== X#RASHEL @106
DO ~SetGlobal("X#CoranBlessed","GLOBAL",1) GiveItemCreate("X#COFRRO","coran",1,0,0)~
END
++ @107 EXTERN ~X#RASHEL~ RARO1.5
++ @108 EXTERN ~X#RASHEL~ RARO1.6


BEGIN ~X#AMELIA~

APPEND ~X#AMELIA~

IF ~%BGT_VAR% Global("X#CoranSuccubus","GLOBAL",11)~ AMRE2
SAY @109
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @110 + AMRE2.1B
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @110 + AMRE2.1NB
++ @111 + AMRE2.2A
++ @112 + AMRE2.2B
+ ~!InParty("coran") Global("X#CoranCharmed","GLOBAL",1)~ + @113 + AMRE2.3
+ ~!InParty("coran") Global("X#CoranCharmed","GLOBAL",1) Gender(Player1,MALE)~ + @114 + AMRE2.4M
+ ~!InParty("coran") Global("X#CoranCharmed","GLOBAL",1) Gender(Player1,FEMALE)~ + @114 + AMRE2.4F
END

IF ~~ AMRE2.1NB
SAY @115
IF ~~ THEN GOTO AMRE2.1A
END

IF ~~ AMRE2.1B
SAY @116
IF ~~ THEN GOTO AMRE2.1A
END

IF ~~ AMRE2.1A
SAY @117
++ @118 + AMRE2.5
+ ~!Global("P#KnowBhaal","GLOBAL",1)~ + @119 + AMRE2.6
+ ~!InParty("coran") Global("X#CoranCharmed","GLOBAL",1) Gender(Player1,MALE)~ + @120 + AMRE2.4M
+ ~!InParty("coran") Global("X#CoranCharmed","GLOBAL",1) Gender(Player1,FEMALE)~ + @120 + AMRE2.4F
++ @121 + AMRE2.3
END

IF ~~ AMRE2.2A
SAY @122
IF ~~ THEN DO ~ApplySpellRES("x#amchg",Myself) TakePartyItem("X#CODYE1") TakePartyItem("X#CODYE2") SetGlobal("X#CoranSuccubus","GLOBAL",15) GiveItemCreate("X#COAMUL",Player1,1,0,0) AddExperienceParty(6400) EraseJournalEntry(@52) EraseJournalEntry(@53) EraseJournalEntry(@174) EraseJournalEntry(@178) EraseJournalEntry(@184) EraseJournalEntry(@197) EraseJournalEntry(@202) EraseJournalEntry(@208) AddJournalEntry(@253,QUEST_DONE) Wait(2) ForceSpell("coran",DRYAD_TELEPORT) ForceSpell("natan",DRYAD_TELEPORT) ForceSpell("x#amelia",DRYAD_TELEPORT)~ EXIT
END

IF ~~ AMRE2.2B
SAY @123
IF ~~ THEN DO ~ApplySpellRES("x#amchg",Myself) TakePartyItem("X#CODYE1") TakePartyItem("X#CODYE2") SetGlobal("X#CoranSuccubus","GLOBAL",16) GiveItemCreate("X#COAMUL",Player1,1,0,0) AddExperienceParty(6400) EraseJournalEntry(@52) EraseJournalEntry(@53) EraseJournalEntry(@174) EraseJournalEntry(@178) EraseJournalEntry(@184) EraseJournalEntry(@197) EraseJournalEntry(@202) EraseJournalEntry(@208) AddJournalEntry(@253,QUEST_DONE) Wait(2) ForceSpell("x#amelia",DRYAD_TELEPORT)~ EXIT
END

IF ~~ AMRE2.3
SAY @124
IF ~~ THEN DO ~TakePartyItem("X#CODYE1") TakePartyItem("X#CODYE2") SetGlobal("X#CoranSuccubus","GLOBAL",17) ApplySpellRES("x#amchg",Myself) AddExperienceParty(5000) EraseJournalEntry(@52) EraseJournalEntry(@53) EraseJournalEntry(@174) EraseJournalEntry(@178) EraseJournalEntry(@184) EraseJournalEntry(@197) EraseJournalEntry(@202) EraseJournalEntry(@208) AddJournalEntry(@254,QUEST_DONE) Enemy() ActionOverride("coran",Enemy()) ActionOverride("natan",Enemy())~ EXIT
END

IF ~~ AMRE2.4F
SAY @125
IF ~~ THEN GOTO AMRE2.2B
END

IF ~~ AMRE2.4M
SAY @126
++ @127 + AMRE2.7
++ @128 + AMRE2.8
END

IF ~~ AMRE2.5
SAY @129
IF ~~ THEN GOTO AMRE2.2B
END

IF ~~ AMRE2.6
SAY @130
= @131
IF ~~ THEN DO ~ApplySpellRES("x#amchg",Myself) TakePartyItem("X#CODYE1") TakePartyItem("X#CODYE2") SetGlobal("X#CoranSuccubus","GLOBAL",15) EraseJournalEntry(@52) EraseJournalEntry(@53) EraseJournalEntry(@174) EraseJournalEntry(@178) EraseJournalEntry(@184) EraseJournalEntry(@197) EraseJournalEntry(@202) EraseJournalEntry(@208) AddJournalEntry(@255,QUEST_DONE)  AddExperienceParty(6400) ActionOverride("coran",LeaveParty()) ActionOverride("coran",SetLeavePartyDialogFile()) ActionOverride("coran",ChangeAIScript("",DEFAULT))  Wait(2) ForceSpell("coran",DRYAD_TELEPORT) ForceSpell("natan",DRYAD_TELEPORT) ForceSpell("x#amelia",DRYAD_TELEPORT)~
EXIT
END

IF ~~ AMRE2.7
SAY @132
IF ~~ THEN DO ~ApplySpellRES("x#amchg",Myself) MoveToObject(Player1) TakePartyItem("X#CODYE1") TakePartyItem("X#CODYE2") SetGlobal("X#CoranSuccubus","GLOBAL",15) PlaySound("%tutu_var%NERED07") Kill(Player1)~ EXIT
END

IF ~~ AMRE2.8
SAY @133
IF ~~ THEN DO ~ApplySpellRES("x#amchg",Myself) TakePartyItem("X#CODYE1") TakePartyItem("X#CODYE2") SetGlobal("X#CoranSuccubus","GLOBAL",16) GiveItemCreate("X#COAMUL",Player1,1,0,0) EraseJournalEntry(@52) EraseJournalEntry(@53) EraseJournalEntry(@174) EraseJournalEntry(@178) EraseJournalEntry(@184) EraseJournalEntry(@197) EraseJournalEntry(@202) EraseJournalEntry(@208) AddJournalEntry(@253,QUEST_DONE) AddExperienceParty(6400) Wait(2) ForceSpell("x#amelia",DRYAD_TELEPORT)~
EXIT
END

/* Talked to Natan w/o restoring roses */

IF ~%BGT_VAR% GlobalGT("X#CoranSuccubus","GLOBAL",7) GlobalLT("X#CoranSuccubus","GLOBAL",11)~ AmeliaReturn1
SAY @134
+ ~Global("X#CoranSuccubus","GLOBAL",8) Gender(Player1,FEMALE) OR(2) PartyHasItem("X#CODYE1") PartyHasItem("X#CODYE2")~ + @135 + AMRE1.1F
+ ~Global("X#CoranSuccubus","GLOBAL",8) Gender(Player1,MALE) OR(2) PartyHasItem("X#CODYE1") PartyHasItem("X#CODYE2")~ + @135 + AMRE1.1M
+ ~Global("X#CoranSuccubus","GLOBAL",8)~ + @136 + AMRE1.2
+ ~Global("X#CoranSuccubus","GLOBAL",10)~ + @137 + AMRE1.3
+ ~Global("X#CoranSuccubus","GLOBAL",9)~ + @138 + AMRE1.3
+ ~Global("X#CoranSuccubus","GLOBAL",10) InParty("coran")~ + @139 + AMRE1.4
+ ~Global("X#CoranSuccubus","GLOBAL",9) InParty("coran")~ + @140 + AMRE1.4
+ ~Global("X#CoranSuccubus","GLOBAL",10)~ + @141 + AMRE1.5
END

IF ~~ AMRE1.1F
SAY @142
+ ~OR(2) PartyHasItem("X#CODYE1") PartyHasItem("X#CODYE2")~ + @143 DO ~TakePartyItem("X#CODYE1") TakePartyItem("X#CODYE2") SetGlobal("X#CoranSuccubus","GLOBAL",12)~ + AMRE1.6
++ @144 + AMRE1.7
END

IF ~~ AMRE1.1M
SAY @145
++ @146 DO ~TakePartyItem("X#CODYE1") TakePartyItem("X#CODYE2") SetGlobal("X#CoranSuccubus","GLOBAL",12)~ + AMRE1.12
++ @147 + AMRE1.7
++ @144 + AMRE1.7
+ ~!InParty("coran")~ + @148 DO ~MoveToObject(Player1) SetGlobal("X#CoranSuccubus","GLOBAL",12) PlaySound("%tutu_var%NERED07") Kill(Player1)~ EXIT
+ ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ + @148 EXTERN ~%CORAN_JOINED%~ AMRE1.8A
END

IF ~~ AMRE1.2
SAY @149
+ ~OR(2) PartyHasItem("X#CODYE1") PartyHasItem("X#CODYE2")~ + @143 DO ~TakePartyItem("X#CODYE1") TakePartyItem("X#CODYE2") SetGlobal("X#CoranSuccubus","GLOBAL",12)~ + AMRE1.6
+ ~!PartyHasItem("X#CODYE1") !PartyHasItem("X#CODYE2")~ + @150 + AMRE1.11
++ @151 + AMRE1.3
END

IF ~~ AMRE1.3
SAY @152
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",13) ApplySpellRES("x#amchg",Myself) AddExperienceParty(5000) EraseJournalEntry(@52) EraseJournalEntry(@53) EraseJournalEntry(@174) EraseJournalEntry(@178) EraseJournalEntry(@184) EraseJournalEntry(@197) EraseJournalEntry(@202) EraseJournalEntry(@208) AddJournalEntry(@254,QUEST_DONE) Enemy()~ EXIT
END

IF ~~ AMRE1.4
SAY @153
++ @250 + AMRE1.11
++ @251 + AMRE1.5
++ @252 + AMRE1.5
END

IF ~~ AMRE1.5
SAY @154
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",13) ApplySpellRES("x#amchg",Myself) AddExperienceParty(5000) EraseJournalEntry(@52) EraseJournalEntry(@53) EraseJournalEntry(@174) EraseJournalEntry(@178) EraseJournalEntry(@184) EraseJournalEntry(@197) EraseJournalEntry(@202) EraseJournalEntry(@208) AddJournalEntry(@254,QUEST_DONE) Enemy()~ EXIT
END

IF ~~ AMRE1.6
SAY @155
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",12) ApplySpellRES("x#amchg",Myself) GiveItemCreate("X#COAMUL",Player1,1,0,0) AddExperienceParty(6400) EraseJournalEntry(@52) EraseJournalEntry(@53) EraseJournalEntry(@174) EraseJournalEntry(@178) EraseJournalEntry(@184) EraseJournalEntry(@197) EraseJournalEntry(@202) EraseJournalEntry(@208) AddJournalEntry(@253,QUEST_DONE) ActionOverride("natan",DestroySelf()) Wait(2) ForceSpell("x#amelia",DRYAD_TELEPORT)~
EXIT
END

IF ~~ AMRE1.7
SAY @156
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",13) ApplySpellRES("x#amchg",Myself) AddExperienceParty(5000) EraseJournalEntry(@52) EraseJournalEntry(@53) EraseJournalEntry(@174) EraseJournalEntry(@178) EraseJournalEntry(@184) EraseJournalEntry(@197) EraseJournalEntry(@202) EraseJournalEntry(@208) AddJournalEntry(@254,QUEST_DONE) Enemy()~ EXIT
END

IF ~~ AMRE1.8
SAY @157
++ @158 + AMRE1.9
++ @159 + AMRE1.7
++ @160 + AMRE1.10
END

IF ~~ AMRE1.9
SAY @161
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",12) ApplySpellRES("x#amchg",Myself) GiveItemCreate("X#COAMUL",Player1,1,0,0) AddExperienceParty(6400) EraseJournalEntry(@52) EraseJournalEntry(@53) EraseJournalEntry(@174) EraseJournalEntry(@178) EraseJournalEntry(@184) EraseJournalEntry(@197) EraseJournalEntry(@202) EraseJournalEntry(@208) AddJournalEntry(@253,QUEST_DONE) ActionOverride("natan",DestroySelf()) Wait(2) ForceSpell("x#amelia",DRYAD_TELEPORT)~
EXIT
END

IF ~~ AMRE1.10
SAY @162
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",12) ApplySpellRES("x#amchg",Myself) MoveToObject(Player1) PlaySound("%tutu_var%NERED07") Kill(Player1)~ EXIT
END

IF ~~ AMRE1.11
SAY @163
IF ~~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",14)~ EXIT
END

IF ~~ AMRE1.12
SAY @164
++ @165 + AMRE1.6
+ ~!InParty("coran")~ + @166 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",13) ApplySpellRES("x#amchg",Myself) MoveToObject(Player1) PlaySound("%tutu_var%NERED07") Kill(Player1)~ EXIT
+ ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ + @166 EXTERN ~%CORAN_JOINED%~ AMRE1.8A
++ @167 + AMRE1.3
END

IF ~Global("X#CoranSuccubus","GLOBAL",14) OR(2) PartyHasItem("X#CODYE1") PartyHasItem("X#CODYE2")~ LastChance
SAY @168
++ @143 DO ~TakePartyItem("X#CODYE1") TakePartyItem("X#CODYE2") SetGlobal("X#CoranSuccubus","GLOBAL",12)~ + AMRE1.6
++ @169 + AMRE1.3
END


IF ~ Global("X#CoranSuccubus","GLOBAL",7)~ THEN YayRoses
SAY @170
= @171
IF ~~ THEN EXIT
END

IF ~Global("X#CoranSuccubus","GLOBAL",4)~ THEN Sob
SAY @172
+ ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ + @173 UNSOLVED_JOURNAL @174 + COSU2.6
++ @175 EXIT
END

IF ~~ COSU2.1
SAY @176
+ ~CheckStatGT(Player1,15,INT)~ + @177 UNSOLVED_JOURNAL @178 + COSU2.4
++ @179 UNSOLVED_JOURNAL @174 + COSU2.5A
+ ~Gender(Player1,MALE)~ + @180 UNSOLVED_JOURNAL @178 + COSU2.6
+ ~Gender(Player1,FEMALE)~ + @181 UNSOLVED_JOURNAL @174 + COSU2.6
++ @182 UNSOLVED_JOURNAL @174 + COSU2.7
END

IF ~~ COSU2.2
SAY @183
IF ~Global("P#CoranMatch","GLOBAL",1)~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",4)~ UNSOLVED_JOURNAL @184 EXIT
IF ~!Global("P#CoranMatch","GLOBAL",1)~ THEN EXTERN ~%CORAN_JOINED%~ CoranQuitsSuccubus
END 


IF ~~ COSU2.3
SAY @185
++ @186 + COSU2.6
++ @187 + COSU2.2
+ ~CheckStatGT(Player1,15,INT)~ + @177 + COSU2.4
END

IF ~~ COSU2.4
SAY @188
++ @189 + COSU2.6
++ @190 + COSU2.8
++ @182 + COSU2.7
END

IF ~~ COSU2.5
SAY @191
IF ~Global("P#CoranMatch","GLOBAL",1)~ THEN DO ~SetGlobal("X#CoranSuccubus","GLOBAL",4)~ UNSOLVED_JOURNAL @184 EXIT
IF ~!Global("P#CoranMatch","GLOBAL",1)~ THEN EXTERN ~%CORAN_JOINED%~ CoranQuitsSuccubus
END 

IF ~~ COSU2.5A
SAY @192
+ ~CheckStatGT(Player1,15,INT)~ + @193 + COSU2.5
+ ~Gender(Player1,MALE)~ + @180 + COSU2.6
+ ~Gender(Player1,FEMALE)~ + @181 + COSU2.6
++ @182 + COSU2.7
END

END

APPEND ~%CORAN_POST%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#CoranCharmed","GLOBAL",1) AreaCheck("%FirewineBridge%")~ X#CoranCharmed
SAY @194
IF ~~ THEN DO ~MoveToPoint([4090.2215])~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#CoranCharmed","GLOBAL",1) !AreaCheck("%FirewineBridge%")~ X#CoranCharmed2
SAY @194
IF ~~ THEN DO ~EscapeAreaMove("%FirewineBridge%",4090,2215,7)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#CoranTakesRoses","GLOBAL",1)~ X#CoranTakesRoses
SAY @257
++ @258 + CoranRejoin
++ @259 + CoranNotRejoin
END

IF ~~ CoranRejoin
SAY @260
IF ~~ THEN DO ~SetGlobal("X#CoranTakesRoses","GLOBAL",2) SetGlobal("X#CoranSuccubus","GLOBAL",5) ChangeAIScript("",DEFAULT) SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ UNSOLVED_JOURNAL @202 EXIT
END

IF ~~ CoranNotRejoin
SAY @261
IF ~~ THEN EXIT
END
END

CHAIN ~%CORAN_JOINED%~ CoranQuitsSuccubus
@195
== X#AMELIA @256
== ~%CORAN_JOINED%~ @199
DO ~SetGlobal("X#CoranTakesRoses","GLOBAL",1) SetGlobal("X#CoranSuccubus","GLOBAL",4) ActionOverride("x#amelia",GiveItemCreate("X#COWIRO","coran",1,0,0)) ActionOverride("coran",SetGlobal("%KICKED_OUT%","LOCALS",1)) ActionOverride("coran",LeaveParty()) ActionOverride("coran",SetLeavePartyDialogFile()) ActionOverride("coran",ChangeAIScript("",DEFAULT)) ActionOverride("coran",EscapeAreaMove("%Temple%",1500,1575,6))~
END
IF ~~ UNSOLVED_JOURNAL @197 EXIT

CHAIN X#AMELIA COSU2.6
@198
== ~%CORAN_JOINED%~ @199
== X#AMELIA @200
END
++ @201 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",5) GiveItemCreate("X#COWIRO","coran",1,0,0)~ UNSOLVED_JOURNAL @202 EXIT
+ ~Global("P#CoranMatch","GLOBAL",1)~ + @203 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",5) GiveItemCreate("X#COWIRO","coran",1,0,0)~ UNSOLVED_JOURNAL @202 EXIT
+ ~Global("P#CoranMatch","GLOBAL",1)~ + @204 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",5) GiveItemCreate("X#COWIRO","coran",1,0,0)~ UNSOLVED_JOURNAL @202 EXIT
++ @205 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",5) GiveItemCreate("X#COWIRO","coran",1,0,0)~ UNSOLVED_JOURNAL @202 EXIT
++ @206 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",5) GiveItemCreate("X#COWIRO","coran",1,0,0)~ UNSOLVED_JOURNAL @202 EXIT
++ @207 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",5) GiveItemCreate("X#COWIRO","coran",1,0,0)~ UNSOLVED_JOURNAL @208 EXIT
++ @209 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",5) GiveItemCreate("X#COWIRO","coran",1,0,0)~ UNSOLVED_JOURNAL @202 EXIT

CHAIN X#AMELIA COSU2.7
@210
== ~%CORAN_JOINED%~ @211
== X#AMELIA @212
END
+ ~CheckStatGT(Player1,15,INT)~ + @213 + COSU2.8
++ @214 + COSU2.6
++ @215 + COSU2.6

CHAIN X#AMELIA COSU2.8
@216
== ~%CORAN_JOINED%~ @217
END
++ @218 + COSU2.5
++ @214 + COSU2.6

APPEND ~%CORAN_JOINED%~

IF ~~ AMRE1.8A
SAY @219
IF ~~ THEN EXTERN X#AMELIA AMRE1.8
END

IF ~~ CoranResistShort
SAY @220 
IF ~~ THEN DO ~SetGlobalTimer("X#CoranResistTimer","GLOBAL",ONE_HOUR) ActionOverride("natan",EscapeAreaMove("%FirewineBridge%",4145,2190,7))~ EXIT
END

IF ~~ CoranResistLong
SAY @220 
IF ~~ THEN DO ~SetGlobalTimer("X#CoranResistTimer","GLOBAL",TWO_HOURS) ActionOverride("natan",EscapeAreaMove("%FirewineBridge%",4145,2190,7))~ EXIT
END

IF ~~ CoranNotResist
SAY @221
IF ~~ THEN DO ~SetGlobal("X#CoranCharmed","GLOBAL",1) LeaveParty() ActionOverride("coran",SetLeavePartyDialogFile()) ActionOverride("coran",ChangeAIScript("",DEFAULT)) ActionOverride("natan",EscapeAreaMove("%FirewineBridge%",4145,2190,7)) EscapeAreaMove("%FirewineBridge%",4090,2215,7)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#CoranCharmedRun","GLOBAL",1)~ CoranNotResistAfterTimer
SAY @221
IF ~~ THEN DO ~SetGlobal("X#CoranCharmedRun","GLOBAL",2) SetGlobal("X#CoranCharmed","GLOBAL",1) LeaveParty() ActionOverride("coran",SetLeavePartyDialogFile()) ActionOverride("coran",ChangeAIScript("",DEFAULT)) EscapeAreaMove("%FirewineBridge%",4090,2215,7)~ EXIT
END


IF WEIGHT #-2 ~%BGT_VAR% Global("X#CoranSuccubus","GLOBAL",2)~ THEN BEGIN CoranSuccubus
SAY @222
++ @223 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",3)~ + COSUC1.1
++ @224 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",3)~ + COSUC1.1
++ @225 DO ~SetGlobal("X#CoranSuccubus","GLOBAL",3)~ + COSUC1.2
END

IF ~~ COSUC1.1
SAY @226
++ @227 + COSUC1.3
+ ~!Race(Player1,ELF)~ + @228 + COSUC1.4
++ @229 + COSUC1.4
++ @230 + COSUC1.4
++ @231 + COSUC1.3
END

IF ~~ COSUC1.2
SAY @232
++ @227 + COSUC1.3
+ ~!Race(Player1,ELF)~ + @228 + COSUC1.4
++ @229 + COSUC1.4
++ @233 + COSUC1.4
++ @231 + COSUC1.3
END

IF ~~ COSUC1.3
SAY @234
IF ~Global("P#CoranMatch","GLOBAL",1)~ THEN EXIT
IF ~!Global("P#CoranMatch","GLOBAL",1)~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ COSUC1.4
SAY @235
IF ~~ THEN EXIT
END
END

CHAIN IF ~%BGT_VAR% Global("X#CoranSuccubus","GLOBAL",3)~ THEN X#AMELIA AmeliaRoses
@236
== ~%CORAN_JOINED%~ @237
== X#AMELIA @238
= @239
= @240
== ~%CORAN_JOINED%~ @241
== X#AMELIA @242
== ~%CORAN_JOINED%~ @243
== X#AMELIA @244
== ~%CORAN_JOINED%~ @245
== X#AMELIA @246
END
++ @247 + COSU2.1
++ @248 + COSU2.2
++ @249 + COSU2.3

