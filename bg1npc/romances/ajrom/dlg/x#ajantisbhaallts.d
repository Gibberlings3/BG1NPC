//triggering of Tamoko's talk: Global("X#AjTamokoKnowBhaal","GLOBAL",1)

ADD_TRANS_ACTION ~%tutu_var%TAMOKO~ BEGIN 12 14 15 END BEGIN END 
~SetGlobal("X#AjTamokoKnowBhaal","GLOBAL",1)~

//Know Bhaal cycle for "X#AjantisRomanceActive=2"

APPEND ~%AJANTIS_JOINED%~

//knowbhaal_lovetalk_01: PC's heritage and Ajantis being paladin
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisKnowBhaalTalk","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN BEGIN knowbhaal_lovetalk_01
SAY @0
+ ~Global("X#AjTamokoKnowBhaal","GLOBAL",1)~ + @1 + bhaalcycle_01
+ ~Global("X#AjTamokoKnowBhaal","GLOBAL",1)~ + @2 + bhaalcycle_01
+ ~Global("X#AjTamokoKnowBhaal","GLOBAL",1)~ + @3 + bhaalcycle_01
+ ~!Global("X#AjTamokoKnowBhaal","GLOBAL",1)~ + @4 + bhaalcycle_01
+ ~!Global("X#AjTamokoKnowBhaal","GLOBAL",1)~ + @5 + bhaalcycle_01
+ ~!Global("X#AjTamokoKnowBhaal","GLOBAL",1)~ + @6 + bhaalcycle_01
END 

IF ~~ THEN BEGIN bhaalcycle_01
SAY @7 
IF ~~ THEN DO ~SetGlobal("X#AjantisKnowBhaalTalk","GLOBAL",2)~ + bhaalcycle_02
END

IF ~~ THEN BEGIN bhaalcycle_02
SAY @8 
+ ~Global("X#AjantisRomanceHelmGod","GLOBAL",1) Class(Player1,PALADIN)~ + @9 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_03
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1) Class(Player1,PALADIN)~ + @10 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_03
+ ~!Class(Player1,PALADIN) Reputation(Player1,20) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @11 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_04
+ ~!Class(Player1,PALADIN) ReputationLT(Player1,20) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @12 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_05
+ ~!Class(Player1,PALADIN) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",0)~ + @12 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_06
++ @13 + bhaalcycle_07
++ @14 DO ~SetGlobal("X#AjantisRomanceBhaalPos","LOCALS",1)~ + bhaalcycle_13
++ @15 DO ~SetGlobal("X#AjantisRomPowersYes","GLOBAL",1)~ + bhaalcycle_14
++ @16 + bhaalcycle_25
++ @17 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle_11
END

IF ~~ THEN BEGIN bhaalcycle_03
SAY @18
IF ~~ THEN + bhaalcycle_09
END

IF ~~ THEN BEGIN bhaalcycle_04
SAY @19
IF ~~ THEN + bhaalcycle_09
END

IF ~~ THEN BEGIN bhaalcycle_05
SAY @20
IF ~~ THEN + bhaalcycle_08
END

IF ~~ THEN BEGIN bhaalcycle_06
SAY @21
IF ~~ THEN + bhaalcycle_08
END

IF ~~ THEN BEGIN bhaalcycle_07
SAY @22
= @23
+ ~Global("X#AjantisRomanceHelmGod","GLOBAL",1) Class(Player1,PALADIN)~ + @9 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_03
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1) Class(Player1,PALADIN)~ + @10 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_03
+ ~!Class(Player1,PALADIN) Reputation(Player1,20) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @12 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_04
+ ~!Class(Player1,PALADIN) ReputationLT(Player1,20) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @12 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_05
+ ~!Class(Player1,PALADIN) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",0)~ + @12 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_06
++ @14 DO ~SetGlobal("X#AjantisRomanceBhaalPos","LOCALS",1)~ + bhaalcycle_13
++ @15 DO ~SetGlobal("X#AjantisRomPowersYes","GLOBAL",1)~ + bhaalcycle_14
++ @16 + bhaalcycle_25
++ @17 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle_11
END

