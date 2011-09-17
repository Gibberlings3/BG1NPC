BEGIN ~P#CENTEO~

APPEND ~%tutu_var%CENTEO~

IF WEIGHT #-1 ~%BGT_VAR% Global("P#Rain","GLOBAL",1)
~ THEN BEGIN P#Centeo
 SAY @0
= @1
= @2
IF ~OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID)~ THEN REPLY @3 DO ~SetGlobal("P#Rain","GLOBAL",2)~ + CenteolJon1
IF ~OR(3) !InParty("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID)~ THEN REPLY @4 DO ~ SetGlobal("P#Rain","GLOBAL",2)~ + CenteolJon2
IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN DO ~ SetGlobal("P#Rain","GLOBAL",2)~ EXTERN ~%XAN_JOINED%~ XanTwist
END

IF ~~ CenteolJon1
SAY @5
= @6 
IF ~~ THEN JOURNAL @7 EXIT
END

IF ~~ CenteolJon2
SAY @8
= @9
= @10 
IF ~~ THEN REPLY @11 JOURNAL @7 EXIT
IF ~~ THEN REPLY @12 JOURNAL @13 EXIT
END
END

APPEND ~%XAN_JOINED%~

IF ~%BGT_VAR% Global("P#Rain","GLOBAL",5)~ P#XanTalkofRain
SAY @14
IF ~~ THEN DO ~SetGlobal("P#Rain","GLOBAL",6)~ EXIT
END

END

CHAIN ~%XAN_JOINED%~ XanTwist
@15
== ~%tutu_var%CENTEO~ @16
== ~%XAN_JOINED%~ @17 
== ~%tutu_var%CENTEO~ @18
== ~%XAN_JOINED%~ @19
== ~%tutu_var%CENTEO~ @20
== ~%XAN_JOINED%~ @21
== ~%tutu_var%CENTEO~ @22 
== ~%XAN_JOINED%~ @23
= @24
== ~%tutu_var%CENTEO~ @25
== ~%XAN_JOINED%~ @26
== ~%tutu_var%CENTEO~ @27
== ~%XAN_JOINED%~ @28
END
IF ~~ THEN DO ~SetGlobal("P#SpeakUp","GLOBAL",1)~ EXIT


CHAIN IF ~%BGT_VAR% Global("P#SpeakUp","GLOBAL",2)~ THEN ~%tutu_var%CENTEO~ XanTwist2
@29 
= @30
= @31
= @32
DO ~SetGlobal("P#SpeakUp","GLOBAL",3)~
== ~%XAN_JOINED%~ @33
DO ~CreateVisualEffectObject("SPFLESHS","centeol") ActionOverride("centeol",DestroySelf()) SetGlobal("P#Rain","GLOBAL",3)~ EXIT

