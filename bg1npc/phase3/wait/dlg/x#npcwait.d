/* Asking npc to wait for you */

ADD_TRANS_TRIGGER _JAHEIP 4 ~False()~
ADD_TRANS_TRIGGER _JAHEIP 5 ~False()~
ADD_TRANS_TRIGGER _KHALIP 4 ~False()~
ADD_TRANS_TRIGGER _KHALIP 5 ~False()~

ADD_TRANS_TRIGGER _DYNAHP 4 ~False()~
ADD_TRANS_TRIGGER _DYNAHP 5 ~False()~
ADD_TRANS_TRIGGER _MINSCP 4 ~False()~
ADD_TRANS_TRIGGER _MINSCP 5 ~False()~

ADD_TRANS_TRIGGER _SKIEP 4 ~False()~
ADD_TRANS_TRIGGER _SKIEP 5 ~False()~
ADD_TRANS_TRIGGER _ELDOTP 4 ~False()~
ADD_TRANS_TRIGGER _ELDOTP 5 ~False()~

ADD_TRANS_TRIGGER _XZARP 4 ~False()~
ADD_TRANS_TRIGGER _XZARP 5 ~False()~
ADD_TRANS_TRIGGER _MONTAP 4 ~False()~
ADD_TRANS_TRIGGER _MONTAP 5 ~False()~

ADD_TRANS_TRIGGER _EDWINP 4 ~False()~
ADD_TRANS_TRIGGER _SHARTP 4 ~False()~
ADD_TRANS_TRIGGER _TIAXP 4 ~False()~
ADD_TRANS_TRIGGER _VICONP 4 ~False()~
ADD_TRANS_TRIGGER _KAGAIP 4 ~False()~
ADD_TRANS_TRIGGER _AJANTP 4 ~False()~
ADD_TRANS_TRIGGER _QUAYLP 4 ~False()~
ADD_TRANS_TRIGGER _GARRIP 4 ~False()~
ADD_TRANS_TRIGGER _IMOENP 4 ~False()~
ADD_TRANS_TRIGGER _XANP 4 ~False()~
ADD_TRANS_TRIGGER _BRANWP 4 ~False()~
ADD_TRANS_TRIGGER _ALORAP 4 ~False()~
ADD_TRANS_TRIGGER _YESLIP 4 ~False()~
ADD_TRANS_TRIGGER _FALDOP 4 ~False()~
ADD_TRANS_TRIGGER _KIVANP 4 ~False()~
ADD_TRANS_TRIGGER _CORANP 4 ~False()~
ADD_TRANS_TRIGGER _SAFANP 4 ~False()~

//JAHEIRA
EXTEND_BOTTOM _JAHEIP 4  //NO KHALID IN PARTY
+ ~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @0 + STAYHERE_SAFE_JAHEI
+ ~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146")
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @0 + STAYHERE_DANGER_JAHEI
+ ~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_JAHEI
++ @2 + SC_JAHEI
++ @3 + NEVERLEFT_JAHEI
END

EXTEND_BOTTOM _JAHEIP 5  //KHALID IN PARTY
+ ~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @0 + STAYHERE_SAFE_JAHEI_K
+ ~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @0 + STAYHERE_DANGER_JAHEI_K
+ ~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_JAHEI_K
++ @2 + SC_JAHEI_K
++ @3 + NEVERLEFT_JAHEI
END

APPEND _JAHEIP

IF ~~ THEN BEGIN NEVERLEFT_JAHEI
  SAY @4 
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_JAHEI
SAY @5
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_JAHEI_K
SAY @6
IF ~~ THEN DO ~ActionOverride("khalid",ChangeAIScript("",DEFAULT))
ActionOverride("khalid",SetDialogue("_KHALIP"))
ActionOverride("khalid",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("khalid",LeaveParty())
SetGlobal("KickedOut","LOCALS",1)~ EXIT
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
+ ~OR(59) AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404") AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201") AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802") AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502") AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510") AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003") AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503") AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_JAHEI // area check SC areas.
+ ~OR(25) AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~ + @12 + BG_JAHEI // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_JAHEI_K
SAY @13  // All of the danger areas.
	++ @10 + LEAVE_JAHEI_K
	++ @11 + NEVERLEFT_JAHEI
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_JAHEI_K // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_JAHEI_K // area check BG areas
END

IF ~~ THEN BEGIN SC_JAHEI
SAY @14
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW2301",256,618,13)~ EXIT
END

IF ~~ THEN BEGIN BG_JAHEI
SAY @15
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW0706",463,449,14)~ EXIT
END