IF ~~ THEN BEGIN bhaalcycle_08
SAY @24 
IF ~!Global("X#AjantisRomBhaalNT","GLOBAL",2)~ THEN + bhaalcycle_10
IF ~Global("X#AjantisRomBhaalNT","GLOBAL",2)~ THEN + bhaalcycle2_13
END

IF ~~ THEN BEGIN bhaalcycle_09
SAY @25 
IF ~!Global("X#AjantisRomBhaalNT","GLOBAL",2)~ THEN + bhaalcycle_10
IF ~Global("X#AjantisRomBhaalNT","GLOBAL",2)~ THEN + bhaalcycle2_13
END

IF ~~ THEN BEGIN bhaalcycle_10
SAY @26
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceThinking","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bhaalcycle_11
SAY @27
+ ~Global("X#AjantisRomanceHelmGod","GLOBAL",1) Class(Player1,PALADIN)~ + @9 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_03
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1) Class(Player1,PALADIN)~ + @10 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_03
+ ~!Class(Player1,PALADIN) Reputation(Player1,20) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @11 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_04
+ ~!Class(Player1,PALADIN) ReputationLT(Player1,20) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @12 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_05
+ ~!Class(Player1,PALADIN) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",0)~ + @12 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_06
++ @14 DO ~SetGlobal("X#AjantisRomanceBhaalPos","LOCALS",1)~ + bhaalcycle_13
++ @15 DO ~SetGlobal("X#AjantisRomPowersYes","GLOBAL",1)~ + bhaalcycle_14
+ ~!Global("X#AjantisRomBhaalNT","GLOBAL",2)~ + @28 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle_12
END

IF ~~ THEN BEGIN bhaalcycle_12
SAY @29 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomBhaalNT","GLOBAL",1)~ + bhaalcycle_10
END

IF ~~ THEN BEGIN bhaalcycle_13
SAY @30
++ @31 + bhaalcycle_11
++ @32 DO ~SetGlobal("X#AjantisRomPowersYes","GLOBAL",1)~ + bhaalcycle_14
END

IF ~~ THEN BEGIN bhaalcycle_14
SAY @33
++ @34 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle_15
+ ~!Class(Player1,PALADIN)~ + @35 + bhaalcycle_18
END

IF ~~ THEN BEGIN bhaalcycle_15
SAY @36
++ @37 + bhaalcycle_16
+ ~!Class(Player1,PALADIN)~ + @38 + bhaalcycle_18
END

IF ~~ THEN BEGIN bhaalcycle_16
SAY @39
+ ~!Class(Player1,PALADIN_ALL) Reputation(Player1,20)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @40 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_04
+ ~!Class(Player1,PALADIN_ALL) ReputationLT(Player1,20)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @40 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_05
+ ~!Class(Player1,PALADIN_ALL) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",0)~ + @40 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_06
+ ~Class(Player1,PALADIN_ALL)~ + @40 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_03
+ ~!Class(Player1,PALADIN_ALL) Reputation(Player1,20)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @41 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_04
+ ~!Class(Player1,PALADIN_ALL) ReputationLT(Player1,20)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @41 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_05
+ ~!Class(Player1,PALADIN_ALL) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",0)~ + @41 + bhaalcycle_06
+ ~Class(Player1,PALADIN_ALL)~ + @41 + bhaalcycle_03
++ @42 + bhaalcycle_19
++ @43 + bhaalcycle_24
++ @44 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle_17
END

IF ~~ THEN BEGIN bhaalcycle_17
SAY @45
IF ~!Class(Player1,PALADIN_ALL) Reputation(Player1,20)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ THEN + bhaalcycle_21
IF ~!Class(Player1,PALADIN_ALL) ReputationLT(Player1,20)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ THEN + bhaalcycle_22
IF ~!Class(Player1,PALADIN_ALL) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",0)~ THEN + bhaalcycle_23
IF ~Class(Player1,PALADIN_ALL)~ THEN + bhaalcycle_20
END

