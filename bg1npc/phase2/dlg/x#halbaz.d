APPEND ~%tutu_var%HALBAZ~

IF WEIGHT #-5 ~%BGT_VAR% PartyHasItem("X#GARCH") Global("X#HalbTalk","LOCALS",0)~ THEN BEGIN Upgrade1
SAY @0
= @1
IF ~!PartyHasItem("_MISC47") !PartyHasItem("MISC47")~ THEN REPLY @2 DO ~SetGlobal("X#HalbTalk","LOCALS",1)~ GOTO Upgrade2
IF ~OR(2) PartyHasItem("_MISC47") PartyHasItem("MISC47")~ THEN REPLY @2 DO ~SetGlobal("X#HalbTalk","LOCALS",1)~ GOTO Upgrade3
IF ~~ THEN REPLY @3 DO ~StartStore("%tutu_var%STO0703",Protagonist)~ EXIT
IF ~~ THEN REPLY @4 EXIT
END

IF WEIGHT #-5 ~%BGT_VAR% PartyHasItem("X#GARCH") Global("X#HalbTalk","LOCALS",1)~ THEN BEGIN Upgrade7
SAY @5
IF ~OR(2) PartyHasItem("_MISC47") PartyHasItem("MISC47") PartyGoldGT(999)~ THEN REPLY @6 GOTO Upgrade6
IF ~~ THEN REPLY @7 DO ~StartStore("%tutu_var%STO0703",Protagonist)~ EXIT
IF ~~ THEN REPLY @8 EXIT
END

IF ~~ THEN BEGIN Upgrade2
SAY @9
IF ~~ THEN REPLY @10 GOTO Upgrade4
IF ~~ THEN REPLY @11 GOTO Upgrade4
IF ~~ THEN REPLY @12 DO ~StartStore("%tutu_var%STO0703",Protagonist)~ EXIT
IF ~~ THEN REPLY @13 EXIT
END

IF ~~ THEN BEGIN Upgrade4
SAY @14
IF ~~ THEN REPLY @15 DO ~StartStore("%tutu_var%STO0703",Protagonist)~ EXIT
IF ~~ THEN REPLY @16 EXIT
END

IF ~~ THEN BEGIN Upgrade3
SAY @9
IF ~~ THEN REPLY @10 GOTO Upgrade5
IF ~~ THEN REPLY @11 GOTO Upgrade5
IF ~~ THEN REPLY @12 DO ~StartStore("%tutu_var%STO0703",Protagonist)~ EXIT
IF ~~ THEN REPLY @13 EXIT
END

IF ~~ THEN BEGIN Upgrade5
SAY @17
IF ~~ THEN REPLY @15 DO ~StartStore("%tutu_var%STO0703",Protagonist)~ EXIT
IF ~~ THEN REPLY @18 EXIT
IF ~PartyGoldGT(999)~ THEN REPLY @10 GOTO Upgrade6
END


/* leave this alone - some discrepancies in Tutu versions, and it covers BGT */
IF ~~ THEN BEGIN Upgrade6
SAY @19
= @20
= @21
IF ~~ THEN DO ~TakePartyGold(1000)
SetGlobal("X#HalbTalk","LOCALS",2)
TakePartyItem("X#GARCH")
TakePartyItem("MISC47")
TakePartyItem("_MISC47")
DestroyItem("X#GARCH")
DestroyItem("MISC47")
DestroyItem("_MISC47")
GiveItemCreate("X#GARCH2",Player1,1,0,0)~ EXIT
END

END