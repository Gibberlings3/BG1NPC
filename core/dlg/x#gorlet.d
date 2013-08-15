BEGIN X#GORLET

/* To make sure quick-clickers don't break this */

IF ~GlobalGT("X#GorionTalkingLetter","GLOBAL",1)~ THEN BEGIN X#LetterTalks
SAY @0
= @1
IF ~~ THEN DO ~SetGlobal("X#GorionTalkingLetter","GLOBAL",4) SetGlobal("P#KnowBhaal","GLOBAL",1) ActionOverride("X#GORLET",DestroySelf())~ EXIT
END