IF ~~ THEN BEGIN bhaalcycle_18
SAY @46
= @47
IF ~~ THEN DO ~LeaveParty() Enemy() SetGlobal("X#AjantisRomanceActive","GLOBAL",3)~ SOLVED_JOURNAL @48 EXIT
END

IF ~~ THEN BEGIN bhaalcycle_19
SAY @49
IF ~~ THEN + bhaalcycle_08
END

IF ~~ THEN BEGIN bhaalcycle_20
SAY @50
IF ~~ THEN + bhaalcycle_09
END

IF ~~ THEN BEGIN bhaalcycle_21
SAY @50
IF ~~ THEN + bhaalcycle_09
END

IF ~~ THEN BEGIN bhaalcycle_22
SAY @51
IF ~~ THEN + bhaalcycle_08
END

IF ~~ THEN BEGIN bhaalcycle_23
SAY @52
IF ~~ THEN + bhaalcycle_08
END

IF ~~ THEN BEGIN bhaalcycle_24
SAY @53
= @54
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceThinking","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bhaalcycle_25
SAY @55
= @56
+ ~Global("X#AjantisRomanceHelmGod","GLOBAL",1) Class(Player1,PALADIN)~ + @9 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_03
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1) Class(Player1,PALADIN)~ + @57 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_03
+ ~!Class(Player1,PALADIN) Reputation(Player1,20) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @11 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_04
+ ~!Class(Player1,PALADIN) ReputationLT(Player1,20) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @12 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_05
+ ~!Class(Player1,PALADIN) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",0)~ + @12 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_06
++ @58 + bhaalcycle_07
++ @14 DO ~SetGlobal("X#AjantisRomanceBhaalPos","LOCALS",1)~ + bhaalcycle_13
++ @15 DO ~SetGlobal("X#AjantisRomPowersYes","GLOBAL",1)~ + bhaalcycle_14
++ @59 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle_11
END

/* Bhaaltalk_02: Alaundo's prophecies */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisKnowBhaalTalk","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN BEGIN knowbhaal_lovetalk_02
SAY @60
++ @61 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1) IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle2_03
++ @62 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1) IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle2_03
++ @63 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1) IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle2_05
++ @64 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1) IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle2_21
++ @65 DO ~SetGlobal("X#AjantisRomanceDirDest","LOCALS",1) IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle2_06
++ @66 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1) IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle2_11
++ @67 DO ~SetGlobal("X#AjantisRomanceBC01","LOCALS",1) IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle2_02
++ @68 DO ~SetGlobal("X#AjantisRomanceBC01","LOCALS",1) IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle2_01
++ @69 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1) SetGlobal("X#AjantisRomanceBC02","LOCALS",1) IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle2_08
END

IF ~~ THEN BEGIN bhaalcycle2_01
SAY @70
++ @61 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_03
++ @62 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_03
++ @63 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_05
++ @64 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_21
+ ~!Global("X#AjantisRomanceDirDest","LOCALS",1)~ + @65 DO ~SetGlobal("X#AjantisRomanceDirDest","LOCALS",1)~ + bhaalcycle2_06
++ @66 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle2_11
++ @71 + bhaalcycle2_19
+ ~!Global("X#AjantisRomanceBC02","LOCALS",1)~ + @69 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle2_08
+ ~Global("X#AjantisRomanceBC02","LOCALS",1)~ + @72 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle2_10
END

