/* Asking npc to wait for you */

ADD_TRANS_TRIGGER ~%JAHEIRA_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%JAHEIRA_POST%~ 1 ~False()~
ADD_TRANS_TRIGGER ~%KHALID_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%KHALID_POST%~ 1 ~False()~

ADD_TRANS_TRIGGER ~%DYNAHEIR_POST%~ 2 ~False()~
ADD_TRANS_TRIGGER ~%DYNAHEIR_POST%~ 3 ~False()~
ADD_TRANS_TRIGGER ~%MINSC_POST%~ 2 ~False()~
ADD_TRANS_TRIGGER ~%MINSC_POST%~ 3 ~False()~

ADD_TRANS_TRIGGER ~%SKIE_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%SKIE_POST%~ 1 ~False()~
ADD_TRANS_TRIGGER ~%ELDOTH_POST%~ 2 ~False()~
ADD_TRANS_TRIGGER ~%ELDOTH_POST%~ 3 ~False()~

ADD_TRANS_TRIGGER ~%XZAR_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%XZAR_POST%~ 1 ~False()~
ADD_TRANS_TRIGGER ~%MONTARON_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%MONTARON_POST%~ 1 ~False()~

ADD_TRANS_TRIGGER ~%AJANTIS_POST%~ 4 ~False()~
ADD_TRANS_TRIGGER ~%ALORA_POST%~ 4 ~False()~
ADD_TRANS_TRIGGER ~%BRANWEN_POST%~ 4 ~False()~
ADD_TRANS_TRIGGER ~%CORAN_POST%~ 3 ~False()~
ADD_TRANS_TRIGGER ~%EDWIN_POST%~ 3 ~False()~
ADD_TRANS_TRIGGER ~%FALDORN_POST%~ 4 ~False()~
ADD_TRANS_TRIGGER ~%GARRICK_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%IMOEN_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%KAGAIN_POST%~ 1 ~False()~
ADD_TRANS_TRIGGER ~%KIVAN_POST%~ 1 ~False()~
ADD_TRANS_TRIGGER ~%QUAYLE_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%SAFANA_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%SHARTEEL_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%SHARTEEL_POST%~ 5 ~False()~
ADD_TRANS_TRIGGER ~%TIAX_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%VICONIA_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%XAN_POST%~ 0 ~False()~
ADD_TRANS_TRIGGER ~%YESLICK_POST%~ 2 ~False()~

//JAHEIRA
EXTEND_BOTTOM ~%JAHEIRA_POST%~ 0  //NO KHALID IN PARTY
+ ~%NOT_DANGER_AREAS%~+ @0 + STAYHERE_SAFE_JAHEI
+ ~%ALL_DANGER_AREAS%~+ @0 + STAYHERE_DANGER_JAHEI
+ ~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_JAHEI
++ @2 + SC_JAHEI
++ @3 + NEVERLEFT_JAHEI
END

EXTEND_BOTTOM ~%JAHEIRA_POST%~ 1  //KHALID IN PARTY
+ ~%NOT_DANGER_AREAS%~+ @0 + STAYHERE_SAFE_JAHEI_K
+ ~%ALL_DANGER_AREAS%~+ @0 + STAYHERE_DANGER_JAHEI_K
+ ~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_JAHEI_K
++ @2 + SC_JAHEI_K
++ @3 + NEVERLEFT_JAHEI
END

APPEND ~%JAHEIRA_POST%~

IF ~~ THEN BEGIN NEVERLEFT_JAHEI
  SAY @4 
  IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_JAHEI
