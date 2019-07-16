BEGIN ~X#MIRC~

IF ~IsGabber(Player1)~ THEN BEGIN Mirror
SAY @0
++ @1 + Pretty
+~RandomNum(10,1)~ + @2 + Compliment1
+~RandomNum(10,2)~ + @2 + Compliment2
+~RandomNum(10,3)~ + @2 + Compliment3
+~RandomNum(10,4)~ + @2 + Compliment4
+~RandomNum(10,5)~ + @2 + Compliment5
+~RandomNum(10,6)~ + @2 + Compliment6
+~RandomNum(10,7)~ + @2 + Compliment7
+~RandomNum(10,8)~ + @2 + Compliment8
+~RandomNum(10,9)~ + @2 + Compliment9
+~RandomNum(10,10)~ + @2 + Compliment10
END

IF ~~ Pretty
SAY @3
IF ~~ THEN EXIT
END

IF ~~ Compliment1
SAY @4
IF ~~ THEN EXIT
END 

IF ~~ Compliment2
SAY @5
IF ~~ THEN EXIT
END

IF ~~ Compliment3
SAY @6
IF ~~ THEN EXIT
END

IF ~~ Compliment4
SAY @7
IF ~~ THEN EXIT
END

IF ~~ Compliment5
SAY @8
IF ~~ THEN EXIT
END

IF ~~ Compliment6
SAY @9
IF ~~ THEN EXIT
END 

IF ~~ Compliment7
SAY @10
IF ~~ THEN EXIT
END

IF ~~ Compliment8
SAY @11
IF ~~ THEN EXIT
END

IF ~~ Compliment9
SAY @12
IF ~~ THEN EXIT
END

IF ~~ Compliment10
SAY @13
IF ~~ THEN EXIT
END

IF ~!IsGabber(Player1) Gender(LastTalkedToBy(),MALE)~ THEN BEGIN MirrorMale
SAY @14
IF ~~ THEN EXIT
END

IF ~!IsGabber(Player1) Gender(LastTalkedToBy(),FEMALE)~ THEN BEGIN MirrorFemale
SAY @15
IF ~~ THEN EXIT
END