IF ~~ THEN BEGIN bhaalcycle2_02
SAY @73
++ @61 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_03
++ @62 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_03
++ @63 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_05
++ @64 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_21
+ ~!Global("X#AjantisRomanceDirDest","LOCALS",1)~ + @65 DO ~SetGlobal("X#AjantisRomanceDirDest","LOCALS",1)~ + bhaalcycle2_06
++ @66 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle2_11
++ @71 + bhaalcycle2_19
+ ~!Global("X#AjantisRomanceBC02","LOCALS",1)~ + @74 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle2_08
+ ~Global("X#AjantisRomanceBC02","LOCALS",1)~ + @72 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle2_10
END

IF ~~ THEN BEGIN bhaalcycle2_03
SAY @75
++ @76 + bhaalcycle2_04
++ @77 + bhaalcycle2_17
++ @78 + bhaalcycle2_09
END

IF ~~ THEN BEGIN bhaalcycle2_04
SAY @79 
IF ~~ THEN + bhaalcycle2_18
END

IF ~~ THEN BEGIN bhaalcycle2_05
SAY @80
= @81
++ @82 + bhaalcycle2_17
++ @83 + bhaalcycle2_04
++ @78 + bhaalcycle2_09
END

IF ~~ THEN BEGIN bhaalcycle2_06
SAY @84
++ @61 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_03
++ @85 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_05
++ @86 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_21
++ @87 + bhaalcycle2_16
+ ~!Global("X#AjantisRomBhaalNT","GLOBAL",2)~ + @74 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle2_08
END

IF ~~ THEN BEGIN bhaalcycle2_07
SAY @88
IF ~~ THEN + bhaalcycle2_05
END

IF ~~ THEN BEGIN bhaalcycle2_08
SAY @89
++ @61 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_03
++ @62 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_03
++ @90 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_05
++ @64 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_21
+ ~!Global("X#AjantisRomanceDirDest","LOCALS",1)~ + @65 + bhaalcycle2_06
+ ~Global("X#AjantisRomanceDirDest","LOCALS",1)~ + @87 + bhaalcycle2_16
++ @91 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle2_11
+ ~!Global("X#AjantisRomanceBC01","LOCALS",1)~ + @92 + bhaalcycle2_02
+ ~!Global("X#AjantisRomanceBC01","LOCALS",1)~ + @93 + bhaalcycle2_01
++ @72 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle2_10
END

IF ~~ THEN BEGIN bhaalcycle2_09
SAY @94 
IF ~~ THEN + bhaalcycle2_18
END

IF ~~ THEN BEGIN bhaalcycle2_10
SAY @95
+ ~!Global("X#AjantisRomBhaalNT","GLOBAL",1)~ + @96 DO ~SetGlobal("X#AjantisRomBhaalNT","GLOBAL",2)~ + bhaalcycle2_14
+ ~Global("X#AjantisRomBhaalNT","GLOBAL",1)~ + @97 DO ~SetGlobal("X#AjantisRomBhaalNT","GLOBAL",2)~ + bhaalcycle2_15
++ @71 + bhaalcycle2_22
END

IF ~~ THEN BEGIN bhaalcycle2_11
SAY @98
++ @99 + bhaalcycle2_12
++ @100 + bhaalcycle_18
END

IF ~~ THEN BEGIN bhaalcycle2_12
SAY @101
++ @61 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_03
++ @102 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_05
++ @103 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_21
+ ~!Global("X#AjantisRomanceDirDest","LOCALS",1)~ + @65 + bhaalcycle2_06
+ ~Global("X#AjantisRomanceDirDest","LOCALS",1)~ + @87 + bhaalcycle2_16
END

IF ~~ THEN BEGIN bhaalcycle2_13
SAY @104
++ @61 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_03
++ @62 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_03
++ @90 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_05
++ @105 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_21
+ ~!Global("X#AjantisRomanceDirDest","LOCALS",1)~ + @65 + bhaalcycle2_06
+ ~Global("X#AjantisRomanceDirDest","LOCALS",1)~ + @87 + bhaalcycle2_16
++ @91 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle2_11
END