SAY @5
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_JAHEI_K
SAY @6
IF ~~ THEN DO ~ActionOverride("khalid",ChangeAIScript("",DEFAULT))
ActionOverride("khalid",SetDialogue("%KHALID_POST%"))
ActionOverride("khalid",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("khalid",LeaveParty())
SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LEAVE_JAHEI
  SAY  @7 
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN LEAVE_JAHEI_K
  SAY @8 
  IF ~~ THEN DO ~ActionOverride("khalid",ChangeAIScript("",DEFAULT))
ActionOverride("khalid",LeaveParty())
ActionOverride("khalid",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_JAHEI
SAY @9 // All of the danger areas.
++ @10 + LEAVE_JAHEI
++ @11 + NEVERLEFT_JAHEI
+ ~%SC_DANGER_AREAS%~ + @12 + SC_JAHEI // area check SC areas.
+ ~%BG_DANGER_AREAS%~ + @12 + BG_JAHEI // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_JAHEI_K
SAY @13  // All of the danger areas.
	++ @10 + LEAVE_JAHEI_K
	++ @11 + NEVERLEFT_JAHEI
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_JAHEI_K // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_JAHEI_K // area check BG areas
END

IF ~~ THEN BEGIN SC_JAHEI
SAY @14
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%FriendlyArmInn_L1%",256,618,13)~ EXIT
END

IF ~~ THEN BEGIN BG_JAHEI
SAY @15
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",463,449,14)~ EXIT
END

IF ~~ THEN BEGIN SC_JAHEI_K
SAY @16
IF ~~ DO ~ActionOverride("khalid",ChangeAIScript("",DEFAULT))
ActionOverride("khalid",SetDialogue("%KHALID_POST%"))
ActionOverride("khalid",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("khalid",LeaveParty())
ActionOverride("khalid",EscapeAreaMove("%FriendlyArmInn_L1%",277,670,9))
SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%FriendlyArmInn_L1%",256,618,13)~ EXIT
END

IF ~~ THEN BEGIN BG_JAHEI_K
SAY @17
IF ~~ DO ~ActionOverride("khalid",ChangeAIScript("",DEFAULT))
ActionOverride("khalid",SetDialogue("%KHALID_POST%"))
ActionOverride("khalid",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("khalid",LeaveParty())
ActionOverride("khalid",EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",507,415,0))
SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",463,449,14)~ EXIT
END
END // END ADD TO JAHEIRA

//KHALID
EXTEND_BOTTOM ~%KHALID_POST%~ 0  //NO jaheira IN PARTY
+~%NOT_DANGER_AREAS%~+ @18 + STAYHERE_SAFE_KHALI
+~%ALL_DANGER_AREAS%~+ @18 + STAYHERE_DANGER_KHALI
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_KHALI
++ @2 + SC_KHALI
++ @19 + NEVERLEFT_KHALI
END

EXTEND_BOTTOM ~%KHALID_POST%~ 1  //jaheira IN PARTY
+~%NOT_DANGER_AREAS%~+ @18 + STAYHERE_SAFE_KHALI_J
+~%ALL_DANGER_AREAS%~+ @18 + STAYHERE_DANGER_KHALI_J
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_KHALI_J
++ @2 + SC_KHALI_J
++ @19 + NEVERLEFT_KHALI
END

APPEND ~%KHALID_POST%~

IF ~~ THEN BEGIN NEVERLEFT_KHALI
  SAY @20 
  IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_KHALI
SAY @21
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_KHALI_J
SAY @22
IF ~~ THEN DO ~ActionOverride("jaheira",ChangeAIScript("",DEFAULT))
ActionOverride("jaheira",SetDialogue("%JAHEIRA_POST%"))
ActionOverride("jaheira",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("jaheira",LeaveParty())
SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LEAVE_KHALI
 SAY  @23
 IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN LEAVE_KHALI_J
 SAY  @24 
 IF ~~ THEN DO ~ActionOverride("jaheira",ChangeAIScript("",DEFAULT))
ActionOverride("jaheira",LeaveParty())
ActionOverride("jaheira",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_KHALI
SAY @25 // All of the danger areas.
	++ @10 + LEAVE_KHALI
	++ @11 + NEVERLEFT_KHALI
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_KHALI // area check SC areas.
	+ ~%BG_DANGER_AREAS%~ + @12 + BG_KHALI // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_KHALI_J
SAY @26  // All of the danger areas.
	++ @10 + LEAVE_KHALI_J
	++ @11 + NEVERLEFT_KHALI
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_KHALI_J // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_KHALI_J // area check BG areas
END

IF ~~ THEN BEGIN SC_KHALI
  SAY @27
  IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%FriendlyArmInn_L1%",277,670,9)~ EXIT
END

IF ~~ THEN BEGIN BG_KHALI
  SAY @28
  IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",463,449,14)~ EXIT
END

IF ~~ THEN BEGIN SC_KHALI_J
SAY @29
IF ~~ DO ~ActionOverride("jaheira",ChangeAIScript("",DEFAULT))
ActionOverride("jaheira",SetDialogue("%JAHEIRA_POST%"))
ActionOverride("jaheira",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("jaheira",LeaveParty())
ActionOverride("jaheira",EscapeAreaMove("%FriendlyArmInn_L1%",256,618,13))
SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%FriendlyArmInn_L1%",277,670,9)~ EXIT
END

IF ~~ THEN BEGIN BG_KHALI_J
SAY @30
IF ~~ DO ~ActionOverride("jaheira",ChangeAIScript("",DEFAULT))
ActionOverride("jaheira",SetDialogue("%JAHEIRA_POST%"))
ActionOverride("jaheira",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("jaheira",LeaveParty())
ActionOverride("jaheira",EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",507,415,0))
SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",463,449,14)~ EXIT
END
END // END ADD TO KHALID


//DYNAHEIR
EXTEND_BOTTOM ~%DYNAHEIR_POST%~ 2  //NO MINSC IN PARTY
+~%NOT_DANGER_AREAS%~+ @31 + STAYHERE_SAFE_DYNAH
+~%ALL_DANGER_AREAS%~ + @31 + STAYHERE_DANGER_DYNAH
+ ~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_DYNAH
++ @2 + SC_DYNAH
++ @32 + NEVERLEFT_DYNAH
IF ~GlobalGT("X#DYQUImpAttack","GLOBAL",0)~ THEN EXIT
IF ~Global("X#WinskiTakeDyna","GLOBAL",1)~ THEN EXIT
END

EXTEND_BOTTOM ~%DYNAHEIR_POST%~ 3  //MINSC IN PARTY
+~%NOT_DANGER_AREAS%~+ @31 + STAYHERE_SAFE_DYNAH_K
+~%ALL_DANGER_AREAS%~+ @31 + STAYHERE_DANGER_DYNAH_K
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_DYNAH_K
++ @2 + SC_DYNAH_K
++ @32 + NEVERLEFT_DYNAH
IF ~GlobalGT("X#DYQUImpAttack","GLOBAL",0)~ THEN EXIT
IF ~Global("X#WinskiTakeDyna","GLOBAL",1)~ THEN EXIT
END

APPEND ~%DYNAHEIR_POST%~

IF ~~ THEN BEGIN NEVERLEFT_DYNAH
 SAY @33 
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_DYNAH
SAY @34
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_DYNAH_K
SAY @35
IF ~~ THEN DO ~ActionOverride("minsc",ChangeAIScript("",DEFAULT))
ActionOverride("minsc",SetDialogue("%MINSC_POST%"))
ActionOverride("minsc",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("minsc",LeaveParty())
SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LEAVE_DYNAH
  SAY @36 
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN LEAVE_DYNAH_K
  SAY @37
  IF ~~ THEN DO ~ActionOverride("minsc",ChangeAIScript("",DEFAULT))
ActionOverride("minsc",LeaveParty())
ActionOverride("minsc",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_DYNAH
SAY @38 // All of the danger areas.
	++ @10 + LEAVE_DYNAH
	++ @11 + NEVERLEFT_DYNAH
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_DYNAH // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_DYNAH // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_DYNAH_K
SAY @39  // All of the danger areas.
	++ @10 + LEAVE_DYNAH_K
	++ @11 + NEVERLEFT_DYNAH
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_DYNAH_K // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_DYNAH_K // area check BG areas
END

IF ~~ THEN BEGIN SC_DYNAH
SAY @40
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%FriendlyArmInn_L1%",669,378,3)~ EXIT
END

IF ~~ THEN BEGIN BG_DYNAH
SAY @41
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",320,330,9)~ EXIT
END

IF ~~ THEN BEGIN SC_DYNAH_K
SAY @42
IF ~~ DO ~ActionOverride("minsc",ChangeAIScript("",DEFAULT))
ActionOverride("minsc",SetDialogue("%MINSC_POST%"))
ActionOverride("minsc",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("minsc",LeaveParty())
ActionOverride("minsc",EscapeAreaMove("%FriendlyArmInn_L1%",599,386,12))
SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%FriendlyArmInn_L1%",669,378,3)~ EXIT
END

IF ~~ THEN BEGIN BG_DYNAH_K
SAY @43
IF ~~ DO ~ActionOverride("minsc",ChangeAIScript("",DEFAULT))
ActionOverride("minsc",SetDialogue("%MINSC_POST%"))
ActionOverride("minsc",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("minsc",LeaveParty())
ActionOverride("minsc",EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",286,387,0))
SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",320,330,9)~ EXIT
END
END // END ADD TO DYNAHEIR

//MINSC
EXTEND_BOTTOM ~%MINSC_POST%~ 2  //NO dynaheir IN PARTY
+~%NOT_DANGER_AREAS%~+ @44 + STAYHERE_SAFE_MINSC
+~%ALL_DANGER_AREAS%~+ @44 + STAYHERE_DANGER_MINSC
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_MINSC
++ @2 + SC_MINSC
++ @45 + NEVERLEFT_MINSC
IF ~GlobalGT("X#DYQUImpAttack","GLOBAL",0)~ THEN EXIT
IF ~Global("X#WinskiTakeDyna","GLOBAL",1)~ THEN EXIT
END

EXTEND_BOTTOM ~%MINSC_POST%~ 3  //dynaheir IN PARTY
+~%NOT_DANGER_AREAS%~+ @44 + STAYHERE_SAFE_MINSC_J
+~%ALL_DANGER_AREAS%~+ @44 + STAYHERE_DANGER_MINSC_J
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_MINSC_J
++ @2 + SC_MINSC_J
++ @45 + NEVERLEFT_MINSC
IF ~GlobalGT("X#DYQUImpAttack","GLOBAL",0)~ THEN EXIT
IF ~Global("X#WinskiTakeDyna","GLOBAL",1)~ THEN EXIT
END

APPEND ~%MINSC_POST%~

IF ~~ THEN BEGIN NEVERLEFT_MINSC
 SAY @46
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_MINSC
SAY @47
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_MINSC_J
SAY @48
IF ~~ THEN DO ~ActionOverride("dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("dynaheir",SetDialogue("%DYNAHEIR_POST%"))
ActionOverride("dynaheir",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("dynaheir",LeaveParty())
SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LEAVE_MINSC
  SAY @49
 IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN LEAVE_MINSC_J
 SAY @50 
 IF ~~ THEN DO ~ActionOverride("dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("dynaheir",LeaveParty())
ActionOverride("dynaheir",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_MINSC
SAY @51 // All of the danger areas.
	++ @10 + LEAVE_MINSC
	++ @11 + NEVERLEFT_MINSC
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_MINSC // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_MINSC // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_MINSC_J
SAY @52  // All of the danger areas.
	++ @10 + LEAVE_MINSC_J
	++ @11 + NEVERLEFT_MINSC
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_MINSC_J // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_MINSC_J // area check BG areas
END

IF ~~ THEN BEGIN SC_MINSC
SAY @53
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%FriendlyArmInn_L1%",599,386,12)~ EXIT
END

IF ~~ THEN BEGIN BG_MINSC
SAY @54
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",286,387,0)~ EXIT
END

IF ~~ THEN BEGIN SC_MINSC_J
SAY @55
IF ~~ DO ~ActionOverride("dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("dynaheir",SetDialogue("%DYNAHEIR_POST%"))
ActionOverride("dynaheir",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("dynaheir",LeaveParty())
ActionOverride("dynaheir",EscapeAreaMove("%FriendlyArmInn_L1%",669,378,3))
SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%FriendlyArmInn_L1%",599,386,12)~ EXIT
END

IF ~~ THEN BEGIN BG_MINSC_J
SAY @56
IF ~~ DO ~ActionOverride("dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("dynaheir",SetDialogue("%DYNAHEIR_POST%"))
ActionOverride("dynaheir",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("dynaheir",LeaveParty())
ActionOverride("dynaheir",EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",320,330,9))
SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",286,387,0)~ EXIT
END
END // END ADD TO MINSC

//SKIE
EXTEND_BOTTOM ~%SKIE_POST%~ 0  //NO ELDOTH IN PARTY
+~%NOT_DANGER_AREAS%~+ @57 + STAYHERE_SAFE_SKIE
+~%ALL_DANGER_AREAS%~+ @57 + STAYHERE_DANGER_SKIE
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_SKIE
++ @2 + SC_SKIE
++ @58 + NEVERLEFT_SKIE
END

EXTEND_BOTTOM ~%SKIE_POST%~ 1  //ELDOTH IN PARTY
+~%NOT_DANGER_AREAS%~+ @57 + STAYHERE_SAFE_SKIE_K
+~%ALL_DANGER_AREAS%~+ @57 + STAYHERE_DANGER_SKIE_K
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_SKIE_K
++ @2 + SC_SKIE_K
++ @58 + NEVERLEFT_SKIE
END

APPEND ~%SKIE_POST%~

IF ~~ THEN BEGIN NEVERLEFT_SKIE
  SAY @59
  IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_SKIE
SAY @60
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_SKIE_K
SAY @61
IF ~~ THEN DO ~ActionOverride("eldoth",ChangeAIScript("",DEFAULT))
ActionOverride("eldoth",SetDialogue("%ELDOTH_POST%"))
ActionOverride("eldoth",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("eldoth",LeaveParty())
SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LEAVE_SKIE
  SAY  @62
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN LEAVE_SKIE_K
  SAY @63 
  IF ~~ THEN DO ~ActionOverride("eldoth",ChangeAIScript("",DEFAULT))
ActionOverride("eldoth",LeaveParty())
ActionOverride("eldoth",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_SKIE
SAY @64 // All of the danger areas.
	++ @10 + LEAVE_SKIE
	++ @11 + NEVERLEFT_SKIE
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_SKIE // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_SKIE // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_SKIE_K
SAY @65  // All of the danger areas.
	++ @10 + LEAVE_SKIE_K
	++ @11 + NEVERLEFT_SKIE
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_SKIE_K // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_SKIE_K // area check BG areas
END

IF ~~ THEN BEGIN SC_SKIE
SAY @66
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%Beregost_FeldepostsInn_L1%",306,472,0)~ EXIT
END

IF ~~ THEN BEGIN BG_SKIE
SAY @67
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",479,874,2)~ EXIT
END

IF ~~ THEN BEGIN SC_SKIE_K
SAY @68
IF ~~ DO ~ActionOverride("eldoth",ChangeAIScript("",DEFAULT))
ActionOverride("eldoth",SetDialogue("%ELDOTH_POST%"))
ActionOverride("eldoth",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("eldoth",LeaveParty())
ActionOverride("eldoth",EscapeAreaMove("%Beregost_FeldepostsInn_L1%",274,501,10))
SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%Beregost_FeldepostsInn_L1%",306,472,0)~ EXIT
END

IF ~~ THEN BEGIN BG_SKIE_K
SAY @69
IF ~~ DO ~ActionOverride("eldoth",ChangeAIScript("",DEFAULT))
ActionOverride("eldoth",SetDialogue("%ELDOTH_POST%"))
ActionOverride("eldoth",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("eldoth",LeaveParty())
ActionOverride("eldoth",EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",414,897,10))
SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",479,874,2)~ EXIT
END
END // END ADD TO SKIE

//ELDOTH
EXTEND_BOTTOM ~%ELDOTH_POST%~ 2  //NO skie IN PARTY
+~%NOT_DANGER_AREAS%~+ @70 + STAYHERE_SAFE_ELDOT
+~%ALL_DANGER_AREAS%~+ @70 + STAYHERE_DANGER_ELDOT
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_ELDOT
++ @2 + SC_ELDOT
++ @71 + NEVERLEFT_ELDOT
END

EXTEND_BOTTOM ~%ELDOTH_POST%~ 3  //skie IN PARTY
+~%NOT_DANGER_AREAS%~+ @70 + STAYHERE_SAFE_ELDOT_J
+~%ALL_DANGER_AREAS%~+ @70 + STAYHERE_DANGER_ELDOT_J
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_ELDOT_J
++ @2 + SC_ELDOT_J
++ @71 + NEVERLEFT_ELDOT
END

APPEND ~%ELDOTH_POST%~

IF ~~ THEN BEGIN NEVERLEFT_ELDOT
  SAY  @72 
  IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_ELDOT
SAY @73
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_ELDOT_J
SAY @74
IF ~~ THEN DO ~ActionOverride("skie",ChangeAIScript("",DEFAULT))
ActionOverride("skie",SetDialogue("%SKIE_POST%"))
ActionOverride("skie",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("skie",LeaveParty())
SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LEAVE_ELDOT
 SAY  @75
 IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN LEAVE_ELDOT_J
 SAY  @76
 IF ~~ THEN DO ~ActionOverride("skie",ChangeAIScript("",DEFAULT))
ActionOverride("skie",LeaveParty())
ActionOverride("skie",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_ELDOT
SAY @77 // All of the danger areas.
	++ @10 + LEAVE_ELDOT
	++ @11 + NEVERLEFT_ELDOT
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_ELDOT // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_ELDOT // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_ELDOT_J
SAY @78  // All of the danger areas.
	++ @10 + LEAVE_ELDOT_J
	++ @11 + NEVERLEFT_ELDOT
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_ELDOT_J // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_ELDOT_J // area check BG areas
END

IF ~~ THEN BEGIN SC_ELDOT
SAY @79
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%Beregost_FeldepostsInn_L1%",274,501,10)~ EXIT
END

IF ~~ THEN BEGIN BG_ELDOT
SAY @80
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",414,897,10)~ EXIT
END

IF ~~ THEN BEGIN SC_ELDOT_J
SAY @81
IF ~~ DO ~ActionOverride("skie",ChangeAIScript("",DEFAULT))
ActionOverride("skie",SetDialogue("%SKIE_POST%"))
ActionOverride("skie",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("skie",LeaveParty())
ActionOverride("skie",EscapeAreaMove("%Beregost_FeldepostsInn_L1%",306,472,0))
SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%Beregost_FeldepostsInn_L1%",274,501,10)~ EXIT
END

IF ~~ THEN BEGIN BG_ELDOT_J
SAY @80
IF ~~ DO ~ActionOverride("skie",ChangeAIScript("",DEFAULT))
ActionOverride("skie",SetDialogue("%SKIE_POST%"))
ActionOverride("skie",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("skie",LeaveParty())
ActionOverride("skie",EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",479,871,2))
SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%EBaldursGate_ElfsongTavern_L2%",414,897,10)~ EXIT
END
END // END ADD TO ELDOTH


//XZAR
EXTEND_BOTTOM ~%XZAR_POST%~ 0  //NO MONTARON IN PARTY
+~%NOT_DANGER_AREAS%~+ @82 + STAYHERE_SAFE_XZAR
+~%ALL_DANGER_AREAS%~+ @82 + STAYHERE_DANGER_XZAR
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_XZAR
++ @2 + SC_XZAR
++ @83 + NEVERLEFT_XZAR
END

EXTEND_BOTTOM ~%XZAR_POST%~ 1  //MONTARON IN PARTY
+~%NOT_DANGER_AREAS%~+ @82 + STAYHERE_SAFE_XZAR_K
+~%ALL_DANGER_AREAS%~+ @82 + STAYHERE_DANGER_XZAR_K
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_XZAR_K
++ @2 + SC_XZAR_K
++ @83 + NEVERLEFT_XZAR
END

APPEND ~%XZAR_POST%~

IF ~~ THEN BEGIN NEVERLEFT_XZAR
  SAY  @84 
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_XZAR
SAY @85
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_XZAR_K
SAY @86
IF ~~ THEN DO ~ActionOverride("montaron",ChangeAIScript("",DEFAULT))
ActionOverride("montaron",SetDialogue("%MONTARON_POST%"))
ActionOverride("montaron",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("montaron",LeaveParty())
SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LEAVE_XZAR
  SAY  @87
  IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN LEAVE_XZAR_K
  SAY  @88 
  IF ~~ THEN DO ~ActionOverride("montaron",ChangeAIScript("",DEFAULT))
ActionOverride("montaron",LeaveParty())
ActionOverride("montaron",EscapeArea())
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_XZAR
SAY @89 // All of the danger areas.
	++ @10 + LEAVE_XZAR
	++ @11 + NEVERLEFT_XZAR
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_XZAR // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_XZAR // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_XZAR_K
SAY @90  // All of the danger areas.
	++ @10 + LEAVE_XZAR_K
	++ @11 + NEVERLEFT_XZAR
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_XZAR_K // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_XZAR_K // area check BG areas
END

IF ~~ THEN BEGIN SC_XZAR
SAY @91
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%Nashkel_BelchingDragonTavern%",410,278,11)~ EXIT
END

IF ~~ THEN BEGIN BG_XZAR
SAY @92
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) 
EscapeAreaMove("%BaldursGate_DocksLowLantern_D1%",946,657,13)~ EXIT
END

IF ~~ THEN BEGIN SC_XZAR_K
SAY @93
IF ~~ DO ~ActionOverride("montaron",ChangeAIScript("",DEFAULT))
ActionOverride("montaron",SetDialogue("%MONTARON_POST%"))
ActionOverride("montaron",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("montaron",LeaveParty())
ActionOverride("montaron",EscapeAreaMove("%Nashkel_BelchingDragonTavern%",428,247,0))
SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%Nashkel_BelchingDragonTavern%",410,278,11)~ EXIT
END

IF ~~ THEN BEGIN BG_XZAR_K
SAY @94
IF ~~ DO ~ActionOverride("montaron",ChangeAIScript("",DEFAULT))
ActionOverride("montaron",SetDialogue("%MONTARON_POST%"))
ActionOverride("montaron",SetGlobal("%KICKED_OUT%","LOCALS",1))
ActionOverride("montaron",LeaveParty())
ActionOverride("montaron",EscapeAreaMove("%BaldursGate_DocksLowLantern_D1%",870,668,9))
SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%BaldursGate_DocksLowLantern_D1%",946,657,13)~ EXIT
END
END // END ADD TO XZAR

//MONTARON
EXTEND_BOTTOM ~%MONTARON_POST%~ 0  //NO xzar IN PARTY
+~%NOT_DANGER_AREAS%~+ @95 + STAYHERE_SAFE_MONTA
+~%ALL_DANGER_AREAS%~+ @95 + STAYHERE_DANGER_MONTA
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_MONTA
++ @2 + SC_MONTA
++ @96 + NEVERLEFT_MONTA
END

EXTEND_BOTTOM ~%MONTARON_POST%~ 1  //xzar IN PARTY
+~%NOT_DANGER_AREAS%~+ @95 + STAYHERE_SAFE_MONTA_J
+~%ALL_DANGER_AREAS%~+ @95 + STAYHERE_DANGER_MONTA_J
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_MONTA_J
++ @2 + SC_MONTA_J
++ @96 + NEVERLEFT_MONTA
END

APPEND ~%MONTARON_POST%~

IF ~~ THEN BEGIN NEVERLEFT_MONTA
 SAY @97 
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_MONTA
SAY @98
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_MONTA_J
SAY @99
IF ~~ THEN DO ~ActionOverride("xzar",ChangeAIScript("",DEFAULT)) ActionOverride("xzar",SetDialogue("%XZAR_POST%")) ActionOverride("xzar",SetGlobal("%KICKED_OUT%","LOCALS",1)) ActionOverride("xzar",LeaveParty()) SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LEAVE_MONTA
 SAY @100
 IF ~~ THEN DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN LEAVE_MONTA_J
 SAY @101 
 IF ~~ THEN DO ~ActionOverride("xzar",ChangeAIScript("",DEFAULT)) ActionOverride("xzar",LeaveParty()) ActionOverride("xzar",EscapeArea()) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_MONTA
SAY @102 // All of the danger areas.
	++ @10 + LEAVE_MONTA
	++ @11 + NEVERLEFT_MONTA
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_MONTA // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_MONTA // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_MONTA_J
SAY @103  // All of the danger areas.
	++ @10 + LEAVE_MONTA_J
	++ @11 + NEVERLEFT_MONTA
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_MONTA_J // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_MONTA_J // area check BG areas
END

IF ~~ THEN BEGIN SC_MONTA
SAY @104
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%Nashkel_BelchingDragonTavern%",428,247,0)~ EXIT
END

IF ~~ THEN BEGIN BG_MONTA
SAY @105
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%BaldursGate_DocksLowLantern_D1%",870,668,9)~ EXIT
END

IF ~~ THEN BEGIN SC_MONTA_J
SAY @106
IF ~~ DO ~ActionOverride("xzar",ChangeAIScript("",DEFAULT)) ActionOverride("xzar",SetDialogue("%XZAR_POST%")) ActionOverride("xzar",SetGlobal("%KICKED_OUT%","LOCALS",1)) ActionOverride("xzar",LeaveParty()) ActionOverride("xzar",EscapeAreaMove("%Nashkel_BelchingDragonTavern%",410,278,11)) SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%Nashkel_BelchingDragonTavern%",428,247,0)~ EXIT
END

IF ~~ THEN BEGIN BG_MONTA_J
SAY @107
IF ~~ DO ~ActionOverride("xzar",ChangeAIScript("",DEFAULT)) ActionOverride("xzar",SetDialogue("%XZAR_POST%")) ActionOverride("xzar",SetGlobal("%KICKED_OUT%","LOCALS",1)) ActionOverride("xzar",LeaveParty()) ActionOverride("xzar",EscapeAreaMove("%BaldursGate_DocksLowLantern_D1%",946,657,13)) SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%BaldursGate_DocksLowLantern_D1%",870,668,9)~ EXIT
END
END // END ADD TO MONTARON

//EDWIN
EXTEND_BOTTOM ~%EDWIN_POST%~ 3
+~%NOT_DANGER_AREAS%~+ @108 + STAYHERE_SAFE_EDWIN
+~%ALL_DANGER_AREAS%~+ @108 + STAYHERE_DANGER_EDWIN
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_EDWIN
++ @2 + SC_EDWIN
++ @109 + NEVERLEFT_EDWIN
END


APPEND ~%EDWIN_POST%~

IF ~~ THEN BEGIN NEVERLEFT_EDWIN
 SAY  @110 
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_EDWIN
 SAY @111
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_EDWIN
 SAY @112 
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_EDWIN
SAY @113 // All of the danger areas.
	++ @10 + LEAVE_EDWIN
	++ @11 + NEVERLEFT_EDWIN
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_EDWIN // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_EDWIN // area check BG areas
END

IF ~~ THEN BEGIN SC_EDWIN
SAY @114
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%Nashkel_BelchingDragonTavern%",144,289,0)~ EXIT
END

IF ~~ THEN BEGIN BG_EDWIN
SAY @115
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%BaldursGate_DocksLowLantern_D1%",564,474,8)~ EXIT
END

END // END ADD TO EDWIN

//SHAR-TEEL

EXTEND_BOTTOM ~%SHARTEEL_POST%~ 0  // Male CHARNAME
+~%NOT_DANGER_AREAS%~+ @116 + STAYHERE_SAFE_SHART
+~%ALL_DANGER_AREAS%~+ @116 + STAYHERE_DANGER_SHART
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_SHART
++ @2 + SC_SHART
++ @117 + NEVERLEFT_SHART
END

EXTEND_BOTTOM ~%SHARTEEL_POST%~ 5  // Female CHARNAME
+~%NOT_DANGER_AREAS%~+ @116 + STAYHERE_SAFE_SHART
+~%ALL_DANGER_AREAS%~+ @116 + STAYHERE_DANGER_SHART
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_SHART
++ @2 + SC_SHART
++ @117 + NEVERLEFT_SHART
END


APPEND ~%SHARTEEL_POST%~

IF ~~ THEN BEGIN NEVERLEFT_SHART
 SAY @118
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_SHART
 SAY @119
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_SHART
 SAY @120 
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_SHART
SAY @121 // All of the danger areas.
	++ @10 + LEAVE_SHART
	++ @11 + NEVERLEFT_SHART
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_SHART // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_SHART // area check BG areas
END

IF ~~ THEN BEGIN SC_SHART
SAY @122
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%Nashkel_BelchingDragonTavern%",207,260,9)~ EXIT
END

IF ~~ THEN BEGIN BG_SHART
SAY @123
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%NEBaldursGate_BlushingMermaid_L1%",603,487,0)~ EXIT
END

END // END ADD TO _SHART

//TIAX

EXTEND_BOTTOM ~%TIAX_POST%~ 0
+~%NOT_DANGER_AREAS%~+ @124 + STAYHERE_SAFE_TIAX
+~%ALL_DANGER_AREAS%~+ @124 + STAYHERE_DANGER_TIAX
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_TIAX
++ @2 + SC_TIAX
++ @125 + NEVERLEFT_TIAX
END


APPEND ~%TIAX_POST%~

IF ~~ THEN BEGIN NEVERLEFT_TIAX
 SAY  @126 
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_TIAX
 SAY @127
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_TIAX
 SAY @128 
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_TIAX
SAY @129 // All of the danger areas.
	++ @10 + LEAVE_TIAX
	++ @11 + NEVERLEFT_TIAX
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_TIAX // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_TIAX // area check BG areas
END

IF ~~ THEN BEGIN SC_TIAX
SAY @130
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%Nashkel_BelchingDragonTavern%",636,359,2)~ EXIT
END

IF ~~ THEN BEGIN BG_TIAX
SAY @131
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%NEBaldursGate_BlushingMermaid_L1%",869,699,9)~ EXIT
END

END // END ADD TO TIAX

//VICONIA

EXTEND_BOTTOM ~%VICONIA_POST%~ 0
+~%NOT_DANGER_AREAS%~+ @132 + STAYHERE_SAFE_VICON
+~%ALL_DANGER_AREAS%~+ @132 + STAYHERE_DANGER_VICON
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_VICON
++ @2 + SC_VICON
++ @133 + NEVERLEFT_VICON
END


APPEND ~%VICONIA_POST%~

IF ~~ THEN BEGIN NEVERLEFT_VICON
 SAY @134
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_VICON
 SAY @135
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_VICON
 SAY @136
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_VICON
SAY @137 // All of the danger areas.
	++ @10 + LEAVE_VICON
	++ @11 + NEVERLEFT_VICON
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_VICON // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_VICON // area check BG areas
END

IF ~~ THEN BEGIN SC_VICON
SAY @138
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%SouthBeregostRoad_Cave%",347,178,14)~ EXIT
END

IF ~~ THEN BEGIN BG_VICON
SAY @139
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%NEBaldursGate_BlushingMermaid_L1%",1033,908,4)~ EXIT
END

END // END ADD TO VICONIA

//KAGAIN

EXTEND_BOTTOM ~%KAGAIN_POST%~ 1
+~%NOT_DANGER_AREAS%~+ @140 + STAYHERE_SAFE_KAGAI
+~%ALL_DANGER_AREAS%~+ @140 + STAYHERE_DANGER_KAGAI
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_KAGAI
++ @2 + SC_KAGAI
++ @141 + NEVERLEFT_KAGAI
END


APPEND ~%KAGAIN_POST%~

IF ~~ THEN BEGIN NEVERLEFT_KAGAI
 SAY @142
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_KAGAI
 SAY @143
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_KAGAI
 SAY @144
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_KAGAI
SAY @145 // All of the danger areas.
	++ @10 + LEAVE_KAGAI
	++ @11 + NEVERLEFT_KAGAI
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_KAGAI // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_KAGAI // area check BG areas
END

IF ~~ THEN BEGIN SC_KAGAI
SAY @146
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%Beregost_KagainsStore%",317,271,0)~ EXIT
END

IF ~~ THEN BEGIN BG_KAGAI
SAY @147
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%NEBaldursGate_BlushingMermaid_L1%",621,658,7)~ EXIT
END

END // END ADD TO KAGAIN

//AJANTIS

EXTEND_BOTTOM ~%AJANTIS_POST%~ 4
+~%NOT_DANGER_AREAS%~+ @148 + STAYHERE_SAFE_AJANT
+~%ALL_DANGER_AREAS%~+ @148 + STAYHERE_DANGER_AJANT
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_AJANT
++ @2 + SC_AJANT
++ @149 + NEVERLEFT_AJANT
END


APPEND ~%AJANTIS_POST%~

IF ~~ THEN BEGIN NEVERLEFT_AJANT
 SAY @150
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_AJANT
 SAY @151
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_AJANT
 SAY @152
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_AJANT
SAY @153 // All of the danger areas.
	++ @10 + LEAVE_AJANT
	++ @11 + NEVERLEFT_AJANT
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_AJANT // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_AJANT // area check BG areas
END

IF ~~ THEN BEGIN SC_AJANT
SAY @154
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%FriendlyArmInn_L1%",582,534,2)~ EXIT
END

IF ~~ THEN BEGIN BG_AJANT
SAY @155
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",612,450,0)~ EXIT
END

END // END ADD TO AJANTIS

//QUAYLE

EXTEND_BOTTOM ~%QUAYLE_POST%~ 0
+~%NOT_DANGER_AREAS%~+ @156 + STAYHERE_SAFE_QUAYL
+~%ALL_DANGER_AREAS%~+ @156 + STAYHERE_DANGER_QUAYL
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_QUAYL
++ @2 + SC_QUAYL
++ @157 + NEVERLEFT_QUAYL
END


APPEND ~%QUAYLE_POST%~

IF ~~ THEN BEGIN NEVERLEFT_QUAYL
 SAY @158
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_QUAYL
 SAY @159
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_QUAYL
 SAY @160
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_QUAYL
SAY @161 // All of the danger areas.
	++ @10 + LEAVE_QUAYL
	++ @11 + NEVERLEFT_QUAYL
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_QUAYL // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_QUAYL // area check BG areas
END

IF ~~ THEN BEGIN SC_QUAYL
SAY @162
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%FriendlyArmInn_L2%",890,693,4)~ EXIT
END

IF ~~ THEN BEGIN BG_QUAYL
SAY @163
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",372,797,0)~ EXIT
END

END // END ADD TO QUAYLE

//GARRICK

EXTEND_BOTTOM ~%GARRICK_POST%~ 0
+~%NOT_DANGER_AREAS%~+ @164 + STAYHERE_SAFE_GARRI
+~%ALL_DANGER_AREAS%~+ @164 + STAYHERE_DANGER_GARRI
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_GARRI
++ @2 + SC_GARRI
++ @165 + NEVERLEFT_GARRI
END


APPEND ~%GARRICK_POST%~

IF ~~ THEN BEGIN NEVERLEFT_GARRI
 SAY @166
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_GARRI
 SAY @167
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_GARRI
 SAY @168
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_GARRI
SAY @169 // All of the danger areas.
	++ @10 + LEAVE_GARRI
	++ @11 + NEVERLEFT_GARRI
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_GARRI // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_GARRI // area check BG areas
END

IF ~~ THEN BEGIN SC_GARRI
SAY @170
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%FriendlyArmInn_L1%",519,574,14)~ EXIT
END

IF ~~ THEN BEGIN BG_GARRI
SAY @171
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) TakePartyGold(25) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",580,505,0)~ EXIT
END

END // END ADD TO GARRICK

//IMOEN

EXTEND_BOTTOM ~%IMOEN_POST%~ 0
+~%NOT_DANGER_AREAS%~+ @172 + STAYHERE_SAFE_IMOEN
+~%ALL_DANGER_AREAS%~+ @172 + STAYHERE_DANGER_IMOEN
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_IMOEN
++ @2 + SC_IMOEN
++ @173 + NEVERLEFT_IMOEN
END


APPEND ~%IMOEN_POST%~

IF ~~ THEN BEGIN NEVERLEFT_IMOEN
 SAY @174
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_IMOEN
 SAY @175
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_IMOEN
 SAY @176
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_IMOEN
SAY @177 // All of the danger areas.
	++ @10 + LEAVE_IMOEN
	++ @11 + NEVERLEFT_IMOEN
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_IMOEN // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_IMOEN // area check BG areas
END

IF ~~ THEN BEGIN SC_IMOEN
SAY @178
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%FriendlyArmInn_L2%",894,659,0)~ EXIT
END

IF ~~ THEN BEGIN BG_IMOEN
SAY @179
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",630,270,12)~ EXIT
END

END


// END ADD TO IMOEN

//XAN

EXTEND_BOTTOM ~%XAN_POST%~ 0
+~%NOT_DANGER_AREAS%~+ @180 + STAYHERE_SAFE_XAN
+~%ALL_DANGER_AREAS%~+ @180 + STAYHERE_DANGER_XAN
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_XAN
++ @2 + SC_XAN
++ @181 + NEVERLEFT_XAN
END


APPEND ~%XAN_POST%~

IF ~~ THEN BEGIN NEVERLEFT_XAN
 SAY @182
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_XAN
 SAY @183
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_XAN
 SAY @184
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_XAN
SAY @185 // All of the danger areas.
	++ @10 + LEAVE_XAN
	++ @11 + NEVERLEFT_XAN
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_XAN // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_XAN // area check BG areas
END

IF ~~ THEN BEGIN SC_XAN
SAY @186
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%FriendlyArmInn_L2%",790,660,13)~ EXIT
END

IF ~~ THEN BEGIN BG_XAN
SAY @187
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",403,864,12)~ EXIT
END

END // END ADD TO XAN


//BRANWEN

EXTEND_BOTTOM ~%BRANWEN_POST%~ 4
+~%NOT_DANGER_AREAS%~+ @188 + STAYHERE_SAFE_BRANW
+~%ALL_DANGER_AREAS%~+ @188 + STAYHERE_DANGER_BRANW
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_BRANW
++ @2 + SC_BRANW
++ @189 + NEVERLEFT_BRANW
END


APPEND ~%BRANWEN_POST%~

IF ~~ THEN BEGIN NEVERLEFT_BRANW
 SAY @190
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_BRANW
 SAY @191
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_BRANW
 SAY @192
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_BRANW
SAY @193 // All of the danger areas.
	++ @10 + LEAVE_BRANW
	++ @11 + NEVERLEFT_BRANW
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_BRANW // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_BRANW // area check BG areas
END

IF ~~ THEN BEGIN SC_BRANW
SAY @194
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%FriendlyArmInn_L1%",480,617,14)~ EXIT
END

IF ~~ THEN BEGIN BG_BRANW
SAY @195
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",894,568,0)~ EXIT
END

END // END ADD TO BRANWEN

//ALORA

EXTEND_BOTTOM ~%ALORA_POST%~ 4
+~%NOT_DANGER_AREAS%~+ @196 + STAYHERE_SAFE_ALORA
+~%ALL_DANGER_AREAS%~+ @196 + STAYHERE_DANGER_ALORA
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_ALORA
++ @2 + SC_ALORA
++ @197 + NEVERLEFT_ALORA
END


APPEND ~%ALORA_POST%~

IF ~~ THEN BEGIN NEVERLEFT_ALORA
 SAY @198
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_ALORA
 SAY @199
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_ALORA
 SAY @200
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_ALORA
SAY @201 // All of the danger areas.
	++ @10 + LEAVE_ALORA
	++ @11 + NEVERLEFT_ALORA
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_ALORA // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_ALORA // area check BG areas
END

IF ~~ THEN BEGIN SC_ALORA
SAY @202
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%FriendlyArmInn_L1%",941,525,6)~ EXIT
END

IF ~~ THEN BEGIN BG_ALORA
SAY @203
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",373,403,4)~ EXIT
END

END // END ADD TO ALORA

//YESLICK

EXTEND_BOTTOM ~%YESLICK_POST%~ 2
+~%NOT_DANGER_AREAS%~+ @204 + STAYHERE_SAFE_YESLI
+~%ALL_DANGER_AREAS%~+ @204 + STAYHERE_DANGER_YESLI
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_YESLI
++ @2 + SC_YESLI
++ @205 + NEVERLEFT_YESLI
END


APPEND ~%YESLICK_POST%~

IF ~~ THEN BEGIN NEVERLEFT_YESLI
 SAY @206
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_YESLI
 SAY @207
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_YESLI
 SAY @208
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_YESLI
SAY @209 // All of the danger areas.
	++ @10 + LEAVE_YESLI
	++ @11 + NEVERLEFT_YESLI
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_YESLI // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_YESLI // area check BG areas
END

IF ~~ THEN BEGIN SC_YESLI
SAY @210
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%FriendlyArmInn_L2%",1142,422,13)~ EXIT
END

IF ~~ THEN BEGIN BG_YESLI
SAY @211
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",715,424,0)~ EXIT
END

END // END ADD TO YESLICK

//FALDORN

EXTEND_BOTTOM ~%FALDORN_POST%~ 4
+~%NOT_DANGER_AREAS%~+ @212 + STAYHERE_SAFE_FALDO
+~%ALL_DANGER_AREAS%~+ @212 + STAYHERE_DANGER_FALDO
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_FALDO
++ @2 + SC_FALDO
++ @213 + NEVERLEFT_FALDO
END


APPEND ~%FALDORN_POST%~

IF ~~ THEN BEGIN NEVERLEFT_FALDO
 SAY @214
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_FALDO
 SAY @215
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_FALDO
 SAY @216
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_FALDO
SAY @217 // All of the danger areas.
	++ @10 + LEAVE_FALDO
	++ @11 + NEVERLEFT_FALDO
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_FALDO // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_FALDO // area check BG areas
END

IF ~~ THEN BEGIN SC_FALDO
SAY @218
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%CloakwoodDruids%",775,2916,0)~ EXIT
END

IF ~~ THEN BEGIN BG_FALDO
SAY @219
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%CloakwoodDruids%",775,2916,0)~ EXIT
END

END // END ADD TO FALDORN

//KIVAN

EXTEND_BOTTOM ~%KIVAN_POST%~ 1
+~%NOT_DANGER_AREAS%~+ @220 + STAYHERE_SAFE_KIVAN
+~%ALL_DANGER_AREAS%~+ @220 + STAYHERE_DANGER_KIVAN
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_KIVAN
++ @2 + SC_KIVAN
++ @221 + NEVERLEFT_KIVAN
END


APPEND ~%KIVAN_POST%~

IF ~~ THEN BEGIN NEVERLEFT_KIVAN
 SAY @222
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_KIVAN
 SAY @223
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_KIVAN
 SAY @224
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_KIVAN
SAY @225 // All of the danger areas.
	++ @10 + LEAVE_KIVAN
	++ @11 + NEVERLEFT_KIVAN
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_KIVAN // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_KIVAN // area check BG areas
END

IF ~~ THEN BEGIN SC_KIVAN
SAY @226
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%FriendlyArmInn_L2%",917,501,0)~ EXIT
END

IF ~~ THEN BEGIN BG_KIVAN
SAY @227
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)
EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",872,332,12)~ EXIT
END

END // END ADD TO KIVAN

//CORAN

EXTEND_BOTTOM ~%CORAN_POST%~ 3
+~%NOT_DANGER_AREAS%~+ @228 + STAYHERE_SAFE_CORAN
+~%ALL_DANGER_AREAS%~+ @228 + STAYHERE_DANGER_CORAN
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_CORAN
++ @2 + SC_CORAN
++ @229 + NEVERLEFT_CORAN
END


APPEND ~%CORAN_POST%~

IF ~~ THEN BEGIN NEVERLEFT_CORAN
 SAY @230
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_CORAN
 SAY @231
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_CORAN
 SAY @232
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_CORAN
SAY @233 // All of the danger areas.
	++ @10 + LEAVE_CORAN
	++ @11 + NEVERLEFT_CORAN
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_CORAN // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_CORAN // area check BG areas
END

IF ~~ THEN BEGIN SC_CORAN
SAY @234
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%Nashkel_BelchingDragonTavern%",334,222,14)~ EXIT
END

IF ~~ THEN BEGIN BG_CORAN
SAY @235
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",494,655,12)~ EXIT
END

END // END ADD TO CORAN

/* SAFANA */

EXTEND_BOTTOM ~%SAFANA_POST%~ 0
+ ~%NOT_DANGER_AREAS%~+ @236 + STAYHERE_SAFE_SAFAN
+ ~%ALL_DANGER_AREAS%~+ @236 + STAYHERE_DANGER_SAFAN
+ ~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_SAFAN
++ @2 + SC_SAFAN
++ @237 + NEVERLEFT_SAFAN
END

APPEND ~%SAFANA_POST%~

IF ~~ THEN BEGIN NEVERLEFT_SAFAN
 SAY @238
 IF ~~ THEN DO ~SetGlobal("%KICKED_OUT%","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_SAFAN
 SAY @239
 IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LEAVE_SAFAN
 SAY @240
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_SAFAN
SAY @241 // All of the danger areas.
	++ @10 + LEAVE_SAFAN
	++ @11 + NEVERLEFT_SAFAN
	+ ~%SC_DANGER_AREAS%~ + @12 + SC_SAFAN // area check SC areas.
    + ~%BG_DANGER_AREAS%~ + @12 + BG_SAFAN // area check BG areas
END

IF ~~ THEN BEGIN SC_SAFAN
SAY @242
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%Nashkel_BelchingDragonTavern%",400,230,5)~ EXIT
END

IF ~~ THEN BEGIN BG_SAFAN
SAY @243
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) EscapeAreaMove("%EBaldursGate_ElfsongTavern_L1%",522,640,4)~ EXIT
END

END // END ADD TO SAFANA