IF ~~ THEN BEGIN SC_JAHEI_K
SAY @16
IF ~~ DO ~ActionOverride("khalid",ChangeAIScript("",DEFAULT))
ActionOverride("khalid",SetDialogue("_KHALIP"))
ActionOverride("khalid",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("khalid",LeaveParty())
ActionOverride("khalid",EscapeAreaMove("FW2301",277,670,9))
SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW2301",256,618,13)~ EXIT
END

IF ~~ THEN BEGIN BG_JAHEI_K
SAY @17
IF ~~ DO ~ActionOverride("khalid",ChangeAIScript("",DEFAULT))
ActionOverride("khalid",SetDialogue("_KHALIP"))
ActionOverride("khalid",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("khalid",LeaveParty())
ActionOverride("khalid",EscapeAreaMove("FW0706",507,415,0))
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW0706",463,449,14)~ EXIT
END
END // END ADD TO JAHEIRA

//KHALID
EXTEND_BOTTOM _KHALIP 4  //NO jaheira IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @18 + STAYHERE_SAFE_KHALI
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @18 + STAYHERE_DANGER_KHALI
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_KHALI
++ @2 + SC_KHALI
++ @19 + NEVERLEFT_KHALI
END

EXTEND_BOTTOM _KHALIP 5  //jaheira IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @18 + STAYHERE_SAFE_KHALI_J
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @18 + STAYHERE_DANGER_KHALI_J
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_KHALI_J
++ @2 + SC_KHALI_J
++ @19 + NEVERLEFT_KHALI
END

APPEND _KHALIP

IF ~~ THEN BEGIN NEVERLEFT_KHALI
  SAY @20 
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_KHALI
SAY @21
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_KHALI_J
SAY @22
IF ~~ THEN DO ~ActionOverride("jaheira",ChangeAIScript("",DEFAULT))
ActionOverride("jaheira",SetDialogue("_JAHEIP"))
ActionOverride("jaheira",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("jaheira",LeaveParty())
SetGlobal("KickedOut","LOCALS",1)~ EXIT
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
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_KHALI // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_KHALI // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_KHALI_J
SAY @26  // All of the danger areas.
	++ @10 + LEAVE_KHALI_J
	++ @11 + NEVERLEFT_KHALI
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_KHALI_J // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_KHALI_J // area check BG areas
END

IF ~~ THEN BEGIN SC_KHALI
  SAY @27
  IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW2301",277,670,9)~ EXIT
END

IF ~~ THEN BEGIN BG_KHALI
  SAY @28
  IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0706",463,449,14)~ EXIT
END

IF ~~ THEN BEGIN SC_KHALI_J
SAY @29
IF ~~ DO ~ActionOverride("jaheira",ChangeAIScript("",DEFAULT))
ActionOverride("jaheira",SetDialogue("_JAHEIP"))
ActionOverride("jaheira",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("jaheira",LeaveParty())
ActionOverride("jaheira",EscapeAreaMove("FW2301",256,618,13))
SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW2301",277,670,9)~ EXIT
END

IF ~~ THEN BEGIN BG_KHALI_J
SAY @30
IF ~~ DO ~ActionOverride("jaheira",ChangeAIScript("",DEFAULT))
ActionOverride("jaheira",SetDialogue("_JAHEIP"))
ActionOverride("jaheira",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("jaheira",LeaveParty())
ActionOverride("jaheira",EscapeAreaMove("FW0706",507,415,0))
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW0706",463,449,14)~ EXIT
END
END // END ADD TO KHALID


//DYNAHEIR
EXTEND_BOTTOM _DYNAHP 4  //NO MINSC IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @31 + STAYHERE_SAFE_DYNAH
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146")
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~ + @31 + STAYHERE_DANGER_DYNAH
+ ~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_DYNAH
++ @2 + SC_DYNAH
++ @32 + NEVERLEFT_DYNAH
IF ~GlobalGT("X#DYQUImpAttack","GLOBAL",0)~ THEN EXIT
IF ~Global("X#WinskiTakeDyna","GLOBAL",1)~ THEN EXIT
END

EXTEND_BOTTOM _DYNAHP 5  //MINSC IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @31 + STAYHERE_SAFE_DYNAH_K
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @31 + STAYHERE_DANGER_DYNAH_K
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_DYNAH_K
++ @2 + SC_DYNAH_K
++ @32 + NEVERLEFT_DYNAH
IF ~GlobalGT("X#DYQUImpAttack","GLOBAL",0)~ THEN EXIT
IF ~Global("X#WinskiTakeDyna","GLOBAL",1)~ THEN EXIT
END

APPEND _DYNAHP

IF ~~ THEN BEGIN NEVERLEFT_DYNAH
 SAY @33 
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_DYNAH
SAY @34
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_DYNAH_K
SAY @35
IF ~~ THEN DO ~ActionOverride("minsc",ChangeAIScript("",DEFAULT))
ActionOverride("minsc",SetDialogue("_MINSCP"))
ActionOverride("minsc",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("minsc",LeaveParty())
SetGlobal("KickedOut","LOCALS",1)~ EXIT
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
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_DYNAH // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_DYNAH // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_DYNAH_K
SAY @39  // All of the danger areas.
	++ @10 + LEAVE_DYNAH_K
	++ @11 + NEVERLEFT_DYNAH
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_DYNAH_K // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_DYNAH_K // area check BG areas
END

IF ~~ THEN BEGIN SC_DYNAH
SAY @40
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW2301",669,378,3)~ EXIT
END

IF ~~ THEN BEGIN BG_DYNAH
SAY @41
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW0706",320,330,9)~ EXIT
END

IF ~~ THEN BEGIN SC_DYNAH_K
SAY @42
IF ~~ DO ~ActionOverride("minsc",ChangeAIScript("",DEFAULT))
ActionOverride("minsc",SetDialogue("_MINSCP"))
ActionOverride("minsc",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("minsc",LeaveParty())
ActionOverride("minsc",EscapeAreaMove("FW2301",599,386,12))
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW2301",669,378,3)~ EXIT
END

IF ~~ THEN BEGIN BG_DYNAH_K
SAY @43
IF ~~ DO ~ActionOverride("minsc",ChangeAIScript("",DEFAULT))
ActionOverride("minsc",SetDialogue("_MINSCP"))
ActionOverride("minsc",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("minsc",LeaveParty())
ActionOverride("minsc",EscapeAreaMove("FW0706",286,387,0))
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW0706",320,330,9)~ EXIT
END
END // END ADD TO DYNAHEIR

//MINSC
EXTEND_BOTTOM _MINSCP 4  //NO dynaheir IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @44 + STAYHERE_SAFE_MINSC
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @44 + STAYHERE_DANGER_MINSC
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_MINSC
++ @2 + SC_MINSC
++ @45 + NEVERLEFT_MINSC
IF ~GlobalGT("X#DYQUImpAttack","GLOBAL",0)~ THEN EXIT
IF ~Global("X#WinskiTakeDyna","GLOBAL",1)~ THEN EXIT
END

EXTEND_BOTTOM _MINSCP 5  //dynaheir IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @44 + STAYHERE_SAFE_MINSC_J
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @44 + STAYHERE_DANGER_MINSC_J
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_MINSC_J
++ @2 + SC_MINSC_J
++ @45 + NEVERLEFT_MINSC
IF ~GlobalGT("X#DYQUImpAttack","GLOBAL",0)~ THEN EXIT
IF ~Global("X#WinskiTakeDyna","GLOBAL",1)~ THEN EXIT
END

APPEND _MINSCP

IF ~~ THEN BEGIN NEVERLEFT_MINSC
 SAY @46
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_MINSC
SAY @47
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_MINSC_J
SAY @48
IF ~~ THEN DO ~ActionOverride("dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("dynaheir",SetDialogue("_DYNAHP"))
ActionOverride("dynaheir",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("dynaheir",LeaveParty())
SetGlobal("KickedOut","LOCALS",1)~ EXIT
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
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_MINSC // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_MINSC // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_MINSC_J
SAY @52  // All of the danger areas.
	++ @10 + LEAVE_MINSC_J
	++ @11 + NEVERLEFT_MINSC
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_MINSC_J // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_MINSC_J // area check BG areas
END

IF ~~ THEN BEGIN SC_MINSC
SAY @53
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW2301",599,386,12)~ EXIT
END

IF ~~ THEN BEGIN BG_MINSC
SAY @54
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW0706",286,387,0)~ EXIT
END

IF ~~ THEN BEGIN SC_MINSC_J
SAY @55
IF ~~ DO ~ActionOverride("dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("dynaheir",SetDialogue("_DYNAHP"))
ActionOverride("dynaheir",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("dynaheir",LeaveParty())
ActionOverride("dynaheir",EscapeAreaMove("FW2301",669,378,3))
SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW2301",599,386,12)~ EXIT
END

IF ~~ THEN BEGIN BG_MINSC_J
SAY @56
IF ~~ DO ~ActionOverride("dynaheir",ChangeAIScript("",DEFAULT))
ActionOverride("dynaheir",SetDialogue("_DYNAHP"))
ActionOverride("dynaheir",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("dynaheir",LeaveParty())
ActionOverride("dynaheir",EscapeAreaMove("FW0706",320,330,9))
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW0706",286,387,0)~ EXIT
END
END // END ADD TO MINSC

//SKIE
EXTEND_BOTTOM _SKIEP 4  //NO ELDOTH IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @57 + STAYHERE_SAFE_SKIE
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146")
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @57 + STAYHERE_DANGER_SKIE
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_SKIE
++ @2 + SC_SKIE
++ @58 + NEVERLEFT_SKIE
END

EXTEND_BOTTOM _SKIEP 5  //ELDOTH IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @57 + STAYHERE_SAFE_SKIE_K
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @57 + STAYHERE_DANGER_SKIE_K
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_SKIE_K
++ @2 + SC_SKIE_K
++ @58 + NEVERLEFT_SKIE
END

APPEND _SKIEP

IF ~~ THEN BEGIN NEVERLEFT_SKIE
  SAY @59
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_SKIE
SAY @60
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_SKIE_K
SAY @61
IF ~~ THEN DO ~ActionOverride("eldoth",ChangeAIScript("",DEFAULT))
ActionOverride("eldoth",SetDialogue("_ELDOTP"))
ActionOverride("eldoth",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("eldoth",LeaveParty())
SetGlobal("KickedOut","LOCALS",1)~ EXIT
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
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_SKIE // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_SKIE // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_SKIE_K
SAY @65  // All of the danger areas.
	++ @10 + LEAVE_SKIE_K
	++ @11 + NEVERLEFT_SKIE
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_SKIE_K // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_SKIE_K // area check BG areas
END

IF ~~ THEN BEGIN SC_SKIE
SAY @66
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW3351",306,472,0)~ EXIT
END

IF ~~ THEN BEGIN BG_SKIE
SAY @67
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW0706",479,874,2)~ EXIT
END

IF ~~ THEN BEGIN SC_SKIE_K
SAY @68
IF ~~ DO ~ActionOverride("eldoth",ChangeAIScript("",DEFAULT))
ActionOverride("eldoth",SetDialogue("_ELDOTP"))
ActionOverride("eldoth",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("eldoth",LeaveParty())
ActionOverride("eldoth",EscapeAreaMove("FW3351",274,501,10))
SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW3351",306,472,0)~ EXIT
END

IF ~~ THEN BEGIN BG_SKIE_K
SAY @69
IF ~~ DO ~ActionOverride("eldoth",ChangeAIScript("",DEFAULT))
ActionOverride("eldoth",SetDialogue("_ELDOTP"))
ActionOverride("eldoth",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("eldoth",LeaveParty())
ActionOverride("eldoth",EscapeAreaMove("FW0706",414,897,10))
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW0706",479,874,2)~ EXIT
END
END // END ADD TO SKIE

//ELDOTH
EXTEND_BOTTOM _ELDOTP 4  //NO skie IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @70 + STAYHERE_SAFE_ELDOT
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @70 + STAYHERE_DANGER_ELDOT
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_ELDOT
++ @2 + SC_ELDOT
++ @71 + NEVERLEFT_ELDOT
END

EXTEND_BOTTOM _ELDOTP 5  //skie IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @70 + STAYHERE_SAFE_ELDOT_J
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @70 + STAYHERE_DANGER_ELDOT_J
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_ELDOT_J
++ @2 + SC_ELDOT_J
++ @71 + NEVERLEFT_ELDOT
END

APPEND _ELDOTP

IF ~~ THEN BEGIN NEVERLEFT_ELDOT
  SAY  @72 
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_ELDOT
SAY @73
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_ELDOT_J
SAY @74
IF ~~ THEN DO ~ActionOverride("skie",ChangeAIScript("",DEFAULT))
ActionOverride("skie",SetDialogue("_SKIEP"))
ActionOverride("skie",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("skie",LeaveParty())
SetGlobal("KickedOut","LOCALS",1)~ EXIT
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
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_ELDOT // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_ELDOT // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_ELDOT_J
SAY @78  // All of the danger areas.
	++ @10 + LEAVE_ELDOT_J
	++ @11 + NEVERLEFT_ELDOT
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_ELDOT_J // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_ELDOT_J // area check BG areas
END

IF ~~ THEN BEGIN SC_ELDOT
SAY @79
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW3351",274,501,10)~ EXIT
END

IF ~~ THEN BEGIN BG_ELDOT
SAY @80
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW0706",414,897,10)~ EXIT
END

IF ~~ THEN BEGIN SC_ELDOT_J
SAY @81
IF ~~ DO ~ActionOverride("skie",ChangeAIScript("",DEFAULT))
ActionOverride("skie",SetDialogue("_SKIEP"))
ActionOverride("skie",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("skie",LeaveParty())
ActionOverride("skie",EscapeAreaMove("FW3351",306,472,0))
SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW3351",274,501,10)~ EXIT
END

IF ~~ THEN BEGIN BG_ELDOT_J
SAY @80
IF ~~ DO ~ActionOverride("skie",ChangeAIScript("",DEFAULT))
ActionOverride("skie",SetDialogue("_SKIEP"))
ActionOverride("skie",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("skie",LeaveParty())
ActionOverride("skie",EscapeAreaMove("FW0706",479,871,2))
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW0706",414,897,10)~ EXIT
END
END // END ADD TO ELDOTH


//XZAR
EXTEND_BOTTOM _XZARP 4  //NO MONTARON IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @82 + STAYHERE_SAFE_XZAR
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146")
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @82 + STAYHERE_DANGER_XZAR
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_XZAR
++ @2 + SC_XZAR
++ @83 + NEVERLEFT_XZAR
END

EXTEND_BOTTOM _XZARP 5  //MONTARON IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @82 + STAYHERE_SAFE_XZAR_K
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @82 + STAYHERE_DANGER_XZAR_K
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_XZAR_K
++ @2 + SC_XZAR_K
++ @83 + NEVERLEFT_XZAR
END

APPEND _XZARP

IF ~~ THEN BEGIN NEVERLEFT_XZAR
  SAY  @84 
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_XZAR
SAY @85
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_XZAR_K
SAY @86
IF ~~ THEN DO ~ActionOverride("montaron",ChangeAIScript("",DEFAULT))
ActionOverride("montaron",SetDialogue("_MONTAP"))
ActionOverride("montaron",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("montaron",LeaveParty())
SetGlobal("KickedOut","LOCALS",1)~ EXIT
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
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_XZAR // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_XZAR // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_XZAR_K
SAY @90  // All of the danger areas.
	++ @10 + LEAVE_XZAR_K
	++ @11 + NEVERLEFT_XZAR
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_XZAR_K // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_XZAR_K // area check BG areas
END

IF ~~ THEN BEGIN SC_XZAR
SAY @91
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW4809",410,278,11)~ EXIT
END

IF ~~ THEN BEGIN BG_XZAR
SAY @92
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) 
EscapeAreaMove("FW0133",946,657,13)~ EXIT
END

IF ~~ THEN BEGIN SC_XZAR_K
SAY @93
IF ~~ DO ~ActionOverride("montaron",ChangeAIScript("",DEFAULT))
ActionOverride("montaron",SetDialogue("_MONTAP"))
ActionOverride("montaron",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("montaron",LeaveParty())
ActionOverride("montaron",EscapeAreaMove("FW4809",428,247,0))
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW4809",410,278,11)~ EXIT
END

IF ~~ THEN BEGIN BG_XZAR_K
SAY @94
IF ~~ DO ~ActionOverride("montaron",ChangeAIScript("",DEFAULT))
ActionOverride("montaron",SetDialogue("_MONTAP"))
ActionOverride("montaron",SetGlobal("KickedOut","LOCALS",1))
ActionOverride("montaron",LeaveParty())
ActionOverride("montaron",EscapeAreaMove("FW0133",870,668,9))
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW0133",946,657,13)~ EXIT
END
END // END ADD TO XZAR

//MONTARON
EXTEND_BOTTOM _MONTAP 4  //NO xzar IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @95 + STAYHERE_SAFE_MONTA
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @95 + STAYHERE_DANGER_MONTA
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_MONTA
++ @2 + SC_MONTA
++ @96 + NEVERLEFT_MONTA
END

EXTEND_BOTTOM _MONTAP 5  //xzar IN PARTY
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @95 + STAYHERE_SAFE_MONTA_J
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @95 + STAYHERE_DANGER_MONTA_J
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_MONTA_J
++ @2 + SC_MONTA_J
++ @96 + NEVERLEFT_MONTA
END

APPEND _MONTAP

IF ~~ THEN BEGIN NEVERLEFT_MONTA
 SAY @97 
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_MONTA
SAY @98
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_MONTA_J
SAY @99
IF ~~ THEN DO ~ActionOverride("xzar",ChangeAIScript("",DEFAULT)) ActionOverride("xzar",SetDialogue("_XZARP")) ActionOverride("xzar",SetGlobal("KickedOut","LOCALS",1)) ActionOverride("xzar",LeaveParty()) SetGlobal("KickedOut","LOCALS",1)~ EXIT
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
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_MONTA // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_MONTA // area check BG areas
END

IF ~~ THEN BEGIN STAYHERE_DANGER_MONTA_J
SAY @103  // All of the danger areas.
	++ @10 + LEAVE_MONTA_J
	++ @11 + NEVERLEFT_MONTA
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_MONTA_J // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_MONTA_J // area check BG areas
END

IF ~~ THEN BEGIN SC_MONTA
SAY @104
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW4809",428,247,0)~ EXIT
END

IF ~~ THEN BEGIN BG_MONTA
SAY @105
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0706",286,387,0)~ EXIT
END

IF ~~ THEN BEGIN SC_MONTA_J
SAY @106
IF ~~ DO ~ActionOverride("xzar",ChangeAIScript("",DEFAULT)) ActionOverride("xzar",SetDialogue("_XZARP")) ActionOverride("xzar",SetGlobal("KickedOut","LOCALS",1)) ActionOverride("xzar",LeaveParty()) ActionOverride("xzar",EscapeAreaMove("FW4809",410,278,11)) SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW4809",428,247,0)~ EXIT
END

IF ~~ THEN BEGIN BG_MONTA_J
SAY @107
IF ~~ DO ~ActionOverride("xzar",ChangeAIScript("",DEFAULT)) ActionOverride("xzar",SetDialogue("_XZARP")) ActionOverride("xzar",SetGlobal("KickedOut","LOCALS",1)) ActionOverride("xzar",LeaveParty()) ActionOverride("xzar",EscapeAreaMove("FW0133",946,657,13)) SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0133",870,668,9)~ EXIT
END
END // END ADD TO MONTARON

//EDWIN
EXTEND_BOTTOM _EDWINP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @108 + STAYHERE_SAFE_EDWIN
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @108 + STAYHERE_DANGER_EDWIN
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_EDWIN
++ @2 + SC_EDWIN
++ @109 + NEVERLEFT_EDWIN
END


APPEND _EDWINP

IF ~~ THEN BEGIN NEVERLEFT_EDWIN
 SAY  @110 
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_EDWIN
 SAY @111
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_EDWIN
 SAY @112 
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_EDWIN
SAY @113 // All of the danger areas.
	++ @10 + LEAVE_EDWIN
	++ @11 + NEVERLEFT_EDWIN
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_EDWIN // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_EDWIN // area check BG areas
END

IF ~~ THEN BEGIN SC_EDWIN
SAY @114
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW4809",144,289,0)~ EXIT
END

IF ~~ THEN BEGIN BG_EDWIN
SAY @115
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0133",564,474,8)~ EXIT
END

END // END ADD TO EDWIN

//SHAR-TEEL

EXTEND_BOTTOM _SHARTP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @116 + STAYHERE_SAFE_SHART
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @116 + STAYHERE_DANGER_SHART
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_SHART
++ @2 + SC_SHART
++ @117 + NEVERLEFT_SHART
END


APPEND _SHARTP

IF ~~ THEN BEGIN NEVERLEFT_SHART
 SAY @118
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_SHART
 SAY @119
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_SHART
 SAY @120 
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_SHART
SAY @121 // All of the danger areas.
	++ @10 + LEAVE_SHART
	++ @11 + NEVERLEFT_SHART
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_SHART // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_SHART // area check BG areas
END

IF ~~ THEN BEGIN SC_SHART
SAY @122
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW4809",207,260,9)~ EXIT
END

IF ~~ THEN BEGIN BG_SHART
SAY @123
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0114",603,487,0)~ EXIT
END

END // END ADD TO _SHART

//TIAX

EXTEND_BOTTOM _TIAXP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @124 + STAYHERE_SAFE_TIAX
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @124 + STAYHERE_DANGER_TIAX
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_TIAX
++ @2 + SC_TIAX
++ @125 + NEVERLEFT_TIAX
END


APPEND _TIAXP

IF ~~ THEN BEGIN NEVERLEFT_TIAX
 SAY  @126 
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_TIAX
 SAY @127
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_TIAX
 SAY @128 
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_TIAX
SAY @129 // All of the danger areas.
	++ @10 + LEAVE_TIAX
	++ @11 + NEVERLEFT_TIAX
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_TIAX // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_TIAX // area check BG areas
END

IF ~~ THEN BEGIN SC_TIAX
SAY @130
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW4809",636,359,2)~ EXIT
END

IF ~~ THEN BEGIN BG_TIAX
SAY @131
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0114",869,699,9)~ EXIT
END

END // END ADD TO TIAX

//VICONIA

EXTEND_BOTTOM _VICONP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @132 + STAYHERE_SAFE_VICON
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @132 + STAYHERE_DANGER_VICON
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_VICON
++ @2 + SC_VICON
++ @133 + NEVERLEFT_VICON
END


APPEND _VICONP

IF ~~ THEN BEGIN NEVERLEFT_VICON
 SAY @134
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_VICON
 SAY @135
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_VICON
 SAY @136
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_VICON
SAY @137 // All of the danger areas.
	++ @10 + LEAVE_VICON
	++ @11 + NEVERLEFT_VICON
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_VICON // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_VICON // area check BG areas
END

IF ~~ THEN BEGIN SC_VICON
SAY @138
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW3802",347,178,14)~ EXIT
END

IF ~~ THEN BEGIN BG_VICON
SAY @139
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0114",1033,908,4)~ EXIT
END

END // END ADD TO VICONIA

//KAGAIN

EXTEND_BOTTOM _KAGAIP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @140 + STAYHERE_SAFE_KAGAI
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @140 + STAYHERE_DANGER_KAGAI
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_KAGAI
++ @2 + SC_KAGAI
++ @141 + NEVERLEFT_KAGAI
END


APPEND _KAGAIP

IF ~~ THEN BEGIN NEVERLEFT_KAGAI
 SAY @142
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_KAGAI
 SAY @143
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_KAGAI
 SAY @144
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_KAGAI
SAY @145 // All of the danger areas.
	++ @10 + LEAVE_KAGAI
	++ @11 + NEVERLEFT_KAGAI
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_KAGAI // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_KAGAI // area check BG areas
END

IF ~~ THEN BEGIN SC_KAGAI
SAY @146
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW3353",317,271,0)~ EXIT
END

IF ~~ THEN BEGIN BG_KAGAI
SAY @147
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0114",621,658,7)~ EXIT
END

END // END ADD TO KAGAIN

//AJANTIS

EXTEND_BOTTOM _AJANTP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @148 + STAYHERE_SAFE_AJANT
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @148 + STAYHERE_DANGER_AJANT
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_AJANT
++ @2 + SC_AJANT
++ @149 + NEVERLEFT_AJANT
END


APPEND _AJANTP

IF ~~ THEN BEGIN NEVERLEFT_AJANT
 SAY @150
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_AJANT
 SAY @151
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_AJANT
 SAY @152
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_AJANT
SAY @153 // All of the danger areas.
	++ @10 + LEAVE_AJANT
	++ @11 + NEVERLEFT_AJANT
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_AJANT // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_AJANT // area check BG areas
END

IF ~~ THEN BEGIN SC_AJANT
SAY @154
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW2301",582,534,2)~ EXIT
END

IF ~~ THEN BEGIN BG_AJANT
SAY @155
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0705",612,450,0)~ EXIT
END

END // END ADD TO AJANTIS

//QUAYLE

EXTEND_BOTTOM _QUAYLP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @156 + STAYHERE_SAFE_QUAYL
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @156 + STAYHERE_DANGER_QUAYL
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_QUAYL
++ @2 + SC_QUAYL
++ @157 + NEVERLEFT_QUAYL
END


APPEND _QUAYLP

IF ~~ THEN BEGIN NEVERLEFT_QUAYL
 SAY @158
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_QUAYL
 SAY @159
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_QUAYL
 SAY @160
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_QUAYL
SAY @161 // All of the danger areas.
	++ @10 + LEAVE_QUAYL
	++ @11 + NEVERLEFT_QUAYL
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_QUAYL // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_QUAYL // area check BG areas
END

IF ~~ THEN BEGIN SC_QUAYL
SAY @162
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW2302",890,693,4)~ EXIT
END

IF ~~ THEN BEGIN BG_QUAYL
SAY @163
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0705",372,797,0)~ EXIT
END

END // END ADD TO QUAYLE

//GARRICK

EXTEND_BOTTOM _GARRIP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @164 + STAYHERE_SAFE_GARRI
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @164 + STAYHERE_DANGER_GARRI
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_GARRI
++ @2 + SC_GARRI
++ @165 + NEVERLEFT_GARRI
END


APPEND _GARRIP

IF ~~ THEN BEGIN NEVERLEFT_GARRI
 SAY @166
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_GARRI
 SAY @167
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_GARRI
 SAY @168
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_GARRI
SAY @169 // All of the danger areas.
	++ @10 + LEAVE_GARRI
	++ @11 + NEVERLEFT_GARRI
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_GARRI // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_GARRI // area check BG areas
END

IF ~~ THEN BEGIN SC_GARRI
SAY @170
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW2301",519,574,14)~ EXIT
END

IF ~~ THEN BEGIN BG_GARRI
SAY @171
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) TakePartyGold(25) EscapeAreaMove("FW0705",580,505,0)~ EXIT
END

END // END ADD TO GARRICK

//IMOEN

EXTEND_BOTTOM _IMOENP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @172 + STAYHERE_SAFE_IMOEN
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @172 + STAYHERE_DANGER_IMOEN
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_IMOEN
++ @2 + SC_IMOEN
++ @173 + NEVERLEFT_IMOEN
END


APPEND _IMOENP

IF ~~ THEN BEGIN NEVERLEFT_IMOEN
 SAY @174
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_IMOEN
 SAY @175
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_IMOEN
 SAY @176
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_IMOEN
SAY @177 // All of the danger areas.
	++ @10 + LEAVE_IMOEN
	++ @11 + NEVERLEFT_IMOEN
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_IMOEN // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_IMOEN // area check BG areas
END

IF ~~ THEN BEGIN SC_IMOEN
SAY @178
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW2302",894,659,0)~ EXIT
END

IF ~~ THEN BEGIN BG_IMOEN
SAY @179
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0705",630,270,12)~ EXIT
END

END


// END ADD TO IMOEN

//XAN

EXTEND_BOTTOM _XANP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @180 + STAYHERE_SAFE_XAN
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @180 + STAYHERE_DANGER_XAN
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_XAN
++ @2 + SC_XAN
++ @181 + NEVERLEFT_XAN
END


APPEND _XANP

IF ~~ THEN BEGIN NEVERLEFT_XAN
 SAY @182
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_XAN
 SAY @183
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_XAN
 SAY @184
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_XAN
SAY @185 // All of the danger areas.
	++ @10 + LEAVE_XAN
	++ @11 + NEVERLEFT_XAN
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_XAN // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_XAN // area check BG areas
END

IF ~~ THEN BEGIN SC_XAN
SAY @186
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW2302",790,660,13)~ EXIT
END

IF ~~ THEN BEGIN BG_XAN
SAY @187
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0705",403,864,12)~ EXIT
END

END // END ADD TO XAN


//BRANWEN

EXTEND_BOTTOM _BRANWP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @188 + STAYHERE_SAFE_BRANW
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @188 + STAYHERE_DANGER_BRANW
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_BRANW
++ @2 + SC_BRANW
++ @189 + NEVERLEFT_BRANW
END


APPEND _BRANWP

IF ~~ THEN BEGIN NEVERLEFT_BRANW
 SAY @190
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_BRANW
 SAY @191
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_BRANW
 SAY @192
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_BRANW
SAY @193 // All of the danger areas.
	++ @10 + LEAVE_BRANW
	++ @11 + NEVERLEFT_BRANW
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_BRANW // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_BRANW // area check BG areas
END

IF ~~ THEN BEGIN SC_BRANW
SAY @194
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW2301",480,617,14)~ EXIT
END

IF ~~ THEN BEGIN BG_BRANW
SAY @195
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0705",894,568,0)~ EXIT
END

END // END ADD TO BRANWEN

//ALORA

EXTEND_BOTTOM _ALORAP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @196 + STAYHERE_SAFE_ALORA
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @196 + STAYHERE_DANGER_ALORA
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_ALORA
++ @2 + SC_ALORA
++ @197 + NEVERLEFT_ALORA
END


APPEND _ALORAP

IF ~~ THEN BEGIN NEVERLEFT_ALORA
 SAY @198
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_ALORA
 SAY @199
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_ALORA
 SAY @200
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_ALORA
SAY @201 // All of the danger areas.
	++ @10 + LEAVE_ALORA
	++ @11 + NEVERLEFT_ALORA
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_ALORA // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_ALORA // area check BG areas
END

IF ~~ THEN BEGIN SC_ALORA
SAY @202
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW2301",941,525,6)~ EXIT
END

IF ~~ THEN BEGIN BG_ALORA
SAY @203
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0705",373,403,4)~ EXIT
END

END // END ADD TO ALORA

//YESLICK

EXTEND_BOTTOM _YESLIP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @204 + STAYHERE_SAFE_YESLI
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @204 + STAYHERE_DANGER_YESLI
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_YESLI
++ @2 + SC_YESLI
++ @205 + NEVERLEFT_YESLI
END


APPEND _YESLIP

IF ~~ THEN BEGIN NEVERLEFT_YESLI
 SAY @206
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_YESLI
 SAY @207
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_YESLI
 SAY @208
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_YESLI
SAY @209 // All of the danger areas.
	++ @10 + LEAVE_YESLI
	++ @11 + NEVERLEFT_YESLI
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_YESLI // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_YESLI // area check BG areas
END

IF ~~ THEN BEGIN SC_YESLI
SAY @210
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW2302",1142,422,13)~ EXIT
END

IF ~~ THEN BEGIN BG_YESLI
SAY @211
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0705",715,424,0)~ EXIT
END

END // END ADD TO YESLICK

//FALDORN

EXTEND_BOTTOM _FALDOP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @212 + STAYHERE_SAFE_FALDO
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @212 + STAYHERE_DANGER_FALDO
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_FALDO
++ @2 + SC_FALDO
++ @213 + NEVERLEFT_FALDO
END


APPEND _FALDOP

IF ~~ THEN BEGIN NEVERLEFT_FALDO
 SAY @214
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_FALDO
 SAY @215
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_FALDO
 SAY @216
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_FALDO
SAY @217 // All of the danger areas.
	++ @10 + LEAVE_FALDO
	++ @11 + NEVERLEFT_FALDO
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_FALDO // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_FALDO // area check BG areas
END

IF ~~ THEN BEGIN SC_FALDO
SAY @218
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW1600",775,2916,0)~ EXIT
END

IF ~~ THEN BEGIN BG_FALDO
SAY @219
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW1600",775,2916,0)~ EXIT
END

END // END ADD TO FALDORN

//KIVAN

EXTEND_BOTTOM _KIVANP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @220 + STAYHERE_SAFE_KIVAN
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @220 + STAYHERE_DANGER_KIVAN
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_KIVAN
++ @2 + SC_KIVAN
++ @221 + NEVERLEFT_KIVAN
END


APPEND _KIVANP

IF ~~ THEN BEGIN NEVERLEFT_KIVAN
 SAY @222
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_KIVAN
 SAY @223
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_KIVAN
 SAY @224
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_KIVAN
SAY @225 // All of the danger areas.
	++ @10 + LEAVE_KIVAN
	++ @11 + NEVERLEFT_KIVAN
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_KIVAN // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_KIVAN // area check BG areas
END

IF ~~ THEN BEGIN SC_KIVAN
SAY @226
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW2302",917,501,0)~ EXIT
END

IF ~~ THEN BEGIN BG_KIVAN
SAY @227
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("FW0705",872,332,12)~ EXIT
END

END // END ADD TO KIVAN

//CORAN

EXTEND_BOTTOM _CORANP 4
+~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @228 + STAYHERE_SAFE_CORAN
+~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @228 + STAYHERE_DANGER_CORAN
+~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_CORAN
++ @2 + SC_CORAN
++ @229 + NEVERLEFT_CORAN
END


APPEND _CORANP

IF ~~ THEN BEGIN NEVERLEFT_CORAN
 SAY @230
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_CORAN
 SAY @231
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END


IF ~~ THEN BEGIN LEAVE_CORAN
 SAY @232
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_CORAN
SAY @233 // All of the danger areas.
	++ @10 + LEAVE_CORAN
	++ @11 + NEVERLEFT_CORAN
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_CORAN // area check SC areas.
        + ~OR(25)AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_CORAN // area check BG areas
END

IF ~~ THEN BEGIN SC_CORAN
SAY @234
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW4809",334,222,14)~ EXIT
END

IF ~~ THEN BEGIN BG_CORAN
SAY @235
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0705",494,655,12)~ EXIT
END

END // END ADD TO CORAN

/* SAFANA */

EXTEND_BOTTOM _SAFANP 4
+ ~!AreaCheck("FW5100") !AreaCheck("FW5101") !AreaCheck("FW5102") !AreaCheck("FW5103") !AreaCheck("FW5401") !AreaCheck("FW5402") !AreaCheck("FW5403") !AreaCheck("FW5404")
!AreaCheck("FW5405") !AreaCheck("FW1900") !AreaCheck("FW1901") !AreaCheck("FW1903") !AreaCheck("FW3900") !AreaCheck("FW3901") !AreaCheck("FW4500") !AreaCheck("FW5201")
!AreaCheck("FW3500") !AreaCheck("FW1603") !AreaCheck("FW4501") !AreaCheck("FW3601") !AreaCheck("FW1401") !AreaCheck("FW2101") !AreaCheck("FW1801") !AreaCheck("FW1802")
!AreaCheck("FW1803") !AreaCheck("FW1804") !AreaCheck("FW2615") !AreaCheck("FW2619") !AreaCheck("FW5506") !AreaCheck("FW0500") !AreaCheck("FW0501") !AreaCheck("FW0502")
!AreaCheck("FW0503") !AreaCheck("FW0504") !AreaCheck("FW0505") !AreaCheck("FW0506") !AreaCheck("FW0507") !AreaCheck("FW0508") !AreaCheck("FW0509") !AreaCheck("FW0510")
!AreaCheck("FW0511") !AreaCheck("FW0512") !AreaCheck("FW0513") !AreaCheck("FW0514") !AreaCheck("FW0515") !AreaCheck("FW0516") !AreaCheck("FW1002") !AreaCheck("FW1003")
!AreaCheck("FW1008") !AreaCheck("FW1009") !AreaCheck("FW1500") !AreaCheck("FW2000") !AreaCheck("FW2012") !AreaCheck("FW1501") !AreaCheck("FW1502") !AreaCheck("FW1503")
!AreaCheck("FW1504") !AreaCheck("FW1505") !AreaCheck("FW0400") !AreaCheck("FW0606") !AreaCheck("FW0607") !AreaCheck("FW0608") !AreaCheck("FW1113") !AreaCheck("FW1114") 
!AreaCheck("FW1201") !AreaCheck("FW1202") !AreaCheck("FW1207") !AreaCheck("FW0721") !AreaCheck("FW0611") !AreaCheck("FW0621") !AreaCheck("FW0123") !AreaCheck("FW0125") 
!AreaCheck("FW0126") !AreaCheck("FW0137") !AreaCheck("FW0138") !AreaCheck("FW0139") !AreaCheck("FW0140") !AreaCheck("FW0141") !AreaCheck("FW0142") !AreaCheck("FW0146") 
!AreaCheck("FW0161") !AreaCheck("FW0224") !AreaCheck("FW0225") !AreaCheck("FW0226")~+ @236 + STAYHERE_SAFE_SAFAN
+ ~OR(84)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400") AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") 
AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207") AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") 
AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138") AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") 
AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225") AreaCheck("FW0226")~+ @236 + STAYHERE_DANGER_SAFAN
+ ~Global("Drawbridge","GLOBAL",1)~ + @1 + BG_SAFAN
++ @2 + SC_SAFAN
++ @237 + NEVERLEFT_SAFAN
END

APPEND _SAFANP

IF ~~ THEN BEGIN NEVERLEFT_SAFAN
 SAY @238
 IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_SAFE_SAFAN
 SAY @239
 IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN LEAVE_SAFAN
 SAY @240
 IF ~~ THEN DO ~LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN STAYHERE_DANGER_SAFAN
SAY @241 // All of the danger areas.
	++ @10 + LEAVE_SAFAN
	++ @11 + NEVERLEFT_SAFAN
	+ ~OR(59)AreaCheck("FW5100") AreaCheck("FW5101") AreaCheck("FW5102") AreaCheck("FW5103") AreaCheck("FW5401") AreaCheck("FW5402") AreaCheck("FW5403") AreaCheck("FW5404")
AreaCheck("FW5405") AreaCheck("FW1900") AreaCheck("FW1901") AreaCheck("FW1903") AreaCheck("FW3900") AreaCheck("FW3901") AreaCheck("FW4500") AreaCheck("FW5201")
AreaCheck("FW3500") AreaCheck("FW1603") AreaCheck("FW4501") AreaCheck("FW3601") AreaCheck("FW1401") AreaCheck("FW2101") AreaCheck("FW1801") AreaCheck("FW1802")
AreaCheck("FW1803") AreaCheck("FW1804") AreaCheck("FW2615") AreaCheck("FW2619") AreaCheck("FW5506") AreaCheck("FW0500") AreaCheck("FW0501") AreaCheck("FW0502")
AreaCheck("FW0503") AreaCheck("FW0504") AreaCheck("FW0505") AreaCheck("FW0506") AreaCheck("FW0507") AreaCheck("FW0508") AreaCheck("FW0509") AreaCheck("FW0510")
AreaCheck("FW0511") AreaCheck("FW0512") AreaCheck("FW0513") AreaCheck("FW0514") AreaCheck("FW0515") AreaCheck("FW0516") AreaCheck("FW1002") AreaCheck("FW1003")
AreaCheck("FW1008") AreaCheck("FW1009") AreaCheck("FW1500") AreaCheck("FW2000") AreaCheck("FW2012") AreaCheck("FW1501") AreaCheck("FW1502") AreaCheck("FW1503")
AreaCheck("FW1504") AreaCheck("FW1505") AreaCheck("FW0400")~ + @12 + SC_SAFAN // area check SC areas.
        + ~OR(25) AreaCheck("FW0606") AreaCheck("FW0607") AreaCheck("FW0608") AreaCheck("FW1113") AreaCheck("FW1114") AreaCheck("FW1201") AreaCheck("FW1202") AreaCheck("FW1207")
AreaCheck("FW0721") AreaCheck("FW0611") AreaCheck("FW0621") AreaCheck("FW0123") AreaCheck("FW0125") AreaCheck("FW0126") AreaCheck("FW0137") AreaCheck("FW0138")
AreaCheck("FW0139") AreaCheck("FW0140") AreaCheck("FW0141") AreaCheck("FW0142") AreaCheck("FW0146") AreaCheck("FW0161") AreaCheck("FW0224") AreaCheck("FW0225")
AreaCheck("FW0226")~ + @12 + BG_SAFAN // area check BG areas
END

IF ~~ THEN BEGIN SC_SAFAN
SAY @242
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW4809",400,230,5)~ EXIT
END

IF ~~ THEN BEGIN BG_SAFAN
SAY @243
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1) EscapeAreaMove("FW0705",522,640,4)~ EXIT
END

END // END ADD TO SAFANA