IF ~~ THEN BEGIN bhaalcycle2_14
SAY @106
++ @61 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_03
++ @62 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_03
++ @63 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_05
++ @105 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle2_21
+ ~!Global("X#AjantisRomanceDirDest","LOCALS",1)~ + @65 + bhaalcycle2_06
+ ~Global("X#AjantisRomanceDirDest","LOCALS",1)~ + @87 + bhaalcycle2_16
++ @91 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle2_11
+ ~!Global("X#AjantisRomBhaalNT","GLOBAL",2)~ + @74 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",1)~ + bhaalcycle2_08
END

IF ~~ THEN BEGIN bhaalcycle2_15
SAY @107 
+ ~Global("X#AjantisRomanceHelmGod","GLOBAL",1) Class(Player1,PALADIN)~ + @108 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_03
+ ~!Global("X#AjantisRomanceHelmGod","GLOBAL",1) Class(Player1,PALADIN)~ + @109 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_03
+ ~!Class(Player1,PALADIN) Reputation(Player1,20) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @12 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_04
+ ~!Class(Player1,PALADIN) ReputationLT(Player1,20) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",1)~ + @12 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_05
+ ~!Class(Player1,PALADIN) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",0)~ + @12 DO ~IncrementGlobal("X#AjantisRomanceBadBhaal","GLOBAL",-1)~ + bhaalcycle_06
++ @110 + bhaalcycle_07
++ @111 DO ~SetGlobal("X#AjantisRomanceBhaalPos","LOCALS",1)~ + bhaalcycle_13
++ @112 DO ~SetGlobal("X#AjantisRomPowersYes","GLOBAL",1)~ + bhaalcycle_14
END 

IF ~~ THEN BEGIN bhaalcycle2_16
SAY @113
++ @82 + bhaalcycle2_17
++ @83 + bhaalcycle2_04
++ @78 + bhaalcycle2_09
END

IF ~~ THEN BEGIN bhaalcycle2_17
SAY @114
IF ~~ THEN + bhaalcycle2_18
END

IF ~~ THEN BEGIN bhaalcycle2_18
SAY @115
IF ~~ THEN DO ~SetGlobal("X#AjantisKnowBhaalTalk","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN bhaalcycle2_19
SAY @116
++ @117 + bhaalcycle2_14
++ @118 + bhaalcycle2_14
++ @119 + bhaalcycle2_20
END

IF ~~ THEN BEGIN bhaalcycle2_20
SAY @120
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1) SetGlobal("X#AjantisKnowBhaalTalk","GLOBAL",8)~ EXIT
END

IF ~~ THEN BEGIN bhaalcycle2_21
SAY @75
++ @77 + bhaalcycle2_17
++ @121 + bhaalcycle2_04
++ @78 + bhaalcycle2_09
END

IF ~~ THEN BEGIN bhaalcycle2_22
SAY @122
+ ~!Global("X#AjantisRomBhaalNT","GLOBAL",1)~ + @117 DO ~SetGlobal("X#AjantisRomBhaalNT","GLOBAL",2)~ + bhaalcycle2_14
+ ~!Global("X#AjantisRomBhaalNT","GLOBAL",1)~ + @118 DO ~SetGlobal("X#AjantisRomBhaalNT","GLOBAL",2)~ + bhaalcycle2_14
+ ~Global("X#AjantisRomBhaalNT","GLOBAL",1)~ + @123 DO ~SetGlobal("X#AjantisRomBhaalNT","GLOBAL",2)~ + bhaalcycle2_15
+ ~Global("X#AjantisRomBhaalNT","GLOBAL",1)~ + @124 DO ~SetGlobal("X#AjantisRomBhaalNT","GLOBAL",2)~ + bhaalcycle2_15
++ @119 + bhaalcycle2_20
END

