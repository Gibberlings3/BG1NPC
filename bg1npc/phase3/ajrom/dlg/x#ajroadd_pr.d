BEGIN ~X#AJDOUG~

CHAIN
IF ~%BGT_VAR% Global("X#AjantisHasRing","GLOBAL",1)~ THEN ~X#AJDOUG~ ajantis_messenger
@0 DO ~SetGlobal("X#AjantisHasRing","GLOBAL",2)~
== ~%AJANTIS_BANTER%~ @1
= @2
== ~X#AJDOUG~ @3
== ~%AJANTIS_BANTER%~ @4 DO ~ActionOverride("X#AJDOUG",EscapeArea())~
END
++ @5 EXTERN ~%AJANTIS_BANTER%~ ajantis_messenger_01
++ @6 EXTERN ~%AJANTIS_BANTER%~ ajantis_messenger_03

APPEND ~%AJANTIS_BANTER%~

IF ~~ THEN ajantis_messenger_01
SAY @7 
++ @8 + ajantis_messenger_02
++ @9 EXIT
++ @10 EXIT
END

IF ~~ THEN ajantis_messenger_02
SAY @11
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_messenger_03
SAY @12 
++ @8 + ajantis_messenger_02
++ @9 EXIT
++ @10 EXIT
END

END