/* Bhaaltalk__03: Ajantis' decision */
/* Player1. (nicht protect_evil) (kann man das überhaupt abfragen...) */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisKnowBhaalTalk","GLOBAL",5) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN BEGIN knowbhaal_lovetalk_03
SAY @125
= @126
= @127
IF ~GlobalLT("X#AjantisRomanceBadBhaal","GLOBAL",1)~ THEN DO ~IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle3_12
IF ~GlobalGT("X#AjantisRomanceBadBhaal","GLOBAL",0)~ THEN DO ~IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle3_13
END

IF ~~ THEN bhaalcycle3_01
SAY @128
IF ~Global("X#AjantisCoChalGift","GLOBAL",2)~ THEN + bhaalcycle3_10
IF ~!Global("X#AjantisCoChalGift","GLOBAL",2)~ THEN + bhaalcycle3_11
END

IF ~~ THEN bhaalcycle3_02
SAY @129
IF ~Global("X#AjantisCoChalGift","GLOBAL",2)~ THEN + bhaalcycle3_10
IF ~!Global("X#AjantisCoChalGift","GLOBAL",2)~ THEN + bhaalcycle3_11
END

IF ~~ THEN bhaalcycle3_03
SAY @130
IF ~Global("X#AjantisCoChalGift","GLOBAL",2)~ THEN + bhaalcycle3_10
IF ~!Global("X#AjantisCoChalGift","GLOBAL",2)~ THEN + bhaalcycle3_11
END

IF ~~ THEN bhaalcycle3_04
SAY @131
++ @132 + bhaalcycle3_05
++ @133 + bhaalcycle3_06
++ @134 + bhaalcycle3_07
+ ~!Global("X#AjantisRomanceER1","LOCALS",1)~ + @135 DO ~SetGlobal("X#AjantisRomanceER1","LOCALS",1)~ + bhaalcycle3_09
END

IF ~~ THEN bhaalcycle3_05
SAY @136
IF ~Global("X#AjantisCoChalGift","GLOBAL",2)~ THEN + bhaalcycle3_10
IF ~!Global("X#AjantisCoChalGift","GLOBAL",2)~ THEN + bhaalcycle3_11
END

IF ~~ THEN bhaalcycle3_06
SAY @137
IF ~Global("X#AjantisCoChalGift","GLOBAL",2)~ THEN + bhaalcycle3_10
IF ~!Global("X#AjantisCoChalGift","GLOBAL",2)~ THEN + bhaalcycle3_11
END

IF ~~ THEN bhaalcycle3_07
SAY @138
IF ~Global("X#AjantisCoChalGift","GLOBAL",2)~ THEN + bhaalcycle3_10
IF ~!Global("X#AjantisCoChalGift","GLOBAL",2)~ THEN + bhaalcycle3_11
END

IF ~~ THEN bhaalcycle3_08
SAY @139
++ @132 + bhaalcycle3_05
++ @140 + bhaalcycle3_06
++ @141 + bhaalcycle3_07
++ @142 DO ~SetGlobal("X#AjantisRomanceER1","LOCALS",1)~ + bhaalcycle3_09
END

IF ~~ THEN bhaalcycle3_09
SAY @143
++ @144 + bhaalcycle3_04
++ @145 + bhaalcycle2_20
END

IF ~~ THEN BEGIN bhaalcycle3_10
SAY @146
IF ~~ THEN DO ~SetGlobal("X#AjantisKnowBhaalTalk","GLOBAL",9) SetGlobal("X#AjantisRomanceCut2","GLOBAL",1)
ClearAllActions()
StartCutScene("X#AJRCUT")
StartCutSceneMode()~ EXIT
END

IF ~~ THEN BEGIN bhaalcycle3_11
SAY @147
IF ~~ THEN DO ~SetGlobal("X#AjantisKnowBhaalTalk","GLOBAL",9) SetGlobal("X#AjantisRomanceCut","GLOBAL",1)
ClearAllActions()
StartCutScene("X#AJRCUT")
StartCutSceneMode()~ EXIT
END

IF ~~ THEN bhaalcycle3_12
SAY @148
IF ~~ THEN + bhaalcycle3_14
END 

IF ~~ THEN bhaalcycle3_13
SAY @148
IF ~~ THEN + bhaalcycle3_14
END 

IF ~~ THEN bhaalcycle3_14
SAY @149
++ @132 + bhaalcycle3_01
++ @150 + bhaalcycle3_02
++ @141 + bhaalcycle3_03
++ @151 + bhaalcycle3_04
++ @152 + bhaalcycle3_08
++ @135 DO ~SetGlobal("X#AjantisRomanceER1","LOCALS",1)~ + bhaalcycle3_09
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceCut","GLOBAL",1)~ THEN bhaalcycle3_15
SAY @153
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceCut","GLOBAL",2) SetGlobal("X#AjantisKnowBhaalTalk","GLOBAL",6) SetGlobal("X#AjantisRomanceThinking","GLOBAL",2)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomanceCut2","GLOBAL",1)~ THEN bhaalcycle3_16
SAY @154
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceCut2","GLOBAL",2) SetGlobal("X#AjantisKnowBhaalTalk","GLOBAL",6) SetGlobal("X#AjantisRomanceThinking","GLOBAL",2)~ EXIT
END

/* Bhaaltalk__04: PC's heritage and Ajantis' noble family */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisKnowBhaalTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN BEGIN knowbhaal_lovetalk_04
SAY @155
++ @156 DO ~IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle4_02
++ @157 DO ~IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle4_02
++ @158 DO ~IncrementGlobal("X#AjantisKnowBhaalTalk","GLOBAL",1)~ + bhaalcycle4_01
END

IF ~~ THEN bhaalcycle4_01
SAY @159
IF ~~ THEN + bhaalcycle4_02
END

IF ~~ THEN bhaalcycle4_02
SAY @160
= @161
= @162
++ @163 + bhaalcycle4_03
++ @164 + bhaalcycle4_04
++ @165 + bhaalcycle4_06
++ @166 + bhaalcycle4_03
END

IF ~~ THEN bhaalcycle4_03
SAY @167
++ @168 + bhaalcycle4_08
++ @169 + bhaalcycle4_05
++ @170 + bhaalcycle4_14
++ @171 + bhaalcycle4_07
END

IF ~~ THEN bhaalcycle4_04
SAY @172
++ @173 + bhaalcycle4_08
++ @169 + bhaalcycle4_05
++ @170 + bhaalcycle4_08
++ @171 + bhaalcycle4_07
END

IF ~~ THEN bhaalcycle4_05
SAY @174
IF ~~ THEN + bhaalcycle4_08
END

IF ~~ THEN bhaalcycle4_06
SAY @175
IF ~~ THEN + bhaalcycle4_03
END

IF ~~ THEN bhaalcycle4_07
SAY @176
IF ~~ THEN + bhaalcycle4_08
END

IF ~~ THEN bhaalcycle4_08
SAY @177
++ @178 + bhaalcycle4_09
++ @179 + bhaalcycle4_09
++ @180 + bhaalcycle4_10
++ @181 + bhaalcycle4_11
++ @182 + bhaalcycle4_12
+ ~!Global("X#AjantisRomanceFamilyInsult","GLOBAL",1)~ + @183 + bhaalcycle4_13
END

IF ~~ THEN bhaalcycle4_09
SAY @184
IF ~~ THEN EXIT
END

IF ~~ THEN bhaalcycle4_10
SAY @185
IF ~~ THEN + bhaalcycle4_09
END

IF ~~ THEN bhaalcycle4_11
SAY @186
IF ~~ THEN EXIT
END

IF ~~ THEN bhaalcycle4_12
SAY @187
IF ~~ THEN + bhaalcycle4_10
END

IF ~~ THEN bhaalcycle4_13
SAY @188
IF ~~ THEN + bhaalcycle4_10
END

IF ~~ THEN bhaalcycle4_14
SAY @189
IF ~~ THEN + bhaalcycle4_08
END

END

