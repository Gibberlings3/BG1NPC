/* PI DIALOGUES */

APPEND ~%VICONIA_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN VICH
	SAY @0
	++ @1 EXIT
	+ ~Global("X#VICHdone","GLOBAL",1) RandomNum(4,1)~ + @2 + VICHFailure1
	+ ~Global("X#VICHdone","GLOBAL",1) RandomNum(4,2)~ + @2 + VICHFailure2
	+ ~Global("X#VICHdone","GLOBAL",1) RandomNum(4,3)~ + @2 + VICHFailure3
	+ ~Global("X#VICHdone","GLOBAL",1) RandomNum(4,4)~ + @2 + VICHFailure4
	+ ~!Global("X#VICHdone","GLOBAL",1) RandomNum(5,1)~ + @3 + VICHSuccess
	+ ~!Global("X#VICHdone","GLOBAL",1) RandomNum(5,2)~ + @3 + VICHFailure1
	+ ~!Global("X#VICHdone","GLOBAL",1) RandomNum(5,3)~ + @3 + VICHFailure2
	+ ~!Global("X#VICHdone","GLOBAL",1) RandomNum(5,4)~ + @3 + VICHFailure3
	+ ~!Global("X#VICHdone","GLOBAL",1) RandomNum(5,5)~ + @3 + VICHFailure4
	+ ~!Global("X#VICHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @4 + VICHSuccess
	+ ~!Global("X#VICHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @4 + VICHFailure1
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @4 + VICHSuccess
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @4 + VICHFailure1
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @4 + VICHFailure2
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @4 + VICHFailure3
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @4 + VICHFailure4
	+ ~!Global("X#VICHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @5 + VICHSuccess
	+ ~!Global("X#VICHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @5 + VICHFailure2
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @5 + VICHSuccess
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @5 + VICHFailure1
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @5 + VICHFailure2
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @5 + VICHFailure3
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @5 + VICHFailure4
	+ ~!Global("X#VICHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @6 + VICHSuccess
	+ ~!Global("X#VICHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @6 + VICHFailure3
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @6 + VICHSuccess
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @6 + VICHFailure1
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @6 + VICHFailure3
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @6 + VICHFailure2
	+ ~!Global("X#VICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @6 + VICHFailure4
	+ ~RandomNum(8,1)~ + @7 + ViconiaPID1.1
	+ ~RandomNum(8,2)~ + @7 + ViconiaPID1.2
	+ ~RandomNum(8,3)~ + @7 + ViconiaPID1.3
	+ ~RandomNum(8,4)~ + @7 + ViconiaPID1.4
	+ ~RandomNum(8,5)~ + @7 + ViconiaPID1.5
	+ ~RandomNum(8,6)~ + @7 + ViconiaPID1.6
	+ ~RandomNum(8,7)~ + @7 + ViconiaPID1.7
	+ ~RandomNum(8,8)~ + @7 + ViconiaPID1.8
	+ ~RandomNum(8,1)~ + @8 + ViconiaPID2.1
	+ ~RandomNum(8,2)~ + @8 + ViconiaPID2.2
	+ ~RandomNum(8,3)~ + @8 + ViconiaPID2.3
	+ ~RandomNum(8,4)~ + @8 + ViconiaPID2.4
	+ ~RandomNum(8,5)~ + @8 + ViconiaPID2.5
	+ ~RandomNum(8,6)~ + @8 + ViconiaPID2.6
	+ ~RandomNum(8,7)~ + @8 + ViconiaPID2.7
	+ ~RandomNum(8,8)~ + @8 + ViconiaPID2.8
	+ ~RandomNum(8,1) Gender(Player1,MALE)~ + @9 + ViconiaPID3.1
	+ ~RandomNum(8,2) Gender(Player1,MALE)~ + @9 + ViconiaPID3.2
	+ ~RandomNum(8,3) Gender(Player1,MALE)~ + @9 + ViconiaPID3.3
	+ ~RandomNum(8,4) Gender(Player1,MALE)~ + @9 + ViconiaPID3.4
	+ ~RandomNum(8,5) Gender(Player1,MALE)~ + @9 + ViconiaPID3.5
	+ ~RandomNum(8,6) Gender(Player1,MALE)~ + @9 + ViconiaPID3.6
	+ ~RandomNum(8,7) Gender(Player1,MALE)~ + @9 + ViconiaPID3.7
	+ ~RandomNum(8,8) Gender(Player1,MALE)~ + @9 + ViconiaPID3.8
	+ ~%VoiceStrange%~ + @10 + ViconiaVoice
END

/* SetPlayerSound entries for _VICONI.CRE... */
IF ~~ ViconiaVoice
	SAY @11
	IF ~~ THEN DO ~SetName(@12)
	SetPlayerSound(Myself,@13,0)
	SetPlayerSound(Myself,@14,1)
	SetPlayerSound(Myself,@15,2)
	SetPlayerSound(Myself,@16,3)
	SetPlayerSound(Myself,@17,4)
	SetPlayerSound(Myself,@18,5)
	SetPlayerSound(Myself,@19,6)
	SetPlayerSound(Myself,@20,7)
	SetPlayerSound(Myself,@21,8)
	SetPlayerSound(Myself,@22,9)
	SetPlayerSound(Myself,@22,10)
	SetPlayerSound(Myself,@22,11)
	SetPlayerSound(Myself,@22,12)
	SetPlayerSound(Myself,@22,13)
	SetPlayerSound(Myself,@23,18)
	SetPlayerSound(Myself,@24,19)
	SetPlayerSound(Myself,@25,20)
	SetPlayerSound(Myself,@26,21)
	SetPlayerSound(Myself,@27,22)
	SetPlayerSound(Myself,@28,23)
	SetPlayerSound(Myself,@29,24)
	SetPlayerSound(Myself,@30,25)
	SetPlayerSound(Myself,@31,26)
	SetPlayerSound(Myself,@32,27)
	SetPlayerSound(Myself,@33,28)
	SetPlayerSound(Myself,@31,29)
	SetPlayerSound(Myself,@32,30)
	SetPlayerSound(Myself,@33,31)
	SetPlayerSound(Myself,@34,32)
	SetPlayerSound(Myself,@35,33)
	SetPlayerSound(Myself,@36,34)
	SetPlayerSound(Myself,@34,35)
	SetPlayerSound(Myself,@35,36)
	SetPlayerSound(Myself,@36,37)
	SetPlayerSound(Myself,@34,38)
	SetPlayerSound(Myself,@37,39)
	SetPlayerSound(Myself,@38,40)
	SetPlayerSound(Myself,@39,41)
	SetPlayerSound(Myself,@40,42)
	SetPlayerSound(Myself,@41,43)
	SetPlayerSound(Myself,@42,44)
	SetPlayerSound(Myself,@43,47)
	SetPlayerSound(Myself,@44,50)
	SetPlayerSound(Myself,@45,53)
	SetPlayerSound(Myself,@46,54)
	SetPlayerSound(Myself,@47,55)
	SetPlayerSound(Myself,@48,58)
	SetPlayerSound(Myself,@49,59)
	SetPlayerSound(Myself,@31,62)
	SetPlayerSound(Myself,@31,63)
	SetPlayerSound(Myself,@32,64)
	SetPlayerSound(Myself,@50,74)~ EXIT
END

IF ~~ ViconiaPID1.1
	SAY @51
	IF ~~ EXIT
END

IF ~~ ViconiaPID1.2
	SAY @52
	IF ~~ EXIT
END

IF ~~ ViconiaPID1.3
	SAY @53
	IF ~~ EXIT
END

IF ~~ ViconiaPID1.4
	SAY @54
	IF ~~ EXIT
END

IF ~~ ViconiaPID1.5
	SAY @55
	IF ~~ EXIT
END

IF ~~ ViconiaPID1.6
	SAY @56
	IF ~~ EXIT
END

IF ~~ ViconiaPID1.7
	SAY @57
	IF ~~ EXIT
END

IF ~~ ViconiaPID1.8
	SAY @58
	IF ~~ EXIT
END

IF ~~ ViconiaPID2.1
	SAY @59
	IF ~~ EXIT
END

IF ~~ ViconiaPID2.2
	SAY @60
	IF ~~ EXIT
END

IF ~~ ViconiaPID2.3
	SAY @61
	IF ~~ EXIT
END

IF ~~ ViconiaPID2.4
	SAY @62
	IF ~~ EXIT
END

IF ~~ ViconiaPID2.5
	SAY @63
	= @64
	IF ~~ EXIT
END

IF ~~ ViconiaPID2.6
	SAY @65
	IF ~~ EXIT
END

IF ~~ ViconiaPID2.7
SAY @66
IF ~~ EXIT
END

IF ~~ ViconiaPID2.8
SAY @67
IF ~~ EXIT
END

IF ~~ ViconiaPID3.1
SAY @68
IF ~~ EXIT
END

IF ~~ ViconiaPID3.2
SAY @69
= @70
IF ~~ EXIT
END

IF ~~ ViconiaPID3.3
SAY @71
IF ~~ EXIT
END

IF ~~ ViconiaPID3.4
SAY @72
IF ~~ EXIT
END

IF ~~ ViconiaPID3.5
SAY @73
++ @74 + ViconiaPID3.5A
++ @75 + ViconiaPID3.5A
++ @76 + ViconiaPID3.5B
++ @77 + ViconiaPID3.5B
END

IF ~~ ViconiaPID3.5A
SAY @78
IF ~~ EXIT
END

IF ~~ ViconiaPID3.5B
SAY @79
IF ~~ EXIT
END

IF ~~ ViconiaPID3.6
SAY @80
IF ~~ EXIT
END

IF ~~ ViconiaPID3.7
SAY @81
IF ~~ EXIT
END

IF ~~ ViconiaPID3.8
SAY @82
IF ~~ EXIT
END

IF ~~ VICHSuccess
SAY @83
IF ~~ THEN DO ~SetGlobal("X#VICHdone","GLOBAL",1)~ EXIT
END

IF ~~ VICHFailure1
SAY @84
IF ~~ THEN EXIT
END

IF ~~ VICHFailure2
SAY @85
IF ~~ THEN EXIT
END

IF ~~ VICHFailure3
SAY @86
IF ~~ THEN EXIT
END

IF ~~ VICHFailure4
SAY @87
IF ~~ THEN EXIT
END

END

APPEND ~%SKIE_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN SKCH
SAY @88
++ @89 EXIT

+ ~Global("X#SKCHdone","GLOBAL",1) RandomNum(4,1)~ + @90 + SKCHFailure1
+ ~Global("X#SKCHdone","GLOBAL",1) RandomNum(4,2)~ + @90 + SKCHFailure2
+ ~Global("X#SKCHdone","GLOBAL",1) RandomNum(4,3)~ + @90 + SKCHFailure3
+ ~Global("X#SKCHdone","GLOBAL",1) RandomNum(4,4)~ + @90 + SKCHFailure4

+ ~!Global("X#SKCHdone","GLOBAL",1) RandomNum(5,1)~ + @91 + SKCHSuccess
+ ~!Global("X#SKCHdone","GLOBAL",1) RandomNum(5,2)~ + @91 + SKCHFailure1
+ ~!Global("X#SKCHdone","GLOBAL",1) RandomNum(5,3)~ + @91 + SKCHFailure2
+ ~!Global("X#SKCHdone","GLOBAL",1) RandomNum(5,4)~ + @91 + SKCHFailure3
+ ~!Global("X#SKCHdone","GLOBAL",1) RandomNum(5,5)~ + @91 + SKCHFailure4

+ ~!Global("X#SKCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @92 + SKCHSuccess
+ ~!Global("X#SKCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @92 + SKCHFailure1

+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @92 + SKCHSuccess
+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @92 + SKCHFailure1
+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @92 + SKCHFailure2
+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @92 + SKCHFailure3
+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @92 + SKCHFailure4

+ ~!Global("X#SKCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @93 + SKCHSuccess
+ ~!Global("X#SKCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @93 + SKCHFailure2

+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @93 + SKCHSuccess
+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @93 + SKCHFailure1
+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @93 + SKCHFailure2
+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @93 + SKCHFailure3
+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @93 + SKCHFailure4

+ ~!Global("X#SKCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @94 + SKCHSuccess
+ ~!Global("X#SKCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @94 + SKCHFailure3

+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @94 + SKCHSuccess
+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @94 + SKCHFailure1
+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @94 + SKCHFailure3
+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @94 + SKCHFailure2
+ ~!Global("X#SKCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @94 + SKCHFailure4

+ ~InParty("eldoth") !Dead("eldoth") GlobalLT("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,1) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @95 + X#SkieSeri1
+ ~InParty("eldoth") !Dead("eldoth") GlobalLT("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,2) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @95 + X#SkieSeri2
+ ~InParty("eldoth") !Dead("eldoth") GlobalLT("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,3) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @95 + X#SkieSeri3
+ ~InParty("eldoth") !Dead("eldoth") GlobalLT("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,4) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @95 + X#SkieSeri4

+ ~InParty("eldoth") !Dead("eldoth") Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,1) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @95 + X#SkieSeri1
+ ~InParty("eldoth") !Dead("eldoth") Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,2) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @95 + X#SkieSeri2
+ ~InParty("eldoth") !Dead("eldoth") Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,3) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @95 + X#SkieSeri3
+ ~InParty("eldoth") !Dead("eldoth") Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,4) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @95 + X#SkieSeri5

+ ~!Dead("eldoth") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%")
!AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @95 + X#SkieSeri6

+ ~!Dead("eldoth") OR(2) AreaCheck("%IsleofBalduranS%") AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @95 + X#SkieSeri7

+ ~Dead("eldoth")~ + @95 + X#SkieSeri8

+ ~InParty("eldoth") !Dead("eldoth") RandomNum(6,1)~ + @96 + X#SkSuit1
+ ~InParty("eldoth") !Dead("eldoth") RandomNum(6,2)~ + @96 + X#SkSuit2
+ ~InParty("eldoth") !Dead("eldoth") RandomNum(6,3)~ + @96 + X#SkSuit3
+ ~InParty("eldoth") !Dead("eldoth") RandomNum(6,4)~ + @96 + X#SkSuit4
+ ~InParty("eldoth") !Dead("eldoth") RandomNum(6,5)~ + @96 + X#SkSuit5
+ ~InParty("eldoth") !Dead("eldoth") RandomNum(6,6)~ + @96 + X#SkSuit6

+ ~!InParty("eldoth") !Dead("eldoth") RandomNum(4,1)~ + @96 + X#SkSuit1
+ ~!InParty("eldoth") !Dead("eldoth") RandomNum(4,2)~ + @96 + X#SkSuit2
+ ~!InParty("eldoth") !Dead("eldoth") RandomNum(4,3)~ + @96 + X#SkSuit3
+ ~!InParty("eldoth") !Dead("eldoth") RandomNum(4,4)~ + @96 + X#SkSuit4

+ ~GlobalLT("X#SkieDeadELPCINITCounter","GLOBAL",10)~ + @96 + X#SkSuit7

+ ~Global("X#SkieDeadELPCINITCounter","GLOBAL",10)~ + @96 + X#SkSuit8

+ ~%VoiceStrange%~ + @97 + SkieVoice

END

/* SetPlayerSound entries for _SKIE.CRE... */
IF ~~ SkieVoice
SAY @11
IF ~~ THEN DO ~SetName(@98)
SetPlayerSound(Myself,@99,1)
SetPlayerSound(Myself,@100,2)
SetPlayerSound(Myself,@101,3)
SetPlayerSound(Myself,@102,4)
SetPlayerSound(Myself,@103,5)
SetPlayerSound(Myself,@104,6)
SetPlayerSound(Myself,@105,7)
SetPlayerSound(Myself,@106,8)
SetPlayerSound(Myself,@107,9)
SetPlayerSound(Myself,@107,10)
SetPlayerSound(Myself,@107,11)
SetPlayerSound(Myself,@107,12)
SetPlayerSound(Myself,@107,13)
SetPlayerSound(Myself,@108,18)
SetPlayerSound(Myself,@109,19)
SetPlayerSound(Myself,@110,20)
SetPlayerSound(Myself,@111,21)
SetPlayerSound(Myself,@112,22)
SetPlayerSound(Myself,@113,23)
SetPlayerSound(Myself,@114,24)
SetPlayerSound(Myself,@115,25)
SetPlayerSound(Myself,@116,26)
SetPlayerSound(Myself,@117,27)
SetPlayerSound(Myself,@118,28)
SetPlayerSound(Myself,@116,29)
SetPlayerSound(Myself,@117,30)
SetPlayerSound(Myself,@118,31)
SetPlayerSound(Myself,@119,32)
SetPlayerSound(Myself,@120,33)
SetPlayerSound(Myself,@121,34)
SetPlayerSound(Myself,@119,35)
SetPlayerSound(Myself,@120,36)
SetPlayerSound(Myself,@121,37)
SetPlayerSound(Myself,@119,38)
SetPlayerSound(Myself,@122,39)
SetPlayerSound(Myself,@123,40)
SetPlayerSound(Myself,@124,41)
SetPlayerSound(Myself,@125,42)
SetPlayerSound(Myself,@126,43)
SetPlayerSound(Myself,@127,47)
SetPlayerSound(Myself,@100,48)
SetPlayerSound(Myself,@128,49)
SetPlayerSound(Myself,@129,53)
SetPlayerSound(Myself,@130,54)
SetPlayerSound(Myself,@131,55)
SetPlayerSound(Myself,@132,58)
SetPlayerSound(Myself,@133,59)
SetPlayerSound(Myself,@116,62)
SetPlayerSound(Myself,@116,63)
SetPlayerSound(Myself,@117,64)
SetPlayerSound(Myself,@134,74)~EXIT
END

IF ~~ X#SkSuit1
SAY @135
IF ~~ THEN EXIT
END

IF ~~ X#SkSuit2
SAY @136
IF ~~ THEN EXIT
END

IF ~~ X#SkSuit3
SAY @137
IF ~~ THEN EXIT
END

IF ~~ X#SkSuit4
SAY @138
IF ~~ THEN EXIT
END

IF ~~ X#SkSuit5
SAY @139
IF ~~ THEN EXIT
END

IF ~~ X#SkSuit6
SAY @140
IF ~~ THEN EXIT
END

IF ~~ X#SkSuit7
SAY @141
IF ~~ THEN DO ~IncrementGlobal("X#SkieDeadELPCINITCounter","GLOBAL",1)~ EXIT
END

IF ~~ X#SkSuit8
SAY @141
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ X#SkieSeri1
SAY @142
IF ~~ THEN EXIT
END

IF ~~ X#SkieSeri2
SAY @143
IF ~~ THEN EXIT
END

IF ~~ X#SkieSeri3
SAY @144
IF ~~ THEN EXIT
END

IF ~~ X#SkieSeri4
SAY @145
IF ~~ THEN EXIT

END

IF ~~ X#SkieSeri5
SAY @146
IF ~~ THEN EXIT
END

IF ~~ X#SkieSeri6
SAY @147
IF ~~ THEN EXIT
END

IF ~~ X#SkieSeri7
SAY @148
IF ~~ THEN EXIT
END

IF ~~ X#SkieSeri8
SAY @149
IF ~~ THEN EXIT
END

IF ~~ SKCHSuccess
SAY @150
= @151
= @152
IF ~~ THEN DO ~SetGlobal("X#SKCHdone","GLOBAL",1)~ EXIT
END

IF ~~ SKCHFailure1
SAY @153
IF ~~ THEN EXIT
END

IF ~~ SKCHFailure2
SAY @154
IF ~~ THEN EXIT
END

IF ~~ SKCHFailure3
SAY @155
IF ~~ THEN EXIT
END

IF ~~ SKCHFailure4
SAY @156
IF ~~ THEN EXIT
END

END


APPEND ~%SHARTEEL_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN SHCH
SAY @157
++ @158 EXIT
+ ~Gender(Player1,MALE) Global("X#SHCHdone","GLOBAL",1) RandomNum(4,1)~ + @159 + SHCHFailure1
+ ~Gender(Player1,MALE) Global("X#SHCHdone","GLOBAL",1) RandomNum(4,2)~ + @159 + SHCHFailure2
+ ~Gender(Player1,MALE) Global("X#SHCHdone","GLOBAL",1) RandomNum(4,3)~ + @159 + SHCHFailure3
+ ~Gender(Player1,MALE) Global("X#SHCHdone","GLOBAL",1) RandomNum(4,4)~ + @159 + SHCHFailure4
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) RandomNum(5,1)~ + @160 + SHCHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) RandomNum(5,2)~ + @160 + SHCHFailure1
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) RandomNum(5,3)~ + @160 + SHCHFailure2
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) RandomNum(5,4)~ + @160 + SHCHFailure3
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) RandomNum(5,5)~ + @160 + SHCHFailure4
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @161 + SHCHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @161 + SHCHFailure1
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @161 + SHCHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @161 + SHCHFailure1
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @161 + SHCHFailure2
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @161 + SHCHFailure3
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @161 + SHCHFailure4
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @162 + SHCHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @162 + SHCHFailure2
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @162 + SHCHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @162 + SHCHFailure1
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @162 + SHCHFailure2
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @162 + SHCHFailure3
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @162 + SHCHFailure4
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @163 + SHCHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @163 + SHCHFailure3
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @163 + SHCHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @163 + SHCHFailure1
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @163 + SHCHFailure3
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @163 + SHCHFailure2
+ ~Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @163 + SHCHFailure4
+ ~!Gender(Player1,MALE) Global("X#SHCHdone","GLOBAL",1) RandomNum(4,1)~ + @159 + SHCHFailure1
+ ~!Gender(Player1,MALE) Global("X#SHCHdone","GLOBAL",1) RandomNum(4,2)~ + @159 + SHCHFailure2
+ ~!Gender(Player1,MALE) Global("X#SHCHdone","GLOBAL",1) RandomNum(4,3)~ + @159 + SHCHFailure3
+ ~!Gender(Player1,MALE) Global("X#SHCHdone","GLOBAL",1) RandomNum(4,4)~ + @159 + SHCHFailure4
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) RandomNum(5,1)~ + @160 + SHCHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) RandomNum(5,2)~ + @160 + SHCHFailure1
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) RandomNum(5,3)~ + @160 + SHCHFailure2
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) RandomNum(5,4)~ + @160 + SHCHFailure3
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) RandomNum(5,5)~ + @160 + SHCHFailure4
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @161 + SHCHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @161 + SHCHFailure1
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @161 + SHCHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @161 + SHCHFailure1
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @161 + SHCHFailure2
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @161 + SHCHFailure3
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @161 + SHCHFailure4
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @162 + SHCHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @162 + SHCHFailure2
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @162 + SHCHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @162 + SHCHFailure1
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @162 + SHCHFailure2
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @162 + SHCHFailure3
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @162 + SHCHFailure4
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @163 + SHCHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @163 + SHCHFailure3
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @163 + SHCHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @163 + SHCHFailure1
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @163 + SHCHFailure3
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @163 + SHCHFailure2
+ ~!Gender(Player1,MALE) !Global("X#SHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @163 + SHCHFailure4
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,1)~ + @164 + SHWaist1
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,2)~ + @164 + SHWaist2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,3)~ + @164 + SHWaist3
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,4)~ + @164 + SHWaist4
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,1)~ + @165 + SHWink1
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,2)~ + @165 + SHWink2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,3)~ + @165 + SHWink3
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,4)~ + @165 + SHWink4
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) !Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1)~ + @166 + SHKiss1
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,1)~ + @167 + SHMen1
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,2)~ + @167 + SHMen2
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,3)~ + @167 + SHMen3
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,4)~ + @167 + SHMen4
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,5)~ + @167 + SHMen5
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalGT("X#SharKind","GLOBAL",6) GlobalLT("X#SharKind","GLOBAL",11) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,1)~ + @167 + SHMen6
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalGT("X#SharKind","GLOBAL",6) GlobalLT("X#SharKind","GLOBAL",11) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,2)~ + @167 + SHMen7
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalGT("X#SharKind","GLOBAL",6) GlobalLT("X#SharKind","GLOBAL",11) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,3)~ + @167 + SHMen8
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalGT("X#SharKind","GLOBAL",10) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,1)~ + @167 + SHMen9
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalGT("X#SharKind","GLOBAL",10) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,2)~ + @167 + SHMen10
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalGT("X#SharKind","GLOBAL",10) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,3)~ + @167 + SHMen11
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalGT("X#SharKind","GLOBAL",10) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,4)~ + @167 + SHMen12
+ ~!Global("X#SharInterest","GLOBAL",3) Global("X#ShartSex","GLOBAL",1) GlobalGT("X#SharKind","GLOBAL",10) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,5)~ + @167 + SHMen13
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(11,1)~ + @168 + SharPrai1
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(11,2)~ + @168 + SharPrai2
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(11,3)~ + @168 + SharPrai3
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(11,4)~ + @168 + SharPrai4
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(11,5)~ + @168 + SharPrai5
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(11,6)~ + @168 + SharPrai6
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(11,7)~ + @168 + SharPrai7
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(11,8)~ + @168 + SharPrai8
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(11,9)~ + @168 + SharPrai9
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(11,10)~ + @168 + SharPrai10
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(11,11)~ + @168 + SharPrai11
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,1) Gender(Player1,FEMALE)~ + @169 + X#ShMen1
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,2) Gender(Player1,FEMALE)~ + @169 + X#ShMen2
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,3) Gender(Player1,FEMALE)~ + @169 + X#ShMen3
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,4) Gender(Player1,FEMALE)~ + @169 + X#ShMen4
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,5) Gender(Player1,FEMALE)~ + @169 + X#ShMen5
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,6) Gender(Player1,FEMALE)~ + @169 + X#ShMen6
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,7) Gender(Player1,FEMALE)~ + @169 + X#ShMen7
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,8) Gender(Player1,FEMALE)~ + @169 + X#ShMen8
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,9) Gender(Player1,FEMALE)~ + @169 + X#ShMen9
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,10) Gender(Player1,FEMALE)~ + @169 + X#ShMen10
+ ~Global("X#SharPIDMen","GLOBAL",0)~ + @170 + SharUnfa
+ ~Global("X#SharPIDMen","GLOBAL",1)~ + @170 + SharUnfa12
+ ~Global("X#SharPIDMen","GLOBAL",2)~ + @170 + SharUnfa13
+ ~Global("X#SharPIDMen","GLOBAL",3)~ + @170 + SharUnfa14
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,1)~ + @171 + SharInsi1
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,2)~ + @171 + SharInsi2
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,3)~ + @171 + SharInsi3
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,4)~ + @171 + SharInsi4
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,5)~ + @171 + SharInsi5
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,1)~ + @172 + SharLigh1
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,2)~ + @172 + SharLigh2
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,3)~ + @172 + SharLigh3
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,4)~ + @172 + SharLigh4
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,5)~ + @172 + SharLigh5
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(2,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) AreaType(CITY) !AreaType(OUTDOOR)~ + @173 + Wrestle1
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(2,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) AreaType(CITY) !AreaType(OUTDOOR)~ + @173 + Wrestle2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) CheckStatGT(Player1,16,STR) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(2,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @174 + STBottomSqueeze1Strong
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) CheckStatLT(Player1,17,STR) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @174 + STBottomSqueeze1Weak
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) CheckStatLT(Player1,17,STR) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @174 + STBottomSqueeze2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) CheckStatLT(Player1,17,STR) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @174 + STBottomSqueeze3
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @175 + STSpine2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @175 + STSpine3
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @175 + STSpine4
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @175 + STSpineL1
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @175 + STSpineL2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @175 + STSpineL3
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @176 + STSmile1
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @176 + STSmile2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @176 + STSmile3
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,4) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @176 + STSmile4
+ ~GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(2,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @177 + STWonder1
+ ~GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(2,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @178 + STWonder2
+ ~GlobalGT("X#SharKind","GLOBAL",6) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(2,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @178 + STWonder3
+ ~GlobalGT("X#SharKind","GLOBAL",6) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(2,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @178 + STWonder4
+ ~GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(6,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @179 + STTouchFace1
+ ~GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(6,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @180 + STTouchFace2
+ ~GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(6,3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @179 + STTouchFace3
+ ~GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(6,4) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @179 + STTouchFace4
+ ~GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(6,5) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @179 + STTouchFace5
+ ~GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(6,6) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @179 + STTouchFace6
+ ~GlobalGT("X#SharKind","GLOBAL",6) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @179 + STTouchFace7
+ ~GlobalGT("X#SharKind","GLOBAL",6) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @179 + STTouchFace8
+ ~GlobalGT("X#SharKind","GLOBAL",6) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @179 + STTouchFace9
+ ~GlobalGT("X#SharKind","GLOBAL",6) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,4) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @179 + STTouchFace10
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @181 + STHands1
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @181 + STHands2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",2) GlobalLT("X#SharInterestTalk","GLOBAL",21) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @181 + STHands3
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @182 + STArms1
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @182 + STArms2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @182 + STArms3
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,4) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @182 + STArms4
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @183 + STTickle1
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @183 + STTickle2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @183 + STTickle3
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,4) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @183 + STTickle3
+ ~GlobalGT("X#SharKind","GLOBAL",6) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(2,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @184 + STShove1
+ ~GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(2,1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @184 + STShove2
+ ~GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(2,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @184 + STShove3
+ ~GlobalGT("X#SharKind","GLOBAL",6) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(2,2) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @184 + STShove4
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) AreaType(OUTDOOR) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,1)~ + @185 + STRoseX
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) AreaType(OUTDOOR) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,2)~ + @185 + STRose1
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) AreaType(OUTDOOR) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,3)~ + @185 + STRose2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) AreaType(OUTDOOR) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,4)~ + @185 + STRose3
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) AreaType(OUTDOOR) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,5)~ + @185 + STRose1
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) AreaType(OUTDOOR) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,6)~ + @185 + STRose2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) AreaType(OUTDOOR) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,7)~ + @185 + STRose3
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) AreaType(OUTDOOR) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,8)~ + @185 + STRose1
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) AreaType(OUTDOOR) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,9)~ + @185 + STRose2
+ ~GlobalGT("X#SharInterestTalk","GLOBAL",20) AreaType(OUTDOOR) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(10,10)~ + @185 + STRose3
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) HasItem("%tutu_var%DAGG04",Player1) Global("X#ShDagr","LOCALS",0)~ + @186 + STDagger1
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) HasItem("%tutu_var%DAGG04",Player1) Global("X#ShDagr","LOCALS",1)~ + @186 + STDagger2
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) HasItem("%tutu_var%DAGG04",Player1) Global("X#ShDagr","LOCALS",2)~ + @186 + STDagger3
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) HasItem("%tutu_var%DAGG04",Player1) Global("X#ShDagr","LOCALS",3)~ + @186 + STDagger4
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,1)~ + @187 + STFight1
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,2)~ + @187 + STFight2
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(3,3)~ + @187 + STFight3
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,1)~ + @188 + StHug1
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,2)~ + @188 + StHug2
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,3)~ + @188 + StHug3
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) GlobalLT("X#SharKind","GLOBAL",7) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,4)~ + @188 + StHug4
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) GlobalGT("X#SharKind","GLOBAL",6) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,1)~ + @188 + StHugL1
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) GlobalGT("X#SharKind","GLOBAL",6) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,2)~ + @188 + StHugL2
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) GlobalGT("X#SharKind","GLOBAL",6) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,3)~ + @188 + StHugL3
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) GlobalGT("X#SharKind","GLOBAL",6) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,4)~ + @188 + StHugL4
+ ~!Global("X#SharAmulet","GLOBAL",1) Global("X#SharRing","GLOBAL",3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) PartyHasItem("%tutu_var%AMUL13") !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,1)~ + @189 + SharAmulet1.1
+ ~!Global("X#SharAmulet","GLOBAL",1) Global("X#SharRing","GLOBAL",3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) PartyHasItem("%tutu_var%AMUL13") !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,2)~ + @189 + SharAmulet1.2
+ ~!Global("X#SharAmulet","GLOBAL",1) Global("X#SharRing","GLOBAL",3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) PartyHasItem("%tutu_var%AMUL13") !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,3)~ + @189 + SharAmulet1.3
+ ~!Global("X#SharAmulet","GLOBAL",1) Global("X#SharRing","GLOBAL",3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) PartyHasItem("%tutu_var%AMUL13") !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,4)~ + @189 + SharAmulet1.4
+ ~!Global("X#SharAmulet","GLOBAL",1) Global("X#SharRing","GLOBAL",3) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) PartyHasItem("%tutu_var%AMUL13") !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,5)~ + @189 + SharAmulet1.5
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,1) !Class(Player1,BARD_ALL)~ + @190 + ShSong1
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,2) !Class(Player1,BARD_ALL)~ + @190 + ShSong2
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,3) !Class(Player1,BARD_ALL)~ + @190 + ShSong3
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,4) !Class(Player1,BARD_ALL)~ + @190 + ShSong4
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,5) !Class(Player1,BARD_ALL)~ + @190 + ShSong5
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,1) Class(Player1,BARD_ALL)~ + @190 + ShSongB1
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,2) Class(Player1,BARD_ALL)~ + @190 + ShSongB2
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,3) Class(Player1,BARD_ALL)~ + @190 + ShSongB3
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,4) Class(Player1,BARD_ALL)~ + @190 + ShSongB4
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(5,5) Class(Player1,BARD_ALL)~ + @190 + ShSongB5
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,1)~ + @191 + SharBlood1
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,2)~ + @191 + SharBlood2
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,3)~ + @191 + SharBlood3
+ ~OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2) !Global("X#SharDisableFlirts","GLOBAL",1) RandomNum(4,4)~ + @191 + SharBlood4
+ ~!Global("X#SharDisableFlirts","GLOBAL",1) OR(2) Global("X#SharInterest","GLOBAL",1) Global("X#SharInterest","GLOBAL",2)~ + @192 DO ~SetGlobal("X#SharDisableFlirts","GLOBAL",1)~ EXIT
+ ~%VoiceStrange%~ + @193 + SharVoice
END

/* SetPlayerSound entries for _SHARTE.CRE... */
IF ~~ SharVoice
SAY @11
IF ~~ THEN DO ~SetName(@194)
SetPlayerSound(Myself,@195,0)
SetPlayerSound(Myself,@196,1)
SetPlayerSound(Myself,@197,2)
SetPlayerSound(Myself,@198,3)
SetPlayerSound(Myself,@199,4)
SetPlayerSound(Myself,@200,5)
SetPlayerSound(Myself,@201,6)
SetPlayerSound(Myself,@202,7)
SetPlayerSound(Myself,@203,8)
SetPlayerSound(Myself,@204,9)
SetPlayerSound(Myself,@204,10)
SetPlayerSound(Myself,@204,11)
SetPlayerSound(Myself,@204,12)
SetPlayerSound(Myself,@204,13)
SetPlayerSound(Myself,@205,18)
SetPlayerSound(Myself,@206,19)
SetPlayerSound(Myself,@207,20)
SetPlayerSound(Myself,@208,21)
SetPlayerSound(Myself,@209,22)
SetPlayerSound(Myself,@210,23)
SetPlayerSound(Myself,@211,24)
SetPlayerSound(Myself,@212,25)
SetPlayerSound(Myself,@213,26)
SetPlayerSound(Myself,@214,27)
SetPlayerSound(Myself,@215,28)
SetPlayerSound(Myself,@213,29)
SetPlayerSound(Myself,@214,30)
SetPlayerSound(Myself,@215,31)
SetPlayerSound(Myself,@216,32)
SetPlayerSound(Myself,@217,33)
SetPlayerSound(Myself,@218,34)
SetPlayerSound(Myself,@216,35)
SetPlayerSound(Myself,@217,36)
SetPlayerSound(Myself,@218,37)
SetPlayerSound(Myself,@216,38)
SetPlayerSound(Myself,@219,39)
SetPlayerSound(Myself,@220,40)
SetPlayerSound(Myself,@221,41)
SetPlayerSound(Myself,@222,42)
SetPlayerSound(Myself,@223,43)
SetPlayerSound(Myself,@224,44)
SetPlayerSound(Myself,@225,45)
SetPlayerSound(Myself,@226,47)
SetPlayerSound(Myself,@227,53)
SetPlayerSound(Myself,@228,54)
SetPlayerSound(Myself,@229,55)
SetPlayerSound(Myself,@230,58)
SetPlayerSound(Myself,@231,59)
SetPlayerSound(Myself,@213,62)
SetPlayerSound(Myself,@213,63)
SetPlayerSound(Myself,@214,64)
SetPlayerSound(Myself,@232,74)~ EXIT
END

IF ~~ SharLigh5
SAY @233
IF ~~ THEN EXIT
END

IF ~~ SharLigh4
SAY @234
= @235
IF ~~ THEN EXIT
END


IF ~~ SharLigh3
SAY @236
IF ~~ THEN EXIT
END

IF ~~ SharLigh2
SAY @237
IF ~~ THEN EXIT
END

IF ~~ SharLigh1
SAY @238
IF ~~ THEN EXIT
END

IF ~~ SharInsi5
SAY @239
IF ~~ THEN EXIT
END

IF ~~ SharInsi4
SAY @240
IF ~~ THEN EXIT
END

IF ~~ SharInsi3
SAY @241
IF ~~ THEN EXIT
END

IF ~~ SharInsi2
SAY @242
IF ~~ THEN EXIT
END

IF ~~ SharInsi1
SAY @243
IF ~~ THEN EXIT
END

IF ~~ SharUnfa
SAY @244
++ @245 + SharUnfa1
++ @246 + SharUnfa2
+ ~Gender(Player1,MALE)~ + @247 + SharUnfa3
+ ~Gender(Player1,FEMALE)~ + @247 + SharUnfa4
++ @248 + SharUnfa5
END

IF ~~ SharUnfa1
SAY @249
+ ~RandomNum(2,1)~ + @250 + SharUnfa6
+ ~RandomNum(2,2)~ + @250 + SharUnfa7
++ @251 + SharUnfa8
++ @252 + SharUnfa9
END

IF ~~ SharUnfa2
SAY @253
+ ~RandomNum(2,1)~ + @250 + SharUnfa6
+ ~RandomNum(2,2)~ + @250 + SharUnfa7
++ @251 + SharUnfa8
++ @252 + SharUnfa9
END

IF ~~ SharUnfa3
SAY @254
IF ~~ THEN DO ~LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ SharUnfa4
SAY @255
IF ~~ THEN DO ~LeaveParty()EscapeArea()~ EXIT
END

IF ~~ SharUnfa5
SAY @256
IF ~~ THEN DO ~LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ SharUnfa6
SAY @257
IF ~~ THEN DO ~SetGlobal("X#SharPIDMen","GLOBAL",1)~ EXIT
END

IF ~~ SharUnfa7
SAY @258
= @259
= @260
++ @261 + SharUnfa10
++ @251 + SharUnfa8
++ @252 + SharUnfa9
END

IF ~~ SharUnfa8
SAY @262
IF ~~ THEN DO ~SetGlobal("X#SharPIDMen","GLOBAL",1)~ EXIT
END
IF ~~ SharUnfa9
SAY @263
IF ~~ THEN DO ~SetGlobal("X#SharPIDMen","GLOBAL",1)~ EXIT
END

IF ~~ SharUnfa10
SAY @264
= @265
= @266
++ @261 + SharUnfa11
++ @251 + SharUnfa8
++ @252 + SharUnfa9
END

IF ~~ SharUnfa11
SAY @267
= @268
++ @251 + SharUnfa8
++ @252 + SharUnfa9
+ ~Gender(Player1,MALE)~ + @247 + SharUnfa3
+ ~Gender(Player1,FEMALE)~ + @247 + SharUnfa4
++ @248 + SharUnfa5
END

IF ~~ SharUnfa12
SAY @269
IF ~~ THEN DO ~SetGlobal("X#SharPIDMen","GLOBAL",2)~ EXIT
END

IF ~~ SharUnfa13
SAY @270
IF ~~ THEN DO ~SetGlobal("X#SharPIDMen","GLOBAL",3)~ EXIT
END

IF ~~ SharUnfa14
SAY @271
IF ~~ THEN DO ~ SetGlobal("X#SharPIDMen","GLOBAL",4) LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ X#ShMen10.3
SAY @272
IF ~~ THEN EXIT
END

IF ~~ X#ShMen10.2
SAY @273
IF ~~ THEN EXIT
END

IF ~~ X#ShMen10.1
SAY @274
IF ~~ THEN EXIT
END

IF ~~ X#ShMen10
SAY @275
++ @276 + X#ShMen10.1
++ @277 + X#ShMen10.2
++ @278 + X#ShMen10.3
END

IF ~~ X#ShMen9.3
SAY @279
IF ~~ THEN EXIT
END

IF ~~ X#ShMen9.2
SAY @280
IF ~~ THEN EXIT
END

IF ~~ X#ShMen9.1
SAY @281
IF ~~ THEN EXIT
END

IF ~~ X#ShMen9
SAY @282
++ @283 + X#ShMen9.1
++ @284 + X#ShMen9.2
++ @285 + X#ShMen9.3
END

IF ~~ X#ShMen8.2
SAY @286
IF ~~ THEN EXIT
END

IF ~~ X#ShMen8.1
SAY @287
IF ~~ THEN EXIT
END

IF ~~ X#ShMen8
SAY @288
++ @289 + X#ShMen8.1
++ @290 + X#ShMen8.2
END

IF ~~ X#ShMen7.3
SAY @291
IF ~~ THEN EXIT
END

IF ~~ X#ShMen7.2.1
SAY @292
IF ~~ THEN EXIT
END

IF ~~ X#ShMen7.2
SAY @293
++ @294 + X#ShMen7.2.1
++ @295 EXIT
END

IF ~~ X#ShMen7.1
SAY @296
IF ~~ THEN EXIT
END

IF ~~ X#ShMen7
SAY @297
++ @298 + X#ShMen7.1
++ @299 + X#ShMen7.2
++ @300 + X#ShMen7.3
END

IF ~~ X#ShMen6.3
SAY @301
IF ~~ THEN EXIT
END

IF ~~ X#ShMen6.2
SAY @302
IF ~~ THEN EXIT
END

IF ~~ X#ShMen6.1
SAY @303
IF ~~ THEN EXIT
END

IF ~~ X#ShMen6
SAY @304
++ @305 + X#ShMen6.1
++ @306 + X#ShMen6.2
++ @307 + X#ShMen6.3
END

IF ~~ X#ShMen5.2
SAY @308
IF ~~ THEN EXIT
END

IF ~~ X#ShMen5.1
SAY @309
IF ~~ THEN EXIT
END

IF ~~ X#ShMen5
SAY @310
++ @311 EXIT
++ @312 + X#ShMen5.1
++ @313 + X#ShMen5.2
END

IF ~~ X#ShMen4.3.2
SAY @314
IF ~~ THEN EXIT
END

IF ~~ X#ShMen4.3.1
SAY @315
IF ~~ THEN EXIT
END

IF ~~ X#ShMen4.3
SAY @316
++ @317 + X#ShMen4.3.1
++ @318 + X#ShMen4.3.2
END

IF ~~ X#ShMen4.2
SAY @319
IF ~~ EXIT
END

IF ~~ X#ShMen4.1
SAY @320
IF ~~ THEN EXIT
END

IF ~~ X#ShMen4
SAY @321
++ @322 + X#ShMen4.1
++ @323 + X#ShMen4.2
++ @324 + X#ShMen4.3
END

IF ~~ X#ShMen3.1.1
SAY @325
IF ~~ THEN EXIT
END

IF ~~ X#ShMen3.2
SAY @326
IF ~~ THEN EXIT
END

IF ~~ X#ShMen3.1
SAY @327
++ @328 + X#ShMen3.1.1
END

IF ~~ X#ShMen3
SAY @329
++ @330 + X#ShMen3.1
++ @331 + X#ShMen3.2
END

IF ~~ X#ShMen2
SAY @332
++ @333 + X#ShMen2.1
++ @334 + X#ShMen2.2
++ @335 + X#ShMen2.3
END

IF ~~ X#ShMen2.3
SAY @336
IF ~~ THEN EXIT
END

IF ~~ X#ShMen2.2
SAY @337
IF ~~ THEN EXIT
END

IF ~~ X#ShMen2.1
SAY @338
IF ~~ THEN EXIT
END

IF ~~ X#ShMen1
SAY @339
++ @340 + X#ShMen1.1
++ @341 + X#ShMen1.2
END

IF ~~ X#ShMen1.2
SAY @342
IF ~~ THEN EXIT
END

IF ~~ X#ShMen1.1
SAY @343
IF ~~ THEN EXIT
END

IF ~~ SharPrai1
SAY @344
IF ~~ THEN EXIT
END

IF ~~ SharPrai2
SAY @240
IF ~~ THEN EXIT
END

IF ~~ SharPrai3
SAY @345
IF ~~ THEN EXIT
END

IF ~~ SharPrai4
SAY @346
IF ~~ THEN EXIT
END

IF ~~ SharPrai5
SAY @347
IF ~~ THEN EXIT
END

IF ~~ SharPrai6
SAY @348
= @349
IF ~~ THEN EXIT
END

IF ~~ SharValiant
SAY @350
IF ~~ THEN EXIT
END

IF ~~ SharValiantAJ
SAY @351
IF ~~ THEN EXIT
END

IF ~~ SharBrave
SAY @352
IF ~~ THEN EXIT
END

IF ~~ SharBraveKh
SAY @353
IF ~~ THEN EXIT
END

IF ~~ SharSmart
SAY @354
IF ~~ THEN EXIT
END

IF ~~ SharSmartQu
SAY @355
IF ~~ THEN EXIT
END

IF ~~ SharLoyal
SAY @356
IF ~~ THEN EXIT
END

IF ~~ SharLoyalKi
SAY @357
IF ~~ THEN EXIT
END

IF ~~ SharUseful
SAY @358
IF ~~ THEN EXIT
END

IF ~~ SharUsefulMo
SAY @359
IF ~~ THEN EXIT
END

IF ~~ SharPragmatic
SAY @360
IF ~~ THEN EXIT
END

IF ~~ SharPragmaticKa
SAY @361
IF ~~ THEN EXIT
END

IF ~~ SharWise
SAY @362
IF ~~ THEN EXIT
END

IF ~~ SharWiseCo
SAY @363
IF ~~ THEN EXIT
END

IF ~~ SharRomantic
SAY @364
IF ~~ THEN EXIT
END

IF ~~ SharRomanticGa
SAY @365
IF ~~ THEN EXIT
END

IF ~~ SharInventive
SAY @366
IF ~~ THEN EXIT
END

IF ~~ SharInventiveXz
SAY @367
IF ~~ THEN EXIT
END

IF ~~ SharBrilliant
SAY @368
IF ~~ THEN EXIT
END

IF ~~ SharBrilliantEd
SAY @369
IF ~~ THEN EXIT
END

IF ~~ SharSweet
SAY @370
IF ~~ THEN EXIT
END

IF ~~ SharSweetEl
SAY @371
IF ~~ THEN EXIT
END

IF ~~ SharCheerful
SAY @372
IF ~~ THEN EXIT
END

IF ~~ SharCheerfulXa
SAY @373
IF ~~ THEN EXIT
END

IF ~~ SharStrong
SAY @374
IF ~~ THEN EXIT
END

IF ~~ SharStrongMi
SAY @375
IF ~~ THEN EXIT
END

IF ~~ SharLevel
SAY @376
IF ~~ THEN EXIT
END

IF ~~ SharLevelYe
SAY @377
IF ~~ THEN EXIT
END

IF ~~ SharSexyF
SAY @378
IF ~~ THEN EXIT
END

IF ~~ SharSexyM
SAY @379
IF ~~ THEN EXIT
END

IF ~~ SharAgree
SAY @380
IF ~~ THEN EXIT
END

IF ~~ SharPrai7
SAY @381
++ @382 EXIT
+ ~!InParty("ajantis")~ + @383 + SharValiant
+ ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ + @383 + SharValiantAJ
+ ~!InParty("khalid")~ + @384 + SharBrave
+ ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ + @384 + SharBraveKh
+ ~!InParty("quayle")~ + @385 + SharSmart
+ ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ + @385 + SharSmartQu
+ ~!InParty("kivan")~ + @386 + SharLoyal
+ ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ + @386 + SharLoyalKi
+ ~!InParty("montaron")~ + @387 + SharUseful
+ ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ + @387 + SharUsefulMo
+ ~!InParty("kagain")~ + @388 + SharPragmatic
+ ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ + @388 + SharPragmaticKa
+ ~!InParty("coran")~ + @389 + SharWise
+ ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ + @389 + SharWiseCo
+ ~!InParty("garrick")~ + @390 + SharRomantic
+ ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ + @390 + SharRomanticGa
+ ~!InParty("xzar")~ + @391 + SharInventive
+ ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ + @391 + SharInventiveXz
+ ~!InParty("edwin")~ + @392 + SharBrilliant
+ ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ + @392 + SharBrilliantEd
+ ~!InParty("eldoth")~ + @393 + SharSweet
+ ~InParty("eldoth") InMyArea("eldoth") !StateCheck("eldoth",CD_STATE_NOTVALID)~ + @393 + SharSweetEl
+ ~!InParty("xan")~ + @394 + SharCheerful
+ ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ + @394 + SharCheerfulXa
+ ~!InParty("minsc")~ + @395 + SharStrong
+ ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ + @395 + SharStrongMi
+ ~!InParty("yeslick")~ + @396 + SharLevel
+ ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ + @396 + SharLevelYe
+ ~Gender(Player1,FEMALE)~ + @397 + SharSexyF
+ ~Gender(Player1,MALE)~ + @397 + SharSexyM
++ @398 + SharAgree
END

IF ~~ SharPrai8
SAY @399
++ @400 + SharPrai8.1
++ @401 + SharPrai8.2
++ @402 + SharPrai8.3
END

IF ~~ SharPrai8.1
SAY @403
IF ~~ THEN EXIT
END

IF ~~ SharPrai8.2
SAY @404
IF ~~ THEN EXIT
END

IF ~~ SharPrai8.3
SAY @379
IF ~~ THEN EXIT
END

IF ~~ SharPrai9
SAY @405
IF ~~ THEN EXIT
END

IF ~~ SharPrai10
SAY @406
IF ~~ THEN EXIT
END

IF ~~ SharPrai11
SAY @407
IF ~~ THEN EXIT
END

/* Blood */

IF ~~ SharBlood1
SAY @408
+ ~RandomNum(3,1)~ + @409 + SharBlood1.1.1
+ ~RandomNum(3,2)~ + @409 + SharBlood1.1.2
+ ~RandomNum(3,3)~ + @409 + SharBlood3
++ @410 + SharBlood1.2
++ @411 + SharBlood1.3
END

IF ~~ SharBlood1.1.1
SAY @412
IF ~~ THEN EXIT
END

IF ~~ SharBlood1.1.2
SAY @413
IF ~~ THEN EXIT
END

IF ~~ SharBlood1.2
SAY @414
++ @415 + SharBlood1.2.1
END

IF ~~ SharBlood1.2.1
SAY @416

++ @417 + SharBlood1.2.2
++ @418 EXIT
END

IF ~~ SharBlood1.2.2
SAY @419
++ @420 + SharBlood1.2.3
++ @418 EXIT
END

IF ~~ SharBlood1.2.3
SAY @421
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3) ActionOverride("sharteel",LeaveParty()) ActionOverride("sharteel",Enemy()) ActionOverride("sharteel", Attack(Player1))~ EXIT
END

IF ~~ SharBlood1.3
SAY @422
++ @423 + SharBlood1.3.1
++ @415 + SharBlood1.2.1
++ @418 EXIT
END

IF ~~ SharBlood1.3.1
SAY @424
IF ~~ THEN EXIT
END

IF ~~ SharBlood2
SAY @425
IF ~~ THEN EXIT
END

IF ~~ SharBlood3
SAY @426
++ @427 + SharBlood3.1
++ @428 + SharBlood3.2
++ @429 + SharBlood3.3
++ @430 + SharBlood3.4
++ @431 + SharBlood3.5
END

IF ~~ SharBlood3.1
SAY @432
IF ~~ THEN EXIT
END

IF ~~ SharBlood3.2
SAY @433
IF ~~ THEN EXIT
END

IF ~~ SharBlood3.3
SAY @434
IF ~~ THEN EXIT
END

IF ~~ SharBlood3.4
SAY @435
IF ~~ THEN EXIT
END

IF ~~ SharBlood3.5
SAY @436
IF ~~ THEN EXIT
END

IF ~~ SharBlood4
SAY @437
IF ~~ THEN EXIT
END


//Song

IF ~~ ShSong1
SAY @438
IF ~~ THEN EXIT
END

IF ~~ ShSong2
SAY @439
IF ~~ THEN EXIT
END

IF ~~ ShSong3
SAY @440
IF ~~ THEN EXIT
END

IF ~~ ShSong4
SAY @441
IF ~~ THEN EXIT
END

IF ~~ ShSongB1
SAY @442
IF ~~ THEN EXIT
END

IF ~~ ShSongB2
SAY @439
IF ~~ THEN EXIT
END

IF ~~ ShSongB3
SAY @443
IF ~~ THEN EXIT
END

IF ~~ ShSongB4
SAY @441
IF ~~ THEN EXIT
END

IF ~~ ShSongB5.1
SAY @444
IF ~~ THEN EXIT
END

IF ~~ ShSongB5.2
SAY @445
IF ~~ THEN EXIT
END

IF ~~ ShSongB5.3
SAY @446
IF ~~ THEN GOTO ShSong3
END

IF ~~ ShSongB5.4
SAY @447
IF ~~ THEN GOTO ShSong3
END

IF ~~ ShSongB5.5
SAY @448
IF ~~ THEN EXIT
END

IF ~~ ShSongB5.6
SAY @449
IF ~~ THEN EXIT
END

IF ~~ ShSongB5.7
SAY @450
IF ~~ THEN EXIT
END
IF ~~ ShSongB5.8
SAY @451
IF ~~ THEN EXIT
END

/* Bloodstone Amulet */

IF ~~ SharAmulet1.1
SAY @452
IF ~~ THEN DO ~SetGlobal("X#SharAmulet","GLOBAL",1) TakePartyItem("%tutu_var%AMUL13") DestroyItem("%tutu_var%AMUL13")~ EXIT
END

IF ~~ SharAmulet1.2
SAY @453
IF ~~ EXIT
END

IF ~~ SharAmulet1.3
SAY @454
IF ~~ EXIT
END

IF ~~ SharAmulet1.4
SAY @455
IF ~~ THEN DO ~SetGlobal("X#SharAmulet","GLOBAL",1) TakePartyItem("%tutu_var%AMUL13") DestroyItem("%tutu_var%AMUL13")~ EXIT
END

IF ~~ SharAmulet1.5
SAY @456
IF ~~ EXIT
END

/* Hug */


IF ~~ StHug1
SAY @457
IF ~~ THEN EXIT
END

IF ~~ StHug2
SAY @458
IF ~~ THEN EXIT
END

IF ~~ StHug3
SAY @459
IF ~~ THEN EXIT
END

IF ~~ StHug4
SAY @460
IF ~~ THEN EXIT
END

IF ~~ StHugL1
SAY @461
IF ~~ THEN EXIT
END

IF ~~ StHugL2
SAY @462
IF ~~ THEN EXIT
END

IF ~~ StHugL3
SAY @463
IF ~~ THEN EXIT
END

IF ~~ StHugL4
SAY @464
= @465
IF ~~ THEN EXIT
END

//Wrestle

IF ~~ Wrestle1
SAY @466
= @467
= @468
IF ~~ THEN GOTO Wrestle
END

IF ~~ Wrestle2
SAY @469
IF ~~ THEN GOTO Wrestle
END


IF ~~ Wrestle
SAY @470
+ ~CheckStatGT(Player1,14,STR) !CheckStatGT(Player1,18,STR)~ + @471 + WrA
+ ~CheckStatGT(Player1,14,STR) !CheckStatLT(Player1,18,STR)~ + @472 + WrB
+ ~!CheckStatGT(Player1,14,STR)~ + @473 + WrC
+ ~CheckStatGT(Player1,18,STR)~ + @471 + WrD
+ ~CheckStatGT(Player1,18,STR)~ + @474 + WrE
+ ~CheckStatGT(Player1,18,STR)~ + @475 + WrF
END

IF ~~ WrA
SAY @476
IF ~~ THEN EXIT
END

IF ~~ WrB
SAY @477
= @478
= @479
= @480
IF ~~ THEN EXIT
END

IF ~~ WrC
SAY @481
IF ~~ THEN EXIT
END

IF ~~ WrD
SAY @482
= @483
IF ~~ THEN EXIT
END

IF ~~ WrE
SAY @484
= @485
= @486
= @487
IF ~~ THEN EXIT
END

IF ~~ WrF
SAY @488
= @489
IF ~~ THEN DO ~SetGlobal("X#SharInterest","GLOBAL",3)~ EXIT
END

/* Squeeze */

IF ~~ STBottomSqueeze1Weak
SAY @490
= @491
IF ~~ THEN DO ~ActionOverride(Player1,PlayDead(15))~ EXIT
END

IF ~~ STBottomSqueeze1Strong
SAY @490
= @492
IF ~~ THEN EXIT
END

IF ~~ STBottomSqueeze2
SAY @493
IF ~~ THEN EXIT
END

IF ~~ STBottomSqueeze3
SAY @494
= @495
IF ~~ THEN EXIT
END

/* Spine */

IF ~~ STSpine2
SAY @496
IF ~~ THEN EXIT
END

IF ~~ STSpine3
SAY @497
IF ~~ THEN EXIT
END

IF ~~ STSpine4
SAY @498
IF ~~ THEN EXIT
END

IF ~~ STSpineL1
SAY @499
IF ~~ THEN EXIT
END

IF ~~ STSpineL2
SAY @500
IF ~~ THEN EXIT
END

IF ~~ STSpineL3

SAY @501
IF ~~ THEN EXIT
END

/* Smile */

IF ~~ STSmile1
SAY @502
IF ~~ THEN EXIT
END

IF ~~ STSmile2
SAY @503
= @504
IF ~~ THEN EXIT
END

IF ~~ STSmile3
SAY @505
IF ~~ THEN EXIT
END

IF ~~ STSmile4
SAY @506
IF ~~ THEN EXIT
END

/* Wonder */

IF ~~ STWonder1
 SAY @507
 IF ~~ THEN EXIT
END

IF ~~ STWonder2
 SAY @508
 IF ~~ THEN EXIT
END

IF ~~ STWonder3
 SAY @509
= @510
 IF ~~ THEN EXIT
END

IF ~~ STWonder4
 SAY @511
 IF ~~ THEN EXIT
END

/* Touch Face */

IF ~~ STTouchFace1
SAY @512
IF ~~ THEN EXIT
END

IF ~~ STTouchFace2
SAY @513
= @514
= @515
IF ~~ THEN EXIT
END

IF ~~ STTouchFace3
SAY @516
IF ~~ THEN EXIT
END

IF ~~ STTouchFace4
SAY @517
IF ~~ THEN EXIT
END

IF ~~ STTouchFace5
SAY @518
IF ~~ THEN EXIT
END

IF ~~ STTouchFace6
SAY @519
IF ~~ THEN EXIT
END

IF ~~ STTouchFace7
SAY @520
IF ~~ THEN EXIT
END

IF ~~ STTouchFace8
SAY @521
IF ~~ THEN EXIT
END

IF ~~ STTouchFace9
SAY @522
IF ~~ THEN EXIT
END

IF ~~ STTouchFace10
SAY @523
IF ~~ THEN EXIT
END

/* Hold Hands */

IF ~~ STHands1
SAY @524
IF ~~ THEN EXIT
END

IF ~~ STHands2
SAY @525
IF ~~ THEN EXIT
END

IF ~~ STHands3
SAY @526
IF ~~ THEN EXIT
END

/* Arms */

IF ~~ STArms1
SAY @527
= @528
IF ~~ THEN EXIT
END

IF ~~ STArms2
SAY @529
= @530
IF ~~ THEN EXIT
END

IF ~~ STArms3
SAY @531
= @532
= @533
IF ~~ THEN EXIT
END

IF ~~ STArms4
SAY @534
IF ~~ THEN EXIT
END

/* Tickle */

IF ~~ STTickle1
SAY @535
= @536
IF ~~ THEN EXIT
END

IF ~~ STTickle2
SAY @537
IF ~~ THEN EXIT
END

IF ~~ STTickle3
SAY @538
= @539
IF ~~ THEN EXIT
END

IF ~~ STTickle4
SAY @540
IF ~~ THEN EXIT
END

/* Shove */

IF ~~ STShove1
SAY @541
IF ~~ THEN EXIT
END

IF ~~ STShove2
SAY @542
IF ~~ THEN EXIT
END

IF ~~ STShove3
SAY @543
= @544
IF ~~ THEN EXIT
END

IF ~~ STShove4
SAY @545
IF ~~ THEN EXIT
END

/* Rose */

IF ~~ STRoseX
SAY @546
= @547
IF ~~ THEN EXIT
END

IF ~~ STRose1
SAY @548
= @549
= @550
IF ~~ THEN EXIT
END

IF ~~ STRose2
SAY @551
IF ~~ THEN EXIT
END

IF ~~ STRose3
SAY @552
+ ~CheckStatLT("Player1",14,STR)~ + @553 + SHRoseWhimper
+ ~!CheckStatLT("Player1",14,STR)~ + @554 + SHRoseStrength
END

IF ~~ SHRoseStrength
SAY @555
= @556
IF ~~ THEN EXIT
END

IF ~~ SHRoseWhimper
SAY @557
IF ~~ THEN EXIT
END

/* Dagger */

IF ~~ STDagger1
SAY @558
IF ~~ THEN DO ~ActionOverride(Player1,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player2,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player3,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player4,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player5,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player6,GiveItem("%tutu_var%DAGG04","sharteel"))
DropItem("%tutu_var%DAGG04",[-1.-1])
SetGlobal("X#ShDagr","LOCALS",1)~ EXIT
END

IF ~~ STDagger2
SAY @559
IF ~~ THEN DO ~ActionOverride(Player1,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player2,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player3,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player4,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player5,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player6,GiveItem("%tutu_var%DAGG04","sharteel"))
DropItem("%tutu_var%DAGG04",[-1.-1])
SetGlobal("X#ShDagr","LOCALS",2)~ EXIT
END

IF ~~ STDagger3
SAY @560
IF ~~ THEN DO ~ActionOverride(Player1,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player2,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player3,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player4,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player5,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player6,GiveItem("%tutu_var%DAGG04","sharteel"))
DropItem("%tutu_var%DAGG04",[-1.-1])
SetGlobal("X#ShDagr","LOCALS",3)~ EXIT
END

IF ~~ STDagger4
SAY @561
+ ~CheckStatGT(Player1,15,DEX)~ + @562 + STDagger4a
+ ~!CheckStatGT(Player1,15,DEX)~ + @562 + STDagger4b
++ @563 + STDagger4c
END

IF ~~ STDagger4a
SAY @564
= @565
IF ~~ THEN DO ~ActionOverride(Player1,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player2,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player3,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player4,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player5,GiveItem("%tutu_var%DAGG04","sharteel"))
ActionOverride(Player6,GiveItem("%tutu_var%DAGG04","sharteel"))
SetGlobal("X#ShDagr","LOCALS",4)~ EXIT
END

IF ~~ STDagger4b
SAY @566
= @567
IF ~~ THEN DO ~SetGlobal("X#ShDagr","LOCALS",4) 
ApplyDamage(Player1,1,PIERCING)
TakePartyItem("%tutu_var%DAGG04")
DestroyItem("%tutu_var%DAGG04")~ EXIT
END

IF ~~ STDagger4c
SAY @568
= @569
= @567
IF ~~ THEN DO ~SetGlobal("X#ShDagr","LOCALS",4) 
ApplyDamage(Player1,2,PIERCING)
TakePartyItem("%tutu_var%DAGG04")
DestroyItem("%tutu_var%DAGG04")~ EXIT
END

/* Fight */

IF ~~ STFight1
SAY @570
IF ~~ EXIT
END

IF ~~ STFight2
SAY @571
IF ~~ THEN EXIT
END

IF ~~ STFight3
SAY @572
IF ~~ THEN EXIT
END

IF ~~ SHMen1
SAY @573
IF ~~ THEN EXIT
END

IF ~~ SHMen2
SAY @574
IF ~~ THEN EXIT

END

IF ~~ SHMen3
SAY @575
IF ~~ THEN EXIT
END

IF ~~ SHMen4
SAY @576
IF ~~ THEN EXIT
END

IF ~~ SHMen5
SAY @577
IF ~~ THEN EXIT
END

IF ~~ SHMen6
SAY @578
IF ~~ THEN EXIT
END

IF ~~ SHMen7
SAY @579
IF ~~ THEN EXIT
END

IF ~~ SHMen8
SAY @580
IF ~~ THEN EXIT
END

IF ~~ SHMen9
SAY @581
IF ~~ THEN EXIT
END

IF ~~ SHMen10
SAY @582
IF ~~ THEN EXIT
END

IF ~~ SHMen11
SAY @583
IF ~~ THEN EXIT
END

IF ~~ SHMen12
SAY @584
IF ~~ THEN EXIT
END

IF ~~ SHMen13
SAY @585
IF ~~ THEN EXIT
END

/* Kiss */

IF ~~ SHKiss1
SAY @586
++ @587 + SHKiss1.1
++ @588 EXIT
++ @589 + SHKiss1.2
END

IF ~~ SHKiss1.1
SAY @590
IF ~~ THEN EXIT
END

IF ~~ SHKiss1.2
SAY @591
++ @588 EXIT
++ @589 + SHKiss1.3
END

IF ~~ SHKiss1.3
SAY @592
IF ~~ THEN EXIT
END

//Wink

IF ~~ SHWink4
SAY @593
IF ~~ THEN EXIT
END

IF ~~ SHWink3
SAY @594
IF ~~ THEN EXIT
END

IF ~~ SHWink2
SAY @595
IF ~~ THEN EXIT
END

IF ~~ SHWink1
SAY @596
IF ~~ THEN EXIT
END

//Waist

IF ~~ SHWaist1
SAY @597
IF ~~ THEN EXIT
END

IF ~~ SHWaist2
SAY @598
IF ~~ THEN EXIT
END

IF ~~ SHWaist3
SAY @599
IF ~~ THEN EXIT
END

IF ~~ SHWaist4
SAY @600
IF ~~ THEN EXIT
END

IF ~~ SHCHSuccessMale
SAY @601
IF ~~ THEN DO ~SetGlobal("X#SHCHdone","GLOBAL",1)~ EXIT
END

IF ~~ SHCHSuccessFemale
SAY @602
IF ~~ THEN DO ~SetGlobal("X#SHCHdone","GLOBAL",1)~ EXIT
END

IF ~~ SHCHFailure1
SAY @603
IF ~~ THEN EXIT
END

IF ~~ SHCHFailure2
SAY @604
IF ~~ THEN EXIT
END

IF ~~ SHCHFailure3
SAY @605
IF ~~ THEN EXIT
END

IF ~~ SHCHFailure4
SAY @606
IF ~~ THEN EXIT
END

END

CHAIN ~%SHARTEEL_JOINED%~ ShSong5
@607
== ~%SHARTEEL_JOINED%~ IF ~AreaType(FOREST)~ THEN @608
== ~%SHARTEEL_JOINED%~ IF ~!AreaType(FOREST)~ THEN @609
== ~%SHARTEEL_JOINED%~ @610
= @611
EXIT

CHAIN ~%SHARTEEL_JOINED%~ ShSongB5
 @607
END
+ ~AreaType(FOREST)~ + @612 + ShSongB5.1
+ ~!AreaType(FOREST)~ + @613 + ShSongB5.2
++ @614 + ShSongB5.3
+ ~RandomNum(3,1)~ + @615 + ShSongB5.4
+ ~RandomNum(3,2)~ + @616 + ShSongB5.5
+ ~RandomNum(3,3)~ + @616 + ShSongB5.6
++ @617 + ShSongB5.7
++ @618 + ShSongB5.8


APPEND ~%SAFANA_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN SACH
SAY @619
++ @620 EXIT

+ ~Gender(Player1,MALE) Global("X#SACHdone","GLOBAL",1) RandomNum(4,1)~ + @621 + SACHFailure1
+ ~Gender(Player1,MALE) Global("X#SACHdone","GLOBAL",1) RandomNum(4,2)~ + @621 + SACHFailure2
+ ~Gender(Player1,MALE) Global("X#SACHdone","GLOBAL",1) RandomNum(4,3)~ + @621 + SACHFailure3
+ ~Gender(Player1,MALE) Global("X#SACHdone","GLOBAL",1) RandomNum(4,4)~ + @621 + SACHFailure4


+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) RandomNum(5,1)~ + @622 + SACHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) RandomNum(5,2)~ + @622 + SACHFailure1
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) RandomNum(5,3)~ + @622 + SACHFailure2
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) RandomNum(5,4)~ + @622 + SACHFailure3
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) RandomNum(5,5)~ + @622 + SACHFailure4

+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @623 + SACHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @623 + SACHFailure1

+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @623 + SACHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @623 + SACHFailure1
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @623 + SACHFailure2
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @623 + SACHFailure3
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @623 + SACHFailure4

+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @624 + SACHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @624 + SACHFailure2

+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @624 + SACHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @624 + SACHFailure1
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @624 + SACHFailure2
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @624 + SACHFailure3
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @624 + SACHFailure4

+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @625 + SACHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @625 + SACHFailure3

+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @625 + SACHSuccessMale
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @625 + SACHFailure1
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @625 + SACHFailure3
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @625 + SACHFailure2
+ ~Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @625 + SACHFailure4

+ ~!Gender(Player1,MALE) Global("X#SACHdone","GLOBAL",1) RandomNum(4,1)~ + @621 + SACHFailure1
+ ~!Gender(Player1,MALE) Global("X#SACHdone","GLOBAL",1) RandomNum(4,2)~ + @621 + SACHFailure2
+ ~!Gender(Player1,MALE) Global("X#SACHdone","GLOBAL",1) RandomNum(4,3)~ + @621 + SACHFailure3
+ ~!Gender(Player1,MALE) Global("X#SACHdone","GLOBAL",1) RandomNum(4,4)~ + @621 + SACHFailure4


+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) RandomNum(5,1)~ + @622 + SACHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) RandomNum(5,2)~ + @622 + SACHFailure1
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) RandomNum(5,3)~ + @622 + SACHFailure2
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) RandomNum(5,4)~ + @622 + SACHFailure3
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) RandomNum(5,5)~ + @622 + SACHFailure4

+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @623 + SACHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @623 + SACHFailure1

+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @623 + SACHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @623 + SACHFailure1
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @623 + SACHFailure2
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @623 + SACHFailure3
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @623 + SACHFailure4

+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @624 + SACHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @624 + SACHFailure2

+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @624 + SACHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @624 + SACHFailure1
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @624 + SACHFailure2
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @624 + SACHFailure3
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @624 + SACHFailure4

+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @625 + SACHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @625 + SACHFailure3

+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @625 + SACHSuccessFemale
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @625 + SACHFailure1
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @625 + SACHFailure3
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @625 + SACHFailure2
+ ~!Gender(Player1,MALE) !Global("X#SACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @625 + SACHFailure4

+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) !HPPercentLT("safana",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(5,1)~ + @626 + X#SaImpression1
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) !HPPercentLT("safana",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(5,2)~ + @626 + X#SaImpression2
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) !HPPercentLT("safana",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(5,3)~ + @626 + X#SaImpression3
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) !HPPercentLT("safana",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(5,4)~ + @626 + X#SaImpression4
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) !HPPercentLT("safana",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(5,5)~ + @626 + X#SaImpression5

+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) !HPPercentLT("safana",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(4,1)~ + @626 + X#SaImpression1
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) !HPPercentLT("safana",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(4,2)~ + @626 + X#SaImpression2
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) !HPPercentLT("safana",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(4,3)~ + @626 + X#SaImpression3
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) !HPPercentLT("safana",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(4,4)~ + @626 + X#SaImpression4

+ ~!HPPercentLT("safana",75) OR(2) AreaCheck("%IsleofBalduranS%") AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @626 + X#SaImpression6

+ ~!HPPercentLT("safana",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%")
!AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @626 + X#SaImpression7

+ ~HPPercentLT("safana",75)~ + @626 + X#SaImpression8

+ ~!AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(4,1)~ + @627 + X#SaOver1
+ ~!AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(4,2)~ + @627 + X#SaOver2
+ ~!AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(4,3)~ + @627 + X#SaOver3
+ ~!AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%") RandomNum(4,4)~ + @627 + X#SaOver4

+ ~OR(2) AreaCheck("%IsleofBalduranS%") AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @627 + X#SaOver5

+ ~!AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%")
!AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @627 + X#SaOver6



+ ~OR(2) Gender(Player1,FEMALE) CheckStatLT(Player1,15,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") !AreaCheck("%CloakwoodMines_L1%") !AreaCheck("%CloakwoodMines_L3%") !AreaCheck("%CloakwoodMines_L4%") !AreaCheck("%CloakwoodMines_L2%") RandomNum(3,1)~ + @628 + SafanaAdvice1
+ ~OR(2) Gender(Player1,FEMALE) CheckStatLT(Player1,15,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") !AreaCheck("%CloakwoodMines_L1%") !AreaCheck("%CloakwoodMines_L3%") !AreaCheck("%CloakwoodMines_L4%") !AreaCheck("%CloakwoodMines_L2%") RandomNum(3,2)~ + @628 + SafanaAdvice2
+ ~OR(2) Gender(Player1,FEMALE) CheckStatLT(Player1,15,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") !AreaCheck("%CloakwoodMines_L1%") !AreaCheck("%CloakwoodMines_L3%") !AreaCheck("%CloakwoodMines_L4%") !AreaCheck("%CloakwoodMines_L2%") RandomNum(3,3)~ + @628 + SafanaAdvice3

+ ~Gender(Player1,MALE) CheckStatGT(Player1,14,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") !AreaCheck("%CloakwoodMines_L1%") !AreaCheck("%CloakwoodMines_L3%") !AreaCheck("%CloakwoodMines_L4%") !AreaCheck("%CloakwoodMines_L2%") RandomNum(4,1)~ + @628 + SafanaAdvice1
+ ~Gender(Player1,MALE) CheckStatGT(Player1,14,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") !AreaCheck("%CloakwoodMines_L1%") !AreaCheck("%CloakwoodMines_L3%") !AreaCheck("%CloakwoodMines_L4%") !AreaCheck("%CloakwoodMines_L2%") RandomNum(4,2)~ + @628 + SafanaAdvice2
+ ~Gender(Player1,MALE) CheckStatGT(Player1,14,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") !AreaCheck("%CloakwoodMines_L1%") !AreaCheck("%CloakwoodMines_L3%") !AreaCheck("%CloakwoodMines_L4%") !AreaCheck("%CloakwoodMines_L2%") RandomNum(4,3)~ + @628 + SafanaAdvice3
+ ~Gender(Player1,MALE) CheckStatGT(Player1,14,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") !AreaCheck("%CloakwoodMines_L1%") !AreaCheck("%CloakwoodMines_L3%") !AreaCheck("%CloakwoodMines_L4%") !AreaCheck("%CloakwoodMines_L2%") RandomNum(4,4)~ + @628 + SafanaAdvice4

+ ~ReputationLT(Player1,9) CheckStatGT(Player1,7,INT)~ + @628 + SafanaAdvice5

+ ~ReputationGT(Player1,17) CheckStatGT(Player1,7,INT)~ + @628 + SafanaAdvice6

+ ~!CheckStatGT(Player1,7,INT)~ + @628 + SafanaAdvice7

+ ~ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) OR(4) AreaCheck("%NashkelMines_L1%") AreaCheck("%NashkelMines_L2%") AreaCheck("%NashkelMines_L3%") AreaCheck("%NashkelMines_L4%") !AreaCheck("%CloakwoodMines_L1%") !AreaCheck("%CloakwoodMines_L3%") !AreaCheck("%CloakwoodMines_L4%") !AreaCheck("%CloakwoodMines_L2%") RandomNum(3,3)~ + @628 DO ~SetGlobal("X#SafanaPIDNashkel","GLOBAL",1)~ + SafanaAdvice8

+ ~Global("X#SafanaPIDNashkel","GLOBAL",1) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") OR(4) AreaCheck("%CloakwoodMines_L1%") AreaCheck("%CloakwoodMines_L3%") AreaCheck("%CloakwoodMines_L4%") AreaCheck("%CloakwoodMines_L2%")~ + @628 + SafanaAdvice9

+ ~Global("X#SafanaPIDNashkel","GLOBAL",0) OR(2) Gender(Player1,FEMALE) CheckStatLT(Player1,15,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") OR(4) AreaCheck("%CloakwoodMines_L1%") AreaCheck("%CloakwoodMines_L3%") AreaCheck("%CloakwoodMines_L4%") AreaCheck("%CloakwoodMines_L2%") RandomNum(3,1)~ + @628 + SafanaAdvice1
+ ~Global("X#SafanaPIDNashkel","GLOBAL",0) OR(2) Gender(Player1,FEMALE) CheckStatLT(Player1,15,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") OR(4) AreaCheck("%CloakwoodMines_L1%") AreaCheck("%CloakwoodMines_L3%") AreaCheck("%CloakwoodMines_L4%") AreaCheck("%CloakwoodMines_L2%") RandomNum(3,2)~ + @628 + SafanaAdvice2
+ ~Global("X#SafanaPIDNashkel","GLOBAL",0) OR(2) Gender(Player1,FEMALE) CheckStatLT(Player1,15,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") OR(4) AreaCheck("%CloakwoodMines_L1%") AreaCheck("%CloakwoodMines_L3%") AreaCheck("%CloakwoodMines_L4%") AreaCheck("%CloakwoodMines_L2%") RandomNum(3,3)~ + @628 + SafanaAdvice3

+ ~Global("X#SafanaPIDNashkel","GLOBAL",0) Gender(Player1,MALE) CheckStatGT(Player1,14,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") OR(4) AreaCheck("%CloakwoodMines_L1%") AreaCheck("%CloakwoodMines_L3%") AreaCheck("%CloakwoodMines_L4%") AreaCheck("%CloakwoodMines_L2%") RandomNum(4,1)~ + @628 + SafanaAdvice1
+ ~Global("X#SafanaPIDNashkel","GLOBAL",0) Gender(Player1,MALE) CheckStatGT(Player1,14,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") OR(4) AreaCheck("%CloakwoodMines_L1%") AreaCheck("%CloakwoodMines_L3%") AreaCheck("%CloakwoodMines_L4%") AreaCheck("%CloakwoodMines_L2%") RandomNum(4,2)~ + @628 + SafanaAdvice2
+ ~Global("X#SafanaPIDNashkel","GLOBAL",0) Gender(Player1,MALE) CheckStatGT(Player1,14,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") OR(4) AreaCheck("%CloakwoodMines_L1%") AreaCheck("%CloakwoodMines_L3%") AreaCheck("%CloakwoodMines_L4%") AreaCheck("%CloakwoodMines_L2%") RandomNum(4,3)~ + @628 + SafanaAdvice3
+ ~Global("X#SafanaPIDNashkel","GLOBAL",0) Gender(Player1,MALE) CheckStatGT(Player1,14,CHR) ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) OR(2) Global("NarlenMove","GLOBAL",0) Global("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") OR(4) AreaCheck("%CloakwoodMines_L1%") AreaCheck("%CloakwoodMines_L3%") AreaCheck("%CloakwoodMines_L4%") AreaCheck("%CloakwoodMines_L2%") RandomNum(4,4)~ + @628 + SafanaAdvice4

+ ~ReputationGT(Player1,8) ReputationLT(Player1,18) CheckStatGT(Player1,7,INT) GlobalGT("NarlenMove","GLOBAL",0) GlobalLT("NarlenMove","GLOBAL",10) !AreaCheck("%NashkelMines_L1%") !AreaCheck("%NashkelMines_L2%") !AreaCheck("%NashkelMines_L3%") !AreaCheck("%NashkelMines_L4%") !AreaCheck("%CloakwoodMines_L1%") !AreaCheck("%CloakwoodMines_L3%") !AreaCheck("%CloakwoodMines_L4%") !AreaCheck("%CloakwoodMines_L2%")~ + @628 DO ~SetGlobal("X#SafanaPIDNashkel","GLOBAL",1)~ + SafanaAdvice10

+ ~%VoiceStrange%~ + @629 + SafanaVoice
END

/* SetPlayerSound entries for _SAFANA.CRE... */
IF ~~ SafanaVoice
SAY @11
IF ~~ THEN DO ~SetName(@630)
SetPlayerSound(Myself,@631 ,0)
SetPlayerSound(Myself,@632 ,1)
SetPlayerSound(Myself,@633 ,2)
SetPlayerSound(Myself,@634 ,3)
SetPlayerSound(Myself,@635 ,4)
SetPlayerSound(Myself,@636 ,5)
SetPlayerSound(Myself,@637 ,6)
SetPlayerSound(Myself,@638 ,7)
SetPlayerSound(Myself,@639 ,8)
SetPlayerSound(Myself,@640 ,9)
SetPlayerSound(Myself,@640 ,10)
SetPlayerSound(Myself,@640 ,11)
SetPlayerSound(Myself,@640 ,12)
SetPlayerSound(Myself,@640 ,13)
SetPlayerSound(Myself,@641 ,18)
SetPlayerSound(Myself,@642 ,19)
SetPlayerSound(Myself,@643 ,20)
SetPlayerSound(Myself,@644 ,21)
SetPlayerSound(Myself,@645 ,22)
SetPlayerSound(Myself,@646 ,23)
SetPlayerSound(Myself,@647 ,24)
SetPlayerSound(Myself,@648 ,25)
SetPlayerSound(Myself,@649 ,26)
SetPlayerSound(Myself,@650 ,27)
SetPlayerSound(Myself,@651 ,28)
SetPlayerSound(Myself,@649 ,29)
SetPlayerSound(Myself,@650 ,30)
SetPlayerSound(Myself,@651 ,31)
SetPlayerSound(Myself,@652 ,32)
SetPlayerSound(Myself,@653 ,33)
SetPlayerSound(Myself,@654 ,34)
SetPlayerSound(Myself,@652 ,35)
SetPlayerSound(Myself,@653 ,36)
SetPlayerSound(Myself,@654 ,37)
SetPlayerSound(Myself,@652 ,38)
SetPlayerSound(Myself,@655 ,39)
SetPlayerSound(Myself,@656 ,40)
SetPlayerSound(Myself,@657 ,41)
SetPlayerSound(Myself,@658 ,42)
SetPlayerSound(Myself,@659 ,43)
SetPlayerSound(Myself,@660 ,44)
SetPlayerSound(Myself,@661 ,47)
SetPlayerSound(Myself,@662 ,48)
SetPlayerSound(Myself,@663 ,53)
SetPlayerSound(Myself,@664 ,54)
SetPlayerSound(Myself,@665 ,55)
SetPlayerSound(Myself,@666 ,58)
SetPlayerSound(Myself,@667 ,59)
SetPlayerSound(Myself,@649 ,62)
SetPlayerSound(Myself,@649 ,63)
SetPlayerSound(Myself,@650 ,64)
SetPlayerSound(Myself,@668 ,74)~ EXIT
END

IF ~~ SafanaAdvice1
SAY @669
IF ~~ THEN EXIT
END

IF ~~ SafanaAdvice2
SAY @670
IF ~~ THEN EXIT
END

IF ~~ SafanaAdvice3
SAY @671
IF ~~ THEN EXIT
END

IF ~~ SafanaAdvice4
SAY @672
IF ~~ THEN EXIT
END

IF ~~ SafanaAdvice5
SAY @673
IF ~~ THEN EXIT
END

IF ~~ SafanaAdvice6
SAY @674
IF ~~ THEN EXIT
END

IF ~~ SafanaAdvice7
SAY @675
IF ~~ THEN EXIT
END

IF ~~ SafanaAdvice8
SAY @676
IF ~~ THEN EXIT
END

IF ~~ SafanaAdvice9
SAY @677
IF ~~ THEN EXIT
END

IF ~~ SafanaAdvice10
SAY @678
IF ~~ THEN EXIT
END

IF ~~ X#SaOver1
SAY @679
IF ~~ THEN EXIT
END

IF ~~ X#SaOver2
SAY @680
IF ~~ THEN EXIT
END

IF ~~ X#SaOver3
SAY @681
IF ~~ THEN EXIT
END

IF ~~ X#SaOver4
SAY @682
IF ~~ THEN EXIT
END

IF ~~ X#SaOver5
SAY @683
IF ~~ THEN EXIT
END

IF ~~ X#SaOver6
SAY @684
IF ~~ THEN EXIT
END

IF ~~ X#SaImpression1
SAY @685
IF ~~ THEN EXIT
END

IF ~~ X#SaImpression2
SAY @686
IF ~~ THEN EXIT
END

IF ~~ X#SaImpression3
SAY @687
IF ~~ THEN EXIT
END

IF ~~ X#SaImpression4
SAY @688
IF ~~ THEN EXIT
END

IF ~~ X#SaImpression5
SAY @689
IF ~~ THEN EXIT
END

IF ~~ X#SaImpression6
SAY @690
IF ~~ THEN EXIT
END

IF ~~ X#SaImpression7
SAY @691
IF ~~ THEN EXIT
END

IF ~~ X#SaImpression8
SAY @692
IF ~~ THEN EXIT
END

IF ~~ SACHSuccessMale
SAY @693
= @694
= @695
IF ~~ THEN DO ~SetGlobal("X#SACHdone","GLOBAL",1)~ EXIT
END

IF ~~ SACHSuccessFemale
SAY @696
= @697
IF ~~ THEN DO ~SetGlobal("X#SACHdone","GLOBAL",1)~ EXIT
END

IF ~~ SACHFailure1
SAY @698 
IF ~~ THEN EXIT
END

IF ~~ SACHFailure2
SAY @699
= @700
IF ~~ THEN EXIT
END

IF ~~ SACHFailure3
SAY @701
IF ~~ THEN EXIT
END

IF ~~ SACHFailure4
SAY @698 
IF ~~ THEN EXIT
END

END

APPEND ~%ALORA_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN ALCH
SAY @702
++ @703 EXIT

+ ~Global("X#AlCHdone","GLOBAL",1) RandomNum(4,1)~ + @704 + ALCHFailure1
+ ~Global("X#AlCHdone","GLOBAL",1) RandomNum(4,2)~ + @704 + ALCHFailure2
+ ~Global("X#AlCHdone","GLOBAL",1) RandomNum(4,3)~ + @704 + ALCHFailure3
+ ~Global("X#AlCHdone","GLOBAL",1) RandomNum(4,4)~ + @704 + ALCHFailure4


+ ~!Global("X#AlCHdone","GLOBAL",1) RandomNum(5,1)~ + @705 + ALCHSuccess
+ ~!Global("X#AlCHdone","GLOBAL",1) RandomNum(5,2)~ + @705 + ALCHFailure1
+ ~!Global("X#AlCHdone","GLOBAL",1) RandomNum(5,3)~ + @705 + ALCHFailure2
+ ~!Global("X#AlCHdone","GLOBAL",1) RandomNum(5,4)~ + @705 + ALCHFailure3
+ ~!Global("X#AlCHdone","GLOBAL",1) RandomNum(5,5)~ + @705 + ALCHFailure4

+ ~!Global("X#AlCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @706 + ALCHSuccess
+ ~!Global("X#AlCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @706 + ALCHFailure1

+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @706 + ALCHSuccess
+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @706 + ALCHFailure1
+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @706 + ALCHFailure2
+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @706 + ALCHFailure3
+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @706 + ALCHFailure4

+ ~!Global("X#AlCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @707 + ALCHSuccess
+ ~!Global("X#AlCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @707 + ALCHFailure2

+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @707 + ALCHSuccess
+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @707 + ALCHFailure1
+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @707 + ALCHFailure2
+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @707 + ALCHFailure3
+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @707 + ALCHFailure4

+ ~!Global("X#AlCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @708 + ALCHSuccess
+ ~!Global("X#AlCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @708 + ALCHFailure3

+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @708 + ALCHSuccess
+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @708 + ALCHFailure1
+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @708 + ALCHFailure3
+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @708 + ALCHFailure2
+ ~!Global("X#AlCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @708 + ALCHFailure4

+ ~RandomNum(8,1)~ + @709 + AloraPID1.1
+ ~RandomNum(8,2)~ + @709 + AloraPID1.2
+ ~RandomNum(8,3)~ + @709 + AloraPID1.3
+ ~RandomNum(8,4)~ + @709 + AloraPID1.4
+ ~RandomNum(8,5)~ + @709 + AloraPID1.5
+ ~RandomNum(8,6)~ + @709 + AloraPID1.6
+ ~RandomNum(8,7)~ + @709 + AloraPID1.7
+ ~RandomNum(8,8)~ + @709 + AloraPID1.8

+ ~RandomNum(8,1)~ + @710 + AloraPID2.1
+ ~RandomNum(8,2)~ + @710 + AloraPID2.2
+ ~RandomNum(8,3)~ + @710 + AloraPID2.3
+ ~RandomNum(8,4)~ + @710 + AloraPID2.4
+ ~RandomNum(8,5)~ + @710 + AloraPID2.5
+ ~RandomNum(8,6)~ + @710 + AloraPID2.6
+ ~RandomNum(8,7)~ + @710 + AloraPID2.7
+ ~RandomNum(8,8)~ + @710 + AloraPID2.8

+ ~RandomNum(8,1) InParty("edwin") !Dead("edwin") Global("X#ALED2","LOCALS",1)~ + @711 + AloraPID3.1
+ ~RandomNum(8,2) InParty("edwin") !Dead("edwin") Global("X#ALED2","LOCALS",1)~ + @711 + AloraPID3.2
+ ~RandomNum(8,3) InParty("edwin") !Dead("edwin") Global("X#ALED2","LOCALS",1)~ + @711 + AloraPID3.3
+ ~RandomNum(8,4) InParty("edwin") !Dead("edwin") Global("X#ALED2","LOCALS",1)~ + @711 + AloraPID3.4
+ ~RandomNum(8,5) InParty("edwin") !Dead("edwin") Global("X#ALED2","LOCALS",1)~ + @711 + AloraPID3.5
+ ~RandomNum(8,6) InParty("edwin") !Dead("edwin") Global("X#ALED2","LOCALS",1)~ + @711 + AloraPID3.6
+ ~RandomNum(8,7) InParty("edwin") !Dead("edwin") Global("X#ALED2","LOCALS",1)~ + @711 + AloraPID3.7
+ ~RandomNum(8,8) InParty("edwin") !Dead("edwin") Global("X#ALED2","LOCALS",1)~ + @711 + AloraPID3.8

+ ~RandomNum(8,1)~ + @712 + AloraPID4.1
+ ~RandomNum(8,2)~ + @712 + AloraPID4.2
+ ~RandomNum(8,3)~ + @712 + AloraPID4.3
+ ~RandomNum(8,4)~ + @712 + AloraPID4.4
+ ~RandomNum(8,5)~ + @712 + AloraPID4.5
+ ~RandomNum(8,6)~ + @712 + AloraPID4.6
+ ~RandomNum(8,7)~ + @712 + AloraPID4.7
+ ~RandomNum(8,8)~ + @712 + AloraPID4.8

+ ~%VoiceStrange%~ + @713 + AloraVoice

END
//>>>>NOTE: MODIFYING OR CHANGING THESE ENTRIES IN ANY WAY WILL RESULT IN NEW STRINGS BEING ADDED TO DIALOG.TLK
//            INSTEAD OF THE DESIRED REPAIR. PLEASE USE CAUTION IN MASS TEXT PROCESSING OF X#PCINIT.D WHEN IN PLACE!
//              THE TYPOS/SPACING ERRORS MUST REMAIN!
//SetPlayerSound entries for _ALORA.CRE...
IF ~~ AloraVoice
SAY @11
IF ~~ THEN DO ~SetName(@714)
SetPlayerSound(Myself,@715 ,0)
SetPlayerSound(Myself,@716 ,1)
SetPlayerSound(Myself,@717 ,2)
SetPlayerSound(Myself,@718 ,3)
SetPlayerSound(Myself,@719 ,4)
SetPlayerSound(Myself,@720 ,5)
SetPlayerSound(Myself,@721 ,6)
SetPlayerSound(Myself,@722 ,7)
SetPlayerSound(Myself,@723 ,8)
SetPlayerSound(Myself,@724 ,9)
SetPlayerSound(Myself,@724 ,10)
SetPlayerSound(Myself,@724 ,11)
SetPlayerSound(Myself,@724 ,12)
SetPlayerSound(Myself,@724 ,13)
SetPlayerSound(Myself,@725 ,18)
SetPlayerSound(Myself,@726 ,19)
SetPlayerSound(Myself,@727 ,20)
SetPlayerSound(Myself,@728 ,21)
SetPlayerSound(Myself,@729 ,22)
SetPlayerSound(Myself,@730 ,23)
SetPlayerSound(Myself,@731 ,24)
SetPlayerSound(Myself,@732 ,25)
SetPlayerSound(Myself,@733 ,26)
SetPlayerSound(Myself,@734 ,27)
SetPlayerSound(Myself,@735 ,28)
SetPlayerSound(Myself,@733 ,29)
SetPlayerSound(Myself,@734 ,30)
SetPlayerSound(Myself,@735 ,31)
SetPlayerSound(Myself,@736 ,32)
SetPlayerSound(Myself,@737 ,33)
SetPlayerSound(Myself,@738 ,34)
SetPlayerSound(Myself,@736 ,35)
SetPlayerSound(Myself,@737 ,36)
SetPlayerSound(Myself,@738 ,37)
SetPlayerSound(Myself,@736 ,38)
SetPlayerSound(Myself,@739 ,39)
SetPlayerSound(Myself,@740 ,40)
SetPlayerSound(Myself,@741 ,41)
SetPlayerSound(Myself,@742 ,42)
SetPlayerSound(Myself,@743 ,43)
SetPlayerSound(Myself,@744 ,44)
SetPlayerSound(Myself,@745 ,45)
SetPlayerSound(Myself,@746 ,46)
SetPlayerSound(Myself,@747 ,53)
SetPlayerSound(Myself,@748 ,54)
SetPlayerSound(Myself,@749 ,55)
SetPlayerSound(Myself,@750 ,58)
SetPlayerSound(Myself,@751 ,59)
SetPlayerSound(Myself,@733 ,62)
SetPlayerSound(Myself,@733 ,63)
SetPlayerSound(Myself,@734 ,64)
SetPlayerSound(Myself,@752 ,74)~ EXIT
END

IF ~~ AloraPID1.1
SAY @753
IF ~~ EXIT
END

IF ~~ AloraPID1.2
SAY @754
IF ~~ EXIT
END

IF ~~ AloraPID1.3
SAY @755
IF ~~ EXIT
END

IF ~~ AloraPID1.4
SAY @756
IF ~~ EXIT
END

IF ~~ AloraPID1.5
SAY @757
IF ~~ EXIT
END

IF ~~ AloraPID1.6
SAY @758
IF ~~ EXIT
END

IF ~~ AloraPID1.7
SAY @759
IF ~~ EXIT
END

IF ~~ AloraPID1.8
SAY @760
IF ~~ EXIT
END

IF ~~ AloraPID2.1
SAY @761
= @762
IF ~~ EXIT
END

IF ~~ AloraPID2.2
SAY @763
= @764
IF ~~ EXIT
END

IF ~~ AloraPID2.3
SAY @765
IF ~~ EXIT
END

IF ~~ AloraPID2.4
SAY @766
IF ~~ EXIT
END

IF ~~ AloraPID2.5
SAY @767
= @768
++ @769 + AloraPID2.5A
++ @770 + AloraPID2.5A
++ @771 + AloraPID2.5B
END

IF ~~ AloraPID2.5A
SAY @772
IF ~~ EXIT
END

IF ~~ AloraPID2.5B
SAY @773
IF ~~ EXIT
END

IF ~~ AloraPID2.6
SAY @774
IF ~~ DO ~%RunAwayFrom%(Player1,50)~ EXIT
END

IF ~~ AloraPID2.7
SAY @775
IF ~~ EXIT
END

IF ~~ AloraPID2.8
SAY @776
IF ~~ EXIT
END

IF ~~ AloraPID3.1
SAY @777
IF ~~ EXIT
END

IF ~~ AloraPID3.2
SAY @778
IF ~~ EXIT
END

IF ~~ AloraPID3.3
SAY @779
++ @780 + AloraPID3.3A
++ @781 + AloraPID3.3A
++ @782 + AloraPID3.3B
END

IF ~~ AloraPID3.3A
SAY @783
IF ~~ EXIT
END

IF ~~ AloraPID3.3B
SAY @784
IF ~~ EXIT
END

IF ~~ AloraPID3.4
SAY @785
IF ~~ EXIT
END

IF ~~ AloraPID3.5
SAY @786
IF ~~ EXIT
END

IF ~~ AloraPID3.6
SAY @787
IF ~~ EXIT
END

IF ~~ AloraPID3.7
SAY @788
IF ~~ EXIT
END

IF ~~ AloraPID3.8
SAY @789
IF ~~ EXIT
END

IF ~~ AloraPID4.1
SAY @790
IF ~~ EXIT
END

IF ~~ AloraPID4.2
SAY @791
IF ~~ EXIT
END

IF ~~ AloraPID4.3
SAY @792
IF ~~ EXIT
END

IF ~~ AloraPID4.4
SAY @793
IF ~~ EXIT
END

IF ~~ AloraPID4.5
SAY @794
IF ~~ EXIT
END

IF ~~ AloraPID4.6
SAY @795
IF ~~ EXIT
END

IF ~~ AloraPID4.7
SAY @796
IF ~~ EXIT
END

IF ~~ AloraPID4.8
SAY @797
IF ~~ EXIT
END

IF ~~ ALCHSuccess
SAY @798
= @799
IF ~~ THEN DO ~SetGlobal("X#AlCHdone","GLOBAL",1)~ EXIT
END

IF ~~ ALCHFailure1
SAY @800
IF ~~ THEN EXIT
END

IF ~~ ALCHFailure2
SAY @801
IF ~~ THEN EXIT
END

IF ~~ ALCHFailure3
SAY @802
IF ~~ THEN EXIT
END

IF ~~ ALCHFailure4
SAY @803
IF ~~ THEN EXIT
END

END

APPEND ~%BRANWEN_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR% Global("P#BranMatch","GLOBAL",1) GlobalGT("P#BRLoveTalk","GLOBAL",36) OR(2) Global("P#BranwenRomanceActive","GLOBAL",3) Global("P#BranwenRomanceActive","GLOBAL",2)~
THEN BEGIN BranwenQuitRomance
SAY @804
++ @805 EXIT
+ ~%VoiceStrange%~ + @806 + BranwenVoice
END

/* SetPlayerSound entries for _BRANWE.CRE...*/
IF ~~ BranwenVoice
SAY @11
IF ~~ THEN DO ~SetName(@807)
SetPlayerSound(Myself,@808 ,0)
SetPlayerSound(Myself,@809 ,1)
SetPlayerSound(Myself,@810 ,2)
SetPlayerSound(Myself,@811 ,3)
SetPlayerSound(Myself,@812 ,4)
SetPlayerSound(Myself,@813 ,5)
SetPlayerSound(Myself,@814 ,6)
SetPlayerSound(Myself,@815 ,7)
SetPlayerSound(Myself,@816 ,8)
SetPlayerSound(Myself,@817 ,9)
SetPlayerSound(Myself,@817 ,10)
SetPlayerSound(Myself,@817 ,11)
SetPlayerSound(Myself,@817 ,12)
SetPlayerSound(Myself,@817 ,13)
SetPlayerSound(Myself,@818 ,18)
SetPlayerSound(Myself,@819 ,19)
SetPlayerSound(Myself,@820 ,20)
SetPlayerSound(Myself,@821 ,26)
SetPlayerSound(Myself,@822 ,27)
SetPlayerSound(Myself,@823 ,28)
SetPlayerSound(Myself,@821 ,29)
SetPlayerSound(Myself,@822 ,30)
SetPlayerSound(Myself,@823 ,31)
SetPlayerSound(Myself,@824 ,32)
SetPlayerSound(Myself,@825 ,33)
SetPlayerSound(Myself,@826 ,34)
SetPlayerSound(Myself,@824 ,35)
SetPlayerSound(Myself,@825 ,36)
SetPlayerSound(Myself,@826 ,37)
SetPlayerSound(Myself,@824 ,38)
SetPlayerSound(Myself,@827 ,39)
SetPlayerSound(Myself,@828 ,40)
SetPlayerSound(Myself,@829 ,41)
SetPlayerSound(Myself,@830 ,42)
SetPlayerSound(Myself,@831 ,43)
SetPlayerSound(Myself,@832 ,44)
SetPlayerSound(Myself,@833 ,45)
SetPlayerSound(Myself,@834 ,47)
SetPlayerSound(Myself,@835 ,53)
SetPlayerSound(Myself,@836 ,54)
SetPlayerSound(Myself,@837 ,55)
SetPlayerSound(Myself,@838 ,58)
SetPlayerSound(Myself,@839 ,59)
SetPlayerSound(Myself,@821 ,62)
SetPlayerSound(Myself,@821 ,63)
SetPlayerSound(Myself,@822 ,64)
SetPlayerSound(Myself,@840 ,74)~ EXIT
END

IF ~IsGabber(Player1) %BGT_VAR% OR(4) Global("P#BranMatch","GLOBAL",0) GlobalLT("P#BRLoveTalk","GLOBAL",9) Global("P#BranwenRomanceActive","GLOBAL",3) Global("X#DisableBranFlirts","GLOBAL",1)~ THEN BEGIN BRCH
SAY @841
++ @842 EXIT

+ ~Global("P#BRCHdone","GLOBAL",1) RandomNum(4,1)~ + @843 + BRCHFailure1
+ ~Global("P#BRCHdone","GLOBAL",1) RandomNum(4,2)~ + @843 + BRCHFailure2
+ ~Global("P#BRCHdone","GLOBAL",1) RandomNum(4,3)~ + @843 + BRCHFailure3
+ ~Global("P#BRCHdone","GLOBAL",1) RandomNum(4,4)~ + @843 + BRCHFailure4


 + ~!Global("P#BRCHdone","GLOBAL",1) RandomNum(5,1)~ + @844 + BRCHSuccess
 + ~!Global("P#BRCHdone","GLOBAL",1) RandomNum(5,2)~ + @844 + BRCHFailure1
 + ~!Global("P#BRCHdone","GLOBAL",1) RandomNum(5,3)~ + @844 + BRCHFailure2
 + ~!Global("P#BRCHdone","GLOBAL",1) RandomNum(5,4)~ + @844 + BRCHFailure3
 + ~!Global("P#BRCHdone","GLOBAL",1) RandomNum(5,5)~ + @844 + BRCHFailure4

 + ~!Global("P#BRCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @845 + BRCHSuccess
 + ~!Global("P#BRCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @845 + BRCHFailure1

 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @845 + BRCHSuccess
 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @845 + BRCHFailure1
 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @845 + BRCHFailure2
 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @845 + BRCHFailure3
 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @845 + BRCHFailure4

+ ~!Global("P#BRCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @846 + BRCHSuccess
 + ~!Global("P#BRCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @846 + BRCHFailure2

 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @846 + BRCHSuccess
 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @846 + BRCHFailure1
 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @846 + BRCHFailure2
 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @846 + BRCHFailure3
 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @846 + BRCHFailure4

+ ~!Global("P#BRCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @847 + BRCHSuccess
 + ~!Global("P#BRCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @847 + BRCHFailure3

 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @847 + BRCHSuccess
 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @847 + BRCHFailure1
 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @847 + BRCHFailure3
 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @847 + BRCHFailure2
 + ~!Global("P#BRCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @847 + BRCHFailure4

+ ~AreaType(DUNGEON) RandomNum(4,1)~ + @848 + BrDungeonArea1
+ ~AreaType(DUNGEON) RandomNum(4,2)~ + @848 + BrDungeonArea2
+ ~AreaType(DUNGEON) RandomNum(4,3)~ + @848 + BrDungeonArea3
+ ~AreaType(DUNGEON) RandomNum(4,4)~ + @848 + BrDungeonArea4

+ ~AreaType(CITY) RandomNum(4,1)~ + @848 + BrCITYArea1
+ ~AreaType(CITY) RandomNum(4,2)~ + @848 + BrCITYArea2
+ ~AreaType(CITY) RandomNum(4,3)~ + @848 + BrCITYArea3
+ ~AreaType(CITY) RandomNum(4,4)~ + @848 + BrCITYArea4

+ ~AreaType(FOREST) RandomNum(4,1)~ + @848 + BrFORESTArea1
+ ~AreaType(FOREST) RandomNum(4,2)~ + @848 + BrFORESTArea2
+ ~AreaType(FOREST) RandomNum(4,3)~ + @848 + BrFORESTArea3
+ ~AreaType(FOREST) RandomNum(4,4)~ + @848 + BrFORESTArea4

+ ~RandomNum(8,1)~ + @849 + BrCrush1
+ ~RandomNum(8,2)~ + @849 + BrCrush2
+ ~RandomNum(8,3)~ + @849 + BrCrush3
+ ~RandomNum(8,4)~ + @849 + BrCrush4
+ ~RandomNum(8,5)~ + @849 + BrCrush5
+ ~RandomNum(8,6)~ + @849 + BrCrush6
+ ~RandomNum(8,7)~ + @849 + BrCrush7
+ ~RandomNum(8,8)~ + @849 + BrCrush8

+ ~HPPercentGT("branwen",80) RandomNum(4,1)~ + @850 + BrRight1
+ ~HPPercentGT("branwen",80) RandomNum(4,2)~ + @850 + BrRight2
+ ~HPPercentGT("branwen",80) RandomNum(4,3)~ + @850 + BrRight3
+ ~HPPercentGT("branwen",80) RandomNum(4,4)~ + @850 + BrRight4

+ ~HPPercentLT("branwen",81) HPPercentGT("branwen",30) RandomNum(4,1)~ + @850 + BrRight5
+ ~HPPercentLT("branwen",81) HPPercentGT("branwen",30) RandomNum(4,2)~ + @850 + BrRight6
+ ~HPPercentLT("branwen",81) HPPercentGT("branwen",30) RandomNum(4,3)~ + @850 + BrRight7
+ ~HPPercentLT("branwen",81) HPPercentGT("branwen",30) RandomNum(4,4)~ + @850 + BrRight8

+ ~HPPercentLT("branwen",31) RandomNum(4,1)~ + @850 + BrRight9
+ ~HPPercentLT("branwen",31) RandomNum(4,2)~ + @850 + BrRight10
+ ~HPPercentLT("branwen",31) RandomNum(4,3)~ + @850 + BrRight11
+ ~HPPercentLT("branwen",31) RandomNum(4,4)~ + @850 + BrRight12

+ ~RandomNum(8,1)~ + @851 + BrBattle1
+ ~RandomNum(8,2)~ + @851 + BrBattle2
+ ~RandomNum(8,3)~ + @851 + BrBattle3
+ ~RandomNum(8,4)~ + @851 + BrBattle4
+ ~RandomNum(8,5)~ + @851 + BrBattle5
+ ~RandomNum(8,6)~ + @851 + BrBattle6
+ ~RandomNum(8,7)~ + @851 + BrBattle7
+ ~RandomNum(8,8)~ + @851 + BrBattle8

+ ~RandomNum(8,1)~ + @852 + BrTemper1
+ ~RandomNum(8,2)~ + @852 + BrTemper2
+ ~RandomNum(8,3)~ + @852 + BrTemper3
+ ~RandomNum(8,4)~ + @852 + BrTemper4
+ ~RandomNum(8,5)~ + @852 + BrTemper5
+ ~RandomNum(8,6)~ + @852 + BrTemper6
+ ~RandomNum(8,7)~ + @852 + BrTemper7
+ ~RandomNum(8,8)~ + @852 + BrTemper8

+ ~Global("P#BranwenRomanceActive","GLOBAL",3) OR(2) Global("X#DynaheirRomanceInactive","GLOBAL",1) Global("X#DynaheirRomanceActive","GLOBAL",0) OR(2) Global("X#SharInterest","GLOBAL",3) Global("X#SharInterest","GLOBAL",0) Global("P#BranRomCutByOther","GLOBAL",1)~ + @853 + BrSorry
+ ~%VoiceStrange%~ + @854 + BranwenVoice

END

IF ~~ BrTemper1
SAY @855
IF ~~ THEN EXIT
END

IF ~~ BrTemper2
SAY @856
IF ~~ THEN EXIT
END

IF ~~ BrTemper3
SAY @857
IF ~~ THEN EXIT
END

IF ~~ BrTemper4
SAY @858
IF ~~ THEN EXIT
END

IF ~~ BrTemper5
SAY @859
IF ~~ THEN EXIT
END

IF ~~ BrTemper6
SAY @860
IF ~~ THEN EXIT
END

IF ~~ BrTemper7
SAY @861
IF ~~ THEN EXIT
END

IF ~~ BrTemper8
SAY @862
IF ~~ THEN EXIT
END

IF ~~ BrBattle1
SAY @863
IF ~~ THEN EXIT
END

IF ~~ BrBattle2
SAY @864
IF ~~ THEN EXIT
END

IF ~~ BrBattle3
SAY @865
IF ~~ THEN EXIT
END

IF ~~ BrBattle4
SAY @866
IF ~~ THEN EXIT
END

IF ~~ BrBattle5
SAY @867
IF ~~ THEN EXIT
END

IF ~~ BrBattle6
SAY @868
IF ~~ THEN EXIT
END


IF ~~ BrBattle7
SAY @869
IF ~~ THEN EXIT
END

IF ~~ BrBattle8
SAY @870
IF ~~ THEN EXIT
END

IF ~~ BrRight1
SAY @871
IF ~~ THEN EXIT
END

IF ~~ BrRight2
SAY @872
IF ~~ THEN EXIT
END

IF ~~ BrRight3
SAY @873
IF ~~ THEN EXIT
END

IF ~~ BrRight4
SAY @874
IF ~~ THEN EXIT
END

IF ~~ BrRight5
SAY @875
IF ~~ THEN EXIT
END

IF ~~ BrRight6
SAY @876
IF ~~ THEN EXIT
END

IF ~~ BrRight7
SAY @877
IF ~~ THEN EXIT
END

IF ~~ BrRight8
SAY @878
IF ~~ THEN EXIT
END

IF ~~ BrRight9
SAY @879
IF ~~ THEN EXIT
END

IF ~~ BrRight10
SAY @880
IF ~~ THEN EXIT
END

IF ~~ BrRight11
SAY @881
IF ~~ THEN EXIT
END

IF ~~ BrRight12
SAY @882
IF ~~ THEN EXIT
END

IF ~~ BrCrush1
SAY @883
IF ~~ THEN EXIT
END

IF ~~ BrCrush2
SAY @884
IF ~~ THEN EXIT
END

IF ~~ BrCrush3
SAY @885
IF ~~ THEN EXIT
END

IF ~~ BrCrush4
SAY @886
IF ~~ THEN EXIT
END

IF ~~ BrCrush5
SAY @887
IF ~~ THEN EXIT
END

IF ~~ BrCrush6
SAY @888
IF ~~ THEN EXIT
END

IF ~~ BrCrush7
SAY @889
IF ~~ THEN EXIT
END

IF ~~ BrCrush8
SAY @890
IF ~~ THEN EXIT
END

IF ~~ BrDungeonArea1
SAY @891
IF ~~ THEN EXIT
END

IF ~~ BrDungeonArea2
SAY @892
IF ~~ THEN EXIT
END

IF ~~ BrDungeonArea3
SAY @893
IF ~~ THEN EXIT
END

IF ~~ BrDungeonArea4
SAY @894
IF ~~ THEN EXIT
END

IF ~~ BrCITYArea1
SAY @895
IF ~~ THEN EXIT
END

IF ~~ BrCITYArea2
SAY @896
IF ~~ THEN EXIT
END

IF ~~ BrCITYArea3
SAY @897
IF ~~ THEN EXIT
END

IF ~~ BrCITYArea4
SAY @898
IF ~~ THEN EXIT
END

IF ~~ BrFORESTArea1
SAY @899
IF ~~ THEN EXIT
END

IF ~~ BrFORESTArea2
SAY @900
IF ~~ THEN EXIT
END

IF ~~ BrFORESTArea3
SAY @901
IF ~~ THEN EXIT
END

IF ~~ BrFORESTArea4
SAY @902
IF ~~ THEN EXIT
END

IF ~~ BrSorry
SAY @903
IF ~~ THEN DO ~SetGlobal("P#BranRomCutByOther","GLOBAL",2) SetGlobal("P#BranwenRomanceActive","GLOBAL",1)~ EXIT
END

IF ~IsGabber(Player1) %BGT_VAR% Global("P#BranMatch","GLOBAL",1) GlobalLT("P#BRLoveTalk","GLOBAL",39) Global("P#BranwenRomanceActive","GLOBAL",2) !Global("X#DisableBranFlirts","GLOBAL",1)~ THEN BEGIN BranwenInitFlirtsLate
SAY @904

+ ~RandomNum(8,1)~ + @905 + BrHold1
+ ~RandomNum(8,2)~ + @905 + BrHold2
+ ~RandomNum(8,3)~ + @905 + BrHold3
+ ~RandomNum(8,4)~ + @905 + BrHold4
+ ~RandomNum(8,5)~ + @905 + BrHold5
+ ~RandomNum(8,6)~ + @905 + BrHold6
+ ~RandomNum(8,7)~ + @905 + BrHold7
+ ~RandomNum(8,8)~ + @905 + BrHold8

+ ~RandomNum(3,1) HPPercentGT(Player1,90)~ + @906 + BrHeal1
+ ~RandomNum(3,2) HPPercentGT(Player1,90)~ + @906 + BrHeal2
+ ~RandomNum(3,3) HPPercentGT(Player1,90)~ + @906 + BrHeal3

+ ~RandomNum(3,1) HPPercentGT(Player1,50) HPPercentLT(Player1,91)~ + @906 + BrHeal4
+ ~RandomNum(3,2) HPPercentGT(Player1,50) HPPercentLT(Player1,91)~ + @906 + BrHeal5
+ ~RandomNum(3,3) HPPercentGT(Player1,50) HPPercentLT(Player1,91)~ + @906 + BrHeal6

+ ~RandomNum(4,1) HPPercentLT(Player1,51)~ + @906 + BrHeal7
+ ~RandomNum(4,2) HPPercentLT(Player1,51)~ + @906 + BrHeal8
+ ~RandomNum(4,3) HPPercentLT(Player1,51)~ + @906 + BrHeal9
+ ~RandomNum(4,4) HPPercentLT(Player1,51)~ + @906 + BrHeal10

+ ~RandomNum(8,1)~ + @907 + BrGold1
+ ~RandomNum(8,2)~ + @907 + BrGold2
+ ~RandomNum(8,3)~ + @907 + BrGold3
+ ~RandomNum(8,4)~ + @907 + BrGold4
+ ~RandomNum(8,5)~ + @907 + BrGold5
+ ~RandomNum(8,6)~ + @907 + BrGold6
+ ~RandomNum(8,7)~ + @907 + BrGold7
+ ~RandomNum(8,8)~ + @907 + BrGold8

+ ~HPPercentLT(Player1,50)~ + @908 + BrWatch1

+ ~!HPPercentLT(Player1,50) RandomNum(7,1)~ + @908 + BrWatch2
+ ~!HPPercentLT(Player1,50) RandomNum(7,2)~ + @908 + BrWatch3
+ ~!HPPercentLT(Player1,50) RandomNum(7,3)~ + @908 + BrWatch4
+ ~!HPPercentLT(Player1,50) RandomNum(7,4)~ + @908 + BrWatch5
+ ~!HPPercentLT(Player1,50) RandomNum(7,5)~ + @908 + BrWatch6
+ ~!HPPercentLT(Player1,50) RandomNum(7,6)~ + @908 + BrWatch7
+ ~!HPPercentLT(Player1,50) RandomNum(7,7)~ + @908 + BrWatch8

++ @909 + BrWrestle

+ ~RandomNum(2,1)~ + @910 + BRSnow1
+ ~RandomNum(2,2)~ + @910 + BRSnow2

+ ~RandomNum(4,1)~ + @911 + BrFlEyes1
+ ~RandomNum(4,2)~ + @911 + BrFlEyes2
+ ~RandomNum(4,3)~ + @911 + BrFlEyes3
+ ~RandomNum(4,4)~ + @911 + BrFlEyes4

+ ~RandomNum(8,1)~ + @912 + BrGaze1
+ ~RandomNum(8,2)~ + @912 + BrGaze2
+ ~RandomNum(8,3)~ + @912 + BrGaze3
+ ~RandomNum(8,4)~ + @912 + BrGaze4
+ ~RandomNum(8,5)~ + @912 + BrGaze5
+ ~RandomNum(8,6)~ + @912 + BrGaze6
+ ~RandomNum(8,7)~ + @912 + BrGaze7
+ ~RandomNum(8,8)~ + @912 + BrGaze8

+ ~AreaType(CITY) RandomNum(8,1)~ + @913 + BrCold1
+ ~AreaType(CITY) RandomNum(8,2)~ + @913 + BrCold2
+ ~AreaType(CITY) RandomNum(8,3)~ + @913 + BrCold3
+ ~AreaType(CITY) RandomNum(8,4)~ + @913 + BrCold4
+ ~AreaType(CITY) RandomNum(8,5)~ + @913 + BrCold5
+ ~AreaType(CITY) RandomNum(8,6)~ + @913 + BrCold6
+ ~AreaType(CITY) RandomNum(8,7)~ + @913 + BrCold7
+ ~AreaType(CITY) RandomNum(8,8)~ + @913 + BrCold8

+ ~AreaType(FOREST) RandomNum(8,1)~ + @914 + BrCold1
+ ~AreaType(FOREST) RandomNum(8,2)~ + @914 + BrCold2
+ ~AreaType(FOREST) RandomNum(8,3)~ + @914 + BrCold3
+ ~AreaType(FOREST) RandomNum(8,4)~ + @914 + BrCold4
+ ~AreaType(FOREST) RandomNum(8,5)~ + @914 + BrCold5
+ ~AreaType(FOREST) RandomNum(8,6)~ + @914 + BrCold6
+ ~AreaType(FOREST) RandomNum(8,7)~ + @914 + BrCold7
+ ~AreaType(FOREST) RandomNum(8,8)~ + @914 + BrCold8

+ ~RandomNum(8,1)~ + @915 + BrNight1
+ ~RandomNum(8,2)~ + @915 + BrNight2
+ ~RandomNum(8,3)~ + @915 + BrNight3
+ ~RandomNum(8,4)~ + @915 + BrNight4
+ ~RandomNum(8,5)~ + @915 + BrNight5
+ ~RandomNum(8,6)~ + @915 + BrNight6
+ ~RandomNum(8,7)~ + @915 + BrNight7
+ ~RandomNum(8,8)~ + @915 + BrNight8

+ ~Global("X#DisableBranFlirts","GLOBAL",0)~ + @916 DO ~SetGlobal("X#DisableBranFlirts","GLOBAL",1)~ EXIT

++ @917 EXIT

++ @918 + X#BrBreakLate1

+ ~%VoiceStrange%~ + @854 + BranwenVoice

END

IF ~~ X#BrBreakLate1
SAY @919
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ BrNight1
SAY @920
= @921
IF ~~ THEN EXIT
END

IF ~~ BrNight2
SAY @922
IF ~~ THEN EXIT
END

IF ~~ BrNight3
SAY @923
IF ~~ THEN EXIT
END

IF ~~ BrNight4
SAY @924
IF ~~ THEN EXIT
END

IF ~~ BrNight5
SAY @925
IF ~~ THEN EXIT
END

IF ~~ BrNight6
SAY @926
IF ~~ THEN EXIT
END

IF ~~ BrNight7
SAY @927
IF ~~ THEN EXIT
END

IF ~~ BrNight8
SAY @928
IF ~~ THEN EXIT
END

IF ~~ BrCold1
SAY @929
++ @930 + BrCold1.1
++ @931 + BrCold1.2
++ @932 + BrCold1.3
END

IF ~~ BrCold1.1
SAY @933
IF ~~ THEN EXIT
END

IF ~~ BrCold1.2
SAY @934
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ BrCold1.3
SAY @935
IF ~~ THEN EXIT
END

IF ~~ BrCold2
SAY @936
IF ~~ THEN EXIT
END

IF ~~ BrCold3
SAY @937
= @938
++ @939 + BrCold3.1
++ @940 + BrCold3.1
++ @941 + BrCold3.2
++ @942 + BrCold3.2
END

IF ~~ BrCold3.1
SAY @943
IF ~~ THEN EXIT
END

IF ~~ BrCold3.2
SAY @944
IF ~~ THEN EXIT
END

IF ~~ BrCold4
SAY @945
IF ~~ THEN EXIT
END

IF ~~ BrCold5
SAY @946
IF ~~ THEN EXIT
END

IF ~~ BrCold6
SAY @947
IF ~~ THEN EXIT
END

IF ~~ BrCold7
SAY @948
IF ~~ THEN EXIT
END

IF ~~ BrCold8
SAY @949
IF ~~ THEN EXIT
END

IF ~~ BrGaze1
SAY @950
IF ~~ THEN EXIT
END

IF ~~ BrGaze2
SAY @951
IF ~~ THEN EXIT
END

IF ~~ BrGaze3
SAY @952
IF ~~ THEN EXIT
END

IF ~~ BrGaze4
SAY @953
IF ~~ THEN EXIT
END

IF ~~ BrGaze5
SAY @954
IF ~~ THEN EXIT
END

IF ~~ BrGaze6
SAY @955
IF ~~ THEN EXIT
END

IF ~~ BrGaze7
SAY @956
IF ~~ THEN EXIT
END

IF ~~ BrGaze8
SAY @957
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes1
SAY @958
++ @959 + BrFlEyes1.1
++ @960 + BrFlEyes1.1
+ ~RandomNum(4,1)~ + @961 + BrFlEyes1.2.1
+ ~RandomNum(4,2)~ + @961 + BrFlEyes1.2.2
+ ~RandomNum(4,3)~ + @961 + BrFlEyes1.2.3
+ ~RandomNum(4,4)~ + @961 + BrFlEyes1.2.4
++ @962 + BrFlEyes1.1
++ @963 + BrFlEyes1.1
END

IF ~~ BrFlEyes1.1
SAY @964
= @965
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes1.2.1
SAY @966
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes1.2.2
SAY @967
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes1.2.3
SAY @968
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes1.2.4
SAY @969
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes2
SAY @970
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes3
SAY @971
++ @972 + BrFlEyes3.1
++ @973 + BrFlEyes3.2
++ @974 + BrFlEyes3.3
END

IF ~~ BrFlEyes3.1
SAY @975
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes3.2
SAY @976
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes3.3
SAY @977
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes4
SAY @978
++ @979 + BrFlEyes4.1
++ @980 + BrFlEyes4.2
++ @974 + BrFlEyes4.3
++ @981 + BrFlEyes4.4
END

IF ~~ BrFlEyes4.1
SAY @982
++ @983 + BrFlEyes4.5
++ @984 + BrFlEyes4.2
++ @985 + BrFlEyes4.3
++ @981 + BrFlEyes4.4.1
END

IF ~~ BrFlEyes4.2
SAY @986
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes4.3
SAY @987
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes4.4
SAY @988
++ @989 + BrFlEyes4.4.0
++ @983 + BrFlEyes4.5
END

IF ~~ BrFlEyes4.4.1
SAY @990
++ @989 + BrFlEyes4.4.0
++ @991 + BrFlEyes4.6
END

IF ~~ BrFlEyes4.5
SAY @992
++ @991 + BrFlEyes4.6
++ @993 + BrFlEyes4.2
++ @985 + BrFlEyes4.3
++ @994 + BrFlEyes4.4.2
END

IF ~~ BrFlEyes4.4.2
SAY @995
++ @991 + BrFlEyes4.6
++ @996 EXIT
+ ~RandomNum(2,1)~ + @997 + BrFlEyes4.4.2.1
+ ~RandomNum(2,2)~ + @997 + BrFlEyes4.4.2.2
END

IF ~~ BrFlEyes4.4.2.1
SAY @998
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes4.4.2.2
SAY @999
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes4.6
SAY @1000
++ @1001 + BrFlEyes4.6.1
+ ~RandomNum(2,1)~ + @1002 + BrFlEyes4.6.2
+ ~RandomNum(2,2)~ + @1002 + BrFlEyes4.6.3
++ @1003 EXIT
END

IF ~~ BrFlEyes4.6.1
SAY @1004
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes4.6.2
SAY @1005
++ @1006 + BrFlEyes4.6.2.1
+ ~RandomNum(2,1)~ + @997 + BrFlEyes4.4.2.1
+ ~RandomNum(2,3)~ + @997 + BrFlEyes4.4.2.2
END

IF ~~ BrFlEyes4.6.3
SAY @1007
++ @1008 + BrFlEyes4.6.2.2
+ ~RandomNum(2,1)~ + @997 + BrFlEyes4.4.2.1
+ ~RandomNum(2,3)~ + @997 + BrFlEyes4.4.2.2
END

IF ~~ BrFlEyes4.6.2.1
SAY @1009
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes4.6.2.2
SAY @1010
IF ~~ THEN EXIT
END

IF ~~ BrFlEyes4.4.0
SAY @1011
IF ~~ THEN EXIT
END

IF ~~ BRSnow1
SAY @1012
+ ~RandomNum(4,1)~ + @1013 + BRSnow1.1
+ ~RandomNum(4,2)~ + @1013 + BRSnow1.2
+ ~RandomNum(4,3)~ + @1013 + BRSnow1.3
+ ~RandomNum(4,4)~ + @1013 + BRSnow1.4
++ @1014 + BRSnow1.4
++ @1015 + BRSnow1.5
END

IF ~~ BRSnow2
SAY @1016
+ ~RandomNum(2,1)~ + @1017 + BRSnow1.6
+ ~RandomNum(2,2)~ + @1017 + BRSnow1.7
++ @1018 + BRSnow1.8
++ @1019 + BRSnow1.9
END

IF ~~ BRSnow1.1
SAY @1020
++ @1021 + BRSnow1.10
++ @1022 + BRSnow1.11
++ @1023 + BRSnow1.12
++ @1024 + BRSnow1.13
END

IF ~~ BRSnow1.2
SAY @1025
IF ~RandomNum(3,1)~ THEN GOTO BRSnow1.1
IF ~RandomNum(3,2)~ THEN GOTO BRSnow1.3
IF ~RandomNum(3,3)~ THEN GOTO BRSnow1.4
END

IF ~~ BRSnow1.3
SAY @1026
++ @1027 + BRSnow1.11
++ @1022 + BRSnow1.11
++ @1023 + BRSnow1.12
++ @1024 + BRSnow1.13
END

IF ~~ BRSnow1.4
SAY @1028
+ ~RandomNum(2,1)~ + @1017 + BRSnow1.6
+ ~RandomNum(2,2)~ + @1017 + BRSnow1.7
++ @1018 + BRSnow1.8
++ @1019 + BRSnow1.9
END

IF ~~ BRSnow1.5
SAY @1029
IF ~~ THEN EXIT
END

IF ~~ BRSnow1.6
SAY @1030
++ @1031 + BRSnow1.14
++ @1032 EXIT
END

IF ~~ BRSnow1.7
SAY @1033
IF ~~ THEN EXIT
END

IF ~~ BRSnow1.8
SAY @1034
++ @1035 + BRSnow1.7
++ @1036 + BRSnow1.15
++ @1037 EXIT
END

IF ~~ BRSnow1.9
SAY @1038
IF ~~ THEN EXIT
END

IF ~~ BRSnow1.10
SAY @1039
IF ~~ THEN EXIT
END

IF ~~ BRSnow1.11
SAY @1040
IF ~~ THEN EXIT
END

IF ~~ BRSnow1.12
SAY @1041
IF ~~ THEN EXIT
END

IF ~~ BRSnow1.13
SAY @1042
IF ~~ THEN EXIT
END

IF ~~ BRSnow1.14
SAY @1043
IF ~~ THEN EXIT
END

IF ~~ BRSnow1.15
SAY @1044
IF ~~ THEN EXIT
END

IF ~~ BrWrestle
SAY @1045
IF ~CheckStatGT(Player1,13,STR) RandomNum(4,1)~ THEN GOTO BrWrestle1
IF ~CheckStatGT(Player1,13,STR) RandomNum(4,2)~ THEN GOTO BrWrestle2
IF ~CheckStatGT(Player1,13,STR) RandomNum(4,3)~ THEN GOTO BrWrestle3
IF ~CheckStatGT(Player1,13,STR) RandomNum(4,4)~ THEN GOTO BrWrestle4
IF ~!CheckStatGT(Player1,13,STR) RandomNum(4,1)~ THEN GOTO BrWrestle5
IF ~!CheckStatGT(Player1,13,STR) RandomNum(4,2)~ THEN GOTO BrWrestle5
IF ~!CheckStatGT(Player1,13,STR) RandomNum(4,3)~ THEN GOTO BrWrestle7
IF ~!CheckStatGT(Player1,13,STR) RandomNum(4,4)~ THEN GOTO BrWrestle8
END

IF ~~ BrWrestle1
SAY @1046
IF ~~ THEN EXIT
END

IF ~~ BrWrestle2
SAY @1047
IF ~~ THEN EXIT
END

IF ~~ BrWrestle3
SAY @1048
IF ~~ THEN EXIT
END

IF ~~ BrWrestle4
SAY @1049
IF ~~ THEN EXIT
END

IF ~~ BrWrestle5
SAY @1050
IF ~~ THEN EXIT
END

IF ~~ BrWrestle6
SAY @1051
= @1052
IF ~~ THEN EXIT
END

IF ~~ BrWrestle7
SAY @1053
IF ~~ THEN EXIT
END

IF ~~ BrWrestle8
SAY @1054
= @1055
= @1056
IF ~~ THEN EXIT
END

IF ~~ BrWatch1
SAY @1057
IF ~~ THEN EXIT
END

IF ~~ BrWatch2
SAY @1058
IF ~~ THEN EXIT
END

IF ~~ BrWatch3
SAY @1059
IF ~~ THEN EXIT
END

IF ~~ BrWatch4
SAY @1060
IF ~~ THEN EXIT
END

IF ~~ BrWatch5
SAY @1061
IF ~~ THEN EXIT
END

IF ~~ BrWatch6
SAY @1062
IF ~~ THEN EXIT
END

IF ~~ BrWatch7
SAY @1063
IF ~~ THEN EXIT
END

IF ~~ BrWatch8
SAY @1064
IF ~~ THEN EXIT
END

IF ~~ BrGold1
SAY @1065
IF ~~ THEN EXIT
END

IF ~~ BrGold2
SAY @1066
IF ~~ THEN EXIT
END

IF ~~ BrGold3
SAY @1067
IF ~~ THEN EXIT
END

IF ~~ BrGold4
SAY @1068
IF ~~ THEN EXIT
END

IF ~~ BrGold5
SAY @1069
IF ~~ THEN EXIT
END

IF ~~ BrGold6
SAY @1070
IF ~~ THEN EXIT
END

IF ~~ BrGold7
SAY @1071
IF ~~ THEN EXIT
END

IF ~~ BrGold8
SAY @1072
IF ~~ THEN EXIT
END

IF ~~ BrHeal1
SAY @1073
IF ~~ THEN EXIT
END

IF ~~ BrHeal2
SAY @1074
IF ~~ THEN EXIT
END

IF ~~ BrHeal3
SAY @1075
IF ~~ THEN EXIT
END

IF ~~ BrHeal4
SAY @1076
IF ~~ THEN DO ~ReallyForceSpellRES("SPPR103",Player1)~ EXIT
END

IF ~~ BrHeal5
SAY @1077
IF ~~ THEN DO ~ReallyForceSpellRES("SPPR103",Player1)~ EXIT
END

IF ~~ BrHeal6
SAY @1078
IF ~~ THEN DO ~ReallyForceSpellRES("SPPR103",Player1)~ EXIT
END

IF ~~ BrHeal7
SAY @1079
IF ~~ THEN EXIT
END

IF ~~ BrHeal8
SAY @1080
IF ~~ THEN DO ~ReallyForceSpellRES("SPPR103",Player1)~ EXIT
END

IF ~~ BrHeal9
SAY @1081
IF ~~ THEN EXIT
END

IF ~~ BrHeal10
SAY @1082
IF ~~ THEN EXIT
END

IF ~~ BrHold1
SAY @1083
IF ~~ THEN EXIT
END

IF ~~ BrHold2
SAY @1084
IF ~~ THEN EXIT
END

IF ~~ BrHold3
SAY @1085
IF ~~ THEN EXIT
END

IF ~~ BrHold4
SAY @1086
IF ~~ THEN EXIT
END

IF ~~ BrHold5
SAY @1087
IF ~~ THEN EXIT
END

IF ~~ BrHold6
SAY @1088
= @1089
IF ~~ THEN EXIT
END

IF ~~ BrHold7
SAY @1090
IF ~~ THEN EXIT
END

IF ~~ BrHold8
SAY @1091
IF ~~ THEN EXIT
END

IF ~IsGabber(Player1) %BGT_VAR% Global("P#BranMatch","GLOBAL",1) GlobalGT("P#BRLoveTalk","GLOBAL",8) Global("P#BranwenRomanceActive","GLOBAL",1) !Global("X#DisableBranFlirts","GLOBAL",1)~ THEN BEGIN BranwenInitFlirtsEarly
SAY @1092
+ ~HPPercentLT(Player1,75)~ + @1093 + BrHand1
+ ~!HPPercentLT(Player1,75) RandomNum(7,1)~ + @1093 + BrHand2
+ ~!HPPercentLT(Player1,75) RandomNum(7,2)~ + @1093 + BrHand3
+ ~!HPPercentLT(Player1,75) RandomNum(7,3)~ + @1093 + BrHand4
+ ~!HPPercentLT(Player1,75) RandomNum(7,4)~ + @1093 + BrHand5
+ ~!HPPercentLT(Player1,75) RandomNum(7,5)~ + @1093 + BrHand6
+ ~!HPPercentLT(Player1,75) RandomNum(7,6)~ + @1093 + BrHand7
+ ~!HPPercentLT(Player1,75) RandomNum(7,7)~ + @1093 + BrHand8
+ ~RandomNum(8,1)~ + @1094 + BrKiss1
+ ~RandomNum(8,2)~ + @1094 + BrKiss2
+ ~RandomNum(8,3)~ + @1094 + BrKiss3
+ ~RandomNum(8,4)~ + @1094 + BrKiss4
+ ~RandomNum(8,5)~ + @1094 + BrKiss5
+ ~RandomNum(8,6)~ + @1094 + BrKiss6
+ ~RandomNum(8,7)~ + @1094 + BrKiss7
+ ~RandomNum(8,8)~ + @1094 + BrKiss8

+ ~RandomNum(8,1)~ + @1095 + BrWaist1
+ ~RandomNum(8,2)~ + @1095 + BrWaist2
+ ~RandomNum(8,3)~ + @1095 + BrWaist3
+ ~RandomNum(8,4)~ + @1095 + BrWaist4
+ ~RandomNum(8,5)~ + @1095 + BrWaist5
+ ~RandomNum(8,6)~ + @1095 + BrWaist6
+ ~RandomNum(8,7)~ + @1095 + BrWaist7
+ ~RandomNum(8,8)~ + @1095 + BrWaist8

+ ~RandomNum(8,1)~ + @1096 + BrHair1
+ ~RandomNum(8,2)~ + @1096 + BrHair2
+ ~RandomNum(8,3)~ + @1096 + BrHair3
+ ~RandomNum(8,4)~ + @1096 + BrHair4
+ ~RandomNum(8,5)~ + @1096 + BrHair5
+ ~RandomNum(8,6)~ + @1096 + BrHair6
+ ~RandomNum(8,7)~ + @1096 + BrHair7
+ ~RandomNum(8,8)~ + @1096 + BrHair8

+ ~RandomNum(8,1)~ + @1097 + BrStare1
+ ~RandomNum(8,2)~ + @1097 + BrStare2
+ ~RandomNum(8,3)~ + @1097 + BrStare3
+ ~RandomNum(8,4)~ + @1097 + BrStare4
+ ~RandomNum(8,5)~ + @1097 + BrStare5
+ ~RandomNum(8,6)~ + @1097 + BrStare6
+ ~RandomNum(8,7)~ + @1097 + BrStare7
+ ~RandomNum(8,8)~ + @1097 + BrStare8

+ ~RandomNum(8,1)~ + @1098 + BrThink1
+ ~RandomNum(8,2)~ + @1098 + BrThink2
+ ~RandomNum(8,3)~ + @1098 + BrThink3
+ ~RandomNum(8,4)~ + @1098 + BrThink4
+ ~RandomNum(8,5)~ + @1098 + BrThink5
+ ~RandomNum(8,6)~ + @1098 + BrThink6
+ ~RandomNum(8,7)~ + @1098 + BrThink7
+ ~RandomNum(8,8)~ + @1098 + BrThink8

+ ~RandomNum(8,1)~ + @1099 + BrThank1
+ ~RandomNum(8,2)~ + @1099 + BrThank2
+ ~RandomNum(8,3)~ + @1099 + BrThank3
+ ~RandomNum(8,4)~ + @1099 + BrThank4
+ ~RandomNum(8,5)~ + @1099 + BrThank5
+ ~RandomNum(8,6)~ + @1099 + BrThank6
+ ~RandomNum(8,7)~ + @1099 + BrThank7
+ ~RandomNum(8,8)~ + @1099 + BrThank8

+ ~RandomNum(8,1)~ + @1100 + BrBelle1
+ ~RandomNum(8,2)~ + @1100 + BrBelle2
+ ~RandomNum(8,3)~ + @1100 + BrBelle3
+ ~RandomNum(8,4)~ + @1100 + BrBelle4
+ ~RandomNum(8,5)~ + @1100 + BrBelle5
+ ~RandomNum(8,6)~ + @1100 + BrBelle6
+ ~RandomNum(8,7)~ + @1100 + BrBelle7
+ ~RandomNum(8,8)~ + @1100 + BrBelle7

++ @1101 + BrSweet

+ ~RandomNum(8,1)~ + @1102 + BRNeck1
+ ~RandomNum(8,2)~ + @1102 + BRNeck2
+ ~RandomNum(8,3)~ + @1102 + BRNeck1
+ ~RandomNum(8,4)~ + @1102 + BRNeck2
+ ~RandomNum(8,5)~ + @1102 + BRNeck7
+ ~RandomNum(8,6)~ + @1102 + BRNeck8
+ ~RandomNum(8,7)~ + @1102 + BRNeck9
+ ~RandomNum(8,8)~ + @1102 + BRNeck10

++ @1103 + BRFriends

+ ~Global("X#DisableBranFlirts","GLOBAL",0)~ + @1104 DO ~SetGlobal("X#DisableBranFlirts","GLOBAL",1)~ EXIT

++ @917 EXIT

+ ~%VoiceStrange%~ + @854 + BranwenVoice

END

IF ~~ BRFriends
SAY @1105
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END


IF ~~ BRNeck1
SAY @1106
IF ~~ THEN EXIT
END

IF ~~ BRNeck2
SAY @1107
+ ~RandomNum(2,1)~ + @1108 + BRNeck2.2
+ ~RandomNum(2,2)~ + @1108 + BRNeck2.3
+ ~RandomNum(2,1)~ + @1109 + BRNeck2.4
+ ~RandomNum(2,2)~ + @1109 + BRNeck2.5
++ @1110 + BRNeck2.6
END

IF ~~ BRNeck2.2
SAY @1111
IF ~~ THEN EXIT
END

IF ~~ BRNeck2.3
SAY @1112
IF ~~ THEN EXIT
END

IF ~~ BRNeck2.4
SAY @1113
IF ~~ THEN EXIT
END

IF ~~ BRNeck2.5
SAY @1114
IF ~~ THEN EXIT
END

IF ~~ BRNeck2.6
SAY @1115
IF ~~ THEN EXIT
END

IF ~~ BRNeck7
SAY @1116
IF ~~ THEN EXIT
END

IF ~~ BRNeck8
SAY @1117
= @1118
IF ~~ THEN EXIT
END

IF ~~ BRNeck9
SAY @1119
IF ~~ THEN EXIT
END

IF ~~ BRNeck10
SAY @1120
= @1121
IF ~~ THEN EXIT
END

IF ~~ BrSweet
SAY @1122
++ @1123 + BrSweet1
++ @1124 + BrSweet2
++ @1125 + BrSweet3
++ @1126 + BrSweet4
++ @1127 + BrSweet5
++ @1128 + BrSweet6
++ @1129 + BrSweet7
++ @1130 + BrSweet8
END

IF ~~ BrSweet1
SAY @1131
IF ~~ THEN EXIT
END

IF ~~ BrSweet2
SAY @1132
IF ~~ THEN EXIT
END

IF ~~ BrSweet3
SAY @1133
IF ~~ THEN EXIT
END

IF ~~ BrSweet4
SAY @1134
IF ~~ THEN EXIT
END

IF ~~ BrSweet5
SAY @1135
IF ~~ THEN EXIT
END

IF ~~ BrSweet6
SAY @1136

IF ~~ THEN EXIT
END

IF ~~ BrSweet7
SAY @1137
IF ~~ THEN EXIT
END

IF ~~ BrSweet8
SAY @1138
IF ~~ THEN EXIT
END

IF ~~ BrBelle1
SAY @1139
IF ~~ THEN EXIT
END

IF ~~ BrBelle2
SAY @1140
IF ~~ THEN EXIT
END

IF ~~ BrBelle3
SAY @1141
IF ~~ THEN EXIT
END

IF ~~ BrBelle4
SAY @1142
IF ~~ THEN EXIT
END

IF ~~ BrBelle5
SAY @1143
IF ~~ THEN EXIT
END

IF ~~ BrBelle6
SAY @1144
++ @1145 + BrBelle6.1
++ @1146 + BrBelle6.1
++ @1147 EXIT
END

IF ~~ BrBelle6.1
SAY @1148
IF ~~ THEN EXIT
END

IF ~~ BrBelle7
SAY @1149
IF ~!InParty("dynaheir") !InParty("sharteel")~ THEN EXIT
IF ~InParty("sharteel") InMyArea("sharteel") !StateCheck("sharteel",CD_STATE_NOTVALID)~ THEN GOTO BrBelle7.1
IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN GOTO BrBelle7.2
END

IF ~~ BrBelle7.2
SAY @1150
IF ~~ THEN EXIT
END

IF ~~ BrBelle7.1
SAY @1151
IF ~~ THEN EXIT
END

IF ~~ BrThank1
SAY @1152
IF ~~ THEN EXIT
END

IF ~~ BrThank2
SAY @1153
IF ~~ THEN EXIT
END

IF ~~ BrThank3
SAY @1154
IF ~~ THEN EXIT
END

IF ~~ BrThank4
SAY @1155
IF ~~ THEN EXIT
END

IF ~~ BrThank5
SAY @1156
IF ~~ THEN EXIT
END

IF ~~ BrThank6
SAY @1157
IF ~~ THEN EXIT
END

IF ~~ BrThank7
SAY @1158
IF ~~ THEN EXIT
END

IF ~~ BrThank8
SAY @1159
IF ~~ THEN EXIT
END

IF ~~ BrThink1
SAY @1160
IF ~~ THEN EXIT
END

IF ~~ BrThink2
SAY @1161
IF ~~ THEN EXIT
END

IF ~~ BrThink3
SAY @1162
IF ~~ THEN EXIT
END

IF ~~ BrThink4
SAY @1163
IF ~~ THEN EXIT
END

IF ~~ BrThink5
SAY @1164
IF ~~ THEN EXIT
END

IF ~~ BrThink6
SAY @1165
IF ~~ THEN EXIT
END

IF ~~ BrThink7
SAY @1166
IF ~~ THEN EXIT
END

IF ~~ BrThink8
SAY @1167
IF ~~ THEN EXIT
END

IF ~~ BrStare1
SAY @1168
IF ~~ THEN EXIT
END

IF ~~ BrStare2
SAY @1169
++ @1170 + BrStare2.1
++ @1171 + BrStare2.2
++ @1172 + BrStare2.3
END

IF ~~ BrStare2.1
SAY @1173
IF ~~ THEN EXIT
END

IF ~~ BrStare2.2
SAY @1174
IF ~~ THEN EXIT
END

IF ~~ BrStare2.3
SAY @1175
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ BrStare3
SAY @1176
IF ~~ THEN EXIT
END

IF ~~ BrStare4
SAY @1177
IF ~~ THEN EXIT
END

IF ~~ BrStare5
SAY @1178
IF ~~ THEN EXIT
END

IF ~~ BrStare6
SAY @1179
IF ~~ THEN EXIT
END

IF ~~ BrStare7
SAY @1180
IF ~~ THEN EXIT
END

IF ~~ BrStare8
SAY @1181
++ @1182 + BrStare8.1
++ @1183 + BrStare8.2
++ @1184 EXIT
END

IF ~~ BrStare8.1
SAY @1185
IF ~~ THEN EXIT
END

IF ~~ BrStare8.2
SAY @1186
IF ~~ THEN DO ~SetGlobal("P#BranwenRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ BrHair1
SAY @1187
IF ~~ THEN EXIT
END

IF ~~ BrHair2
SAY @1188
IF ~~ THEN EXIT
END

IF ~~ BrHair3
SAY @1189
IF ~~ THEN EXIT
END

IF ~~ BrHair4
SAY @1190
IF ~~ THEN EXIT
END

IF ~~ BrHair5
SAY @1191
IF ~~ THEN EXIT
END

IF ~~ BrHair6
SAY @1192
IF ~~ THEN EXIT
END

IF ~~ BrHair7
SAY @1193
IF ~~ THEN EXIT
END

IF ~~ BrHair8
SAY @1194
IF ~~ THEN EXIT
END

IF ~~ BrWaist1
SAY @1195
IF ~~ THEN EXIT
END

IF ~~ BrWaist2
SAY @1196
IF ~~ THEN EXIT
END

IF ~~ BrWaist3
SAY @1197
IF ~~ THEN EXIT
END

IF ~~ BrWaist4
SAY @1198
IF ~~ THEN EXIT
END

IF ~~ BrWaist5
SAY @1199
IF ~~ THEN EXIT
END

IF ~~ BrWaist6
SAY @1200
IF ~~ THEN EXIT
END

IF ~~ BrWaist7
SAY @1201
IF ~~ THEN EXIT
END

IF ~~ BrWaist8
SAY @1202
IF ~~ THEN EXIT
END

IF ~~ BrKiss1
SAY @1203
IF ~~ THEN EXIT
END

IF ~~ BrKiss2
SAY @1204
IF ~~ THEN EXIT
END

IF ~~ BrKiss3
SAY @1205
IF ~~ THEN EXIT
END

IF ~~ BrKiss4
SAY @1206
IF ~~ THEN EXIT
END

IF ~~ BrKiss5
SAY @1207
IF ~~ THEN EXIT
END

IF ~~ BrKiss6
SAY @1208
IF ~~ THEN EXIT
END

IF ~~ BrKiss7
SAY @1209
IF ~~ THEN EXIT
END

IF ~~ BrKiss8
SAY @1210
IF ~~ THEN EXIT
END


IF ~~ BrHand1
SAY @1211
IF ~~ THEN DO ~ReallyForceSpellRES("SPPR103",Player1)~ EXIT
END

IF ~~ BrHand2
SAY @1212
IF ~~ THEN EXIT
END

IF ~~ BrHand3
SAY @1213
IF ~~ THEN EXIT
END

IF ~~ BrHand4
SAY @1214
IF ~~ THEN EXIT
END

IF ~~ BrHand5
SAY @1215
IF ~~ THEN EXIT
END

IF ~~ BrHand6
SAY @1216
IF ~~ THEN EXIT
END

IF ~~ BrHand7
SAY @1217
IF ~~ THEN EXIT
END

IF ~~ BrHand8
SAY @1218
IF ~~ THEN EXIT
END

IF ~~ BRCHSuccess
SAY @1219
IF ~~ THEN DO ~SetGlobal("P#BRCHdone","GLOBAL",1)~ EXIT
END

IF ~~ BRCHFailure1
SAY @1220
IF ~~ THEN EXIT
END

IF ~~ BRCHFailure2
SAY @1221
IF ~~ THEN EXIT
END

IF ~~ BRCHFailure3
SAY @1222
IF ~~ THEN EXIT
END

IF ~~ BRCHFailure4
SAY @1223
IF ~~ THEN EXIT
END

END

APPEND ~%DYNAHEIR_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR% OR(3) Global("X#DynaheirRomanceInactive","GLOBAL",1) GlobalLT("X#DYLoveTalk","GLOBAL",13) Global("X#DynaDisableFlirts","GLOBAL",1)~ THEN BEGIN DYCH
SAY @1224
+ ~InParty("minsc") HPPercentLT("minsc",90)~ + @1225 + DYCHMinsc
++ @1226 EXIT

+ ~Global("X#DYCHdone","GLOBAL",1) RandomNum(4,1)~ + @1227 + DYCHFailure1
+ ~Global("X#DYCHdone","GLOBAL",1) RandomNum(4,2)~ + @1227 + DYCHFailure2
+ ~Global("X#DYCHdone","GLOBAL",1) RandomNum(4,3)~ + @1227 + DYCHFailure3
+ ~Global("X#DYCHdone","GLOBAL",1) RandomNum(4,4)~ + @1227 + DYCHFailure4


 + ~!Global("X#DYCHdone","GLOBAL",1) RandomNum(5,1)~ + @1228 + DYCHSuccess
 + ~!Global("X#DYCHdone","GLOBAL",1) RandomNum(5,2)~ + @1228 + DYCHFailure1
 + ~!Global("X#DYCHdone","GLOBAL",1) RandomNum(5,3)~ + @1228 + DYCHFailure2
 + ~!Global("X#DYCHdone","GLOBAL",1) RandomNum(5,4)~ + @1228 + DYCHFailure3
 + ~!Global("X#DYCHdone","GLOBAL",1) RandomNum(5,5)~ + @1228 + DYCHFailure4

 + ~!Global("X#DYCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @1229 + DYCHSuccess
 + ~!Global("X#DYCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @1229 + DYCHFailure1

 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @1229 + DYCHSuccess
 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @1229 + DYCHFailure1
 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @1229 + DYCHFailure2
 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @1229 + DYCHFailure3
 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @1229 + DYCHFailure4

+ ~!Global("X#DYCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @1230 + DYCHSuccess
 + ~!Global("X#DYCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @1230 + DYCHFailure2

 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @1230 + DYCHSuccess
 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @1230 + DYCHFailure1
 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @1230 + DYCHFailure2
 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @1230 + DYCHFailure3
 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @1230 + DYCHFailure4

+ ~!Global("X#DYCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @1231 + DYCHSuccess
 + ~!Global("X#DYCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @1231 + DYCHFailure3

 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @1231 + DYCHSuccess
 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @1231 + DYCHFailure1
 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @1231 + DYCHFailure3
 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @1231 + DYCHFailure2
 + ~!Global("X#DYCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @1231 + DYCHFailure4

+ ~Global("X#DynaInfoRashemen","GLOBAL",0)~ + @1232 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen0
+ ~Global("X#DynaInfoRashemen","GLOBAL",1)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen1
+ ~Global("X#DynaInfoRashemen","GLOBAL",2)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen2
+ ~Global("X#DynaInfoRashemen","GLOBAL",3)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen3
+ ~Global("X#DynaInfoRashemen","GLOBAL",4)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen4
+ ~Global("X#DynaInfoRashemen","GLOBAL",5)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen5
+ ~Global("X#DynaInfoRashemen","GLOBAL",6)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen6
+ ~Global("X#DynaInfoRashemen","GLOBAL",7)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen7
+ ~Global("X#DynaInfoRashemen","GLOBAL",8)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen8

+ ~Global("X#DynaInfoRashemen","GLOBAL",9)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen9
+ ~Global("X#DynaInfoRashemen","GLOBAL",10)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen10
+ ~Global("X#DynaInfoRashemen","GLOBAL",11)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen11
+ ~Global("X#DynaInfoRashemen","GLOBAL",12)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen12
+ ~Global("X#DynaInfoRashemen","GLOBAL",13)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen13
+ ~Global("X#DynaInfoRashemen","GLOBAL",14)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen14
+ ~Global("X#DynaInfoRashemen","GLOBAL",15)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen15
+ ~Global("X#DynaInfoRashemen","GLOBAL",16)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen16
+ ~Global("X#DynaInfoRashemen","GLOBAL",17)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen17
+ ~Global("X#DynaInfoRashemen","GLOBAL",18)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen18
+ ~Global("X#DynaInfoRashemen","GLOBAL",19)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen19
+ ~Global("X#DynaInfoRashemen","GLOBAL",20)~ + @1233 DO ~IncrementGlobal("X#DynaInfoRashemen","GLOBAL",1)~ + DyInfoRashemen20
+ ~Global("X#DynaInfoRashemen","GLOBAL",21)~ + @1233 + DyInfoRashemen21

+ ~RandomNum(16,1)~ + @1234 + DyInfoRandomLore1
+ ~RandomNum(16,2)~ + @1234 + DyInfoRandomLore2
+ ~RandomNum(16,3)~ + @1234 + DyInfoRandomLore3
+ ~RandomNum(16,4)~ + @1234 + DyInfoRandomLore4
+ ~RandomNum(16,5)~ + @1234 + DyInfoRandomLore5
+ ~RandomNum(16,6)~ + @1234 + DyInfoRandomLore6
+ ~RandomNum(16,7)~ + @1234 + DyInfoRandomLore7
+ ~RandomNum(16,8)~ + @1234 + DyInfoRandomLore8
+ ~RandomNum(16,9)~ + @1234 + DyInfoRandomLore9
+ ~RandomNum(16,10)~ + @1234 + DyInfoRandomLore10
+ ~RandomNum(16,11)~ + @1234 + DyInfoRandomLore11
+ ~RandomNum(16,12)~ + @1234 + DyInfoRandomLore12
+ ~RandomNum(16,13)~ + @1234 + DyInfoRandomLore13
+ ~RandomNum(16,14)~ + @1234 + DyInfoRandomLore14
+ ~RandomNum(16,15)~ + @1234 + DyInfoRandomLore15
+ ~RandomNum(16,16)~ + @1234 + DyInfoRandomLore16

++ @1235 + DynaMapNoFlirt

+ ~Global("X#DynaheirRomanceInactive","GLOBAL",1) OR(2) Global("P#BranwenRomanceActive","GLOBAL",3) Global("P#BranwenRomanceActive","GLOBAL",0) OR(2) Global("X#SharInterest","GLOBAL",3) Global("X#SharInterest","GLOBAL",0) Global("X#DynaRomCutByOther","GLOBAL",1)~ + @1236 + DynaSorry

+ ~%VoiceStrange%~ + @1237 + DynaVoice
END

IF ~~ DynaVoice
SAY @11
IF ~~ THEN DO ~SetName(@1238)
SetPlayerSound(Myself,@1239 ,0)
SetPlayerSound(Myself,@1240 ,1)
SetPlayerSound(Myself,@1241 ,2)
SetPlayerSound(Myself,@1242 ,3)
SetPlayerSound(Myself,@1243 ,4)
SetPlayerSound(Myself,@1244 ,5)
SetPlayerSound(Myself,@1245 ,6)
SetPlayerSound(Myself,@1246 ,7)
SetPlayerSound(Myself,@1247 ,8)
SetPlayerSound(Myself,@1248 ,9)
SetPlayerSound(Myself,@1248 ,10)
SetPlayerSound(Myself,@1248 ,11)
SetPlayerSound(Myself,@1248 ,12)
SetPlayerSound(Myself,@1248 ,13)
SetPlayerSound(Myself,@1249 ,18)
SetPlayerSound(Myself,@1250 ,19)
SetPlayerSound(Myself,@1251 ,20)
SetPlayerSound(Myself,@1252 ,21)
SetPlayerSound(Myself,@1253 ,22)
SetPlayerSound(Myself,@1254 ,23)
SetPlayerSound(Myself,@1255 ,24)
SetPlayerSound(Myself,@1256 ,25)
SetPlayerSound(Myself,@1257 ,26)
SetPlayerSound(Myself,@1258 ,27)
SetPlayerSound(Myself,@1259 ,28)
SetPlayerSound(Myself,@1257 ,29)
SetPlayerSound(Myself,@1258 ,30)
SetPlayerSound(Myself,@1259 ,31)
SetPlayerSound(Myself,@1260 ,32)
SetPlayerSound(Myself,@1261 ,33)
SetPlayerSound(Myself,@1262 ,34)
SetPlayerSound(Myself,@1260 ,35)
SetPlayerSound(Myself,@1261 ,36)
SetPlayerSound(Myself,@1262 ,37)
SetPlayerSound(Myself,@1260 ,38)
SetPlayerSound(Myself,@1263 ,39)
SetPlayerSound(Myself,@1264 ,40)
SetPlayerSound(Myself,@1265 ,41)
SetPlayerSound(Myself,@1266 ,42)
SetPlayerSound(Myself,@1267 ,43)
SetPlayerSound(Myself,@1268 ,44)
SetPlayerSound(Myself,@1239 ,47)
SetPlayerSound(Myself,@1269 ,50)
SetPlayerSound(Myself,@1270 ,53)
SetPlayerSound(Myself,@1271 ,54)
SetPlayerSound(Myself,@1272 ,55)
SetPlayerSound(Myself,@1273 ,56)
SetPlayerSound(Myself,@1274 ,58)
SetPlayerSound(Myself,@1257 ,62)
SetPlayerSound(Myself,@1257 ,63)
SetPlayerSound(Myself,@1258 ,64)
SetPlayerSound(Myself,@1275 ,74)~ EXIT
END

IF ~~ DynaSorry
SAY @1276
= @1277
IF ~~ THEN DO ~SetGlobal("X#DynaRomCutByOther","GLOBAL",2) SetGlobal("X#DynaheirRomanceInactive","GLOBAL",0)~ EXIT
END

//

IF ~~ DynaMapNoFlirt
SAY @1278
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_3%)~ + @1279 + NFMapR2Realm
+ ~Global("Chapter","GLOBAL",%tutu_chapter_3%) OR(2) Dead("tranzig") Global("BanditEnemy","GLOBAL",1)~ + @1279 + NFMapR2Bandits
+ ~Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @1279 + NFMapR2CW
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_4%)~ + @1279 + NFMapR2Baldur
+ ~RandomNum(3,1)~ + @1280 + NFMapR3.1
+ ~RandomNum(3,2)~ + @1281 + NFMapR3.2
+ ~RandomNum(3,3)~ + @1282 + MapR3.3
END

IF ~~ NFMapR2Realm
SAY @1283
IF ~~ THEN EXIT
END

IF ~~ NFMapR2Bandits
SAY @1284
IF ~~ THEN EXIT
END

IF ~~ NFMapR2CW
SAY @1285
IF ~~ THEN EXIT
END

IF ~~ NFMapR2Baldur
SAY @1286
IF ~~ THEN EXIT
END

IF ~~ NFMapR3.1
SAY @1287
IF ~~ THEN EXIT
END

IF ~~ NFMapR3.2
SAY @1288
++ @1289 + NFMapR3.2.1
++ @1290 + NFMapR3.2.2
END


IF ~~ NFMapR3.2.1
SAY @1291
IF ~~ THEN EXIT
END

IF ~~ NFMapR3.2.2
SAY @1292
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen0
SAY @1293
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen1
SAY @1294
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen2
SAY @1295
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen3
SAY @1296
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen4
SAY @1297
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen5
SAY @1298
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen6
SAY @1299
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen7
SAY @1300
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen8
SAY @1301
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen9
SAY @1302
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen10
SAY @1303
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen11
SAY @1304
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen12
SAY @1305
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen13
SAY @1306
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen14
SAY @1307
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen15
SAY @1308
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen16
SAY @1309
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen17
SAY @1310
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen18
SAY @1311
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen19
SAY @1312
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen20
SAY @1313
IF ~~ THEN EXIT
END

IF ~~ DyInfoRashemen21
SAY @1314
IF ~~ THEN EXIT
END

/* Dynaheir Info on other countries. */

IF ~~ DyInfoRandomLore1
SAY @1315
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore2
SAY @1316
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore3
SAY @1317
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore4
SAY @1318
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore5
SAY @1319
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore6
SAY @1320
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore7
SAY @1321
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore8
SAY @1322
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore9
SAY @1323
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore10
SAY @1324
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore11
SAY @1325
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore12
SAY @1326
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore13
SAY @1327
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore14
SAY @1328
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore15
SAY @1329
IF ~~ THEN EXIT
END

IF ~~ DyInfoRandomLore16
SAY @1330
IF ~~ THEN EXIT
END

IF ~~ DYCHSuccess
SAY @1331
IF ~~ THEN DO ~SetGlobal("X#DYCHdone","GLOBAL",1)~ EXIT
END

IF ~~ DYCHFailure1
SAY @1332
IF ~~ THEN EXIT
END

IF ~~ DYCHFailure2
SAY @1333
IF ~~ THEN EXIT
END

IF ~~ DYCHFailure3
SAY @1334
IF ~~ THEN EXIT
END

IF ~~ DYCHFailure4
SAY @1335
IF ~~ THEN EXIT
END

IF ~~ DYCHMinsc
SAY @1336
IF ~~ THEN EXIT
END

IF ~IsGabber(Player1) %BGT_VAR% !Global("X#DynaheirRomanceInactive","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",12)~ THEN BEGIN DynaFlirt
SAY @1337 
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1235 + DynaMap
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1338 + DynaPack1
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1339 + DynaDress
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) AreaType(FOREST)~ + @1340 + DynaFood
+ ~RandomNum(6,1) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1341 + DynaThou1.1
+ ~RandomNum(6,2) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1341 + DynaThou1.2
+ ~RandomNum(6,3) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1341 + DynaThou1.3
+ ~RandomNum(6,4) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1341 + DynaThou1.4
+ ~RandomNum(6,5) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1341 + DynaThou1.4
+ ~RandomNum(6,6) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1341 + DynaThou1.4

+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(4,1)~ + @1342 + DynaHand1
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(4,2)~ + @1342 + DynaHand2
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(4,3)~ + @1342 + DynaHand3
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) GlobalLT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(4,4)~ + @1342 + DynaHand4

+ ~RandomNum(3,1) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",16) GlobalLT("X#DYLoveTalk","GLOBAL",40) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1343 + DynaDrea1.1E
+ ~RandomNum(3,2) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",16) GlobalLT("X#DYLoveTalk","GLOBAL",40) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1343 + DynaDrea1.2E
+ ~RandomNum(3,3) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",16) GlobalLT("X#DYLoveTalk","GLOBAL",40) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1343 + DynaDrea1.3E

+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) AreaType(FOREST)~ + @1344 + DynaThor1

+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(4,1)~ + @1345 + DynaHair1
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(4,2)~ + @1345 + DynaHair2
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(4,3)~ + @1345 + DynaHair3
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(4,4)~ + @1345 + DynaHair4

+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(3,1)~ + @1346 + DynaWisp1
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(3,2)~ + @1346 + DynaWisp2
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(3,3)~ + @1346 + DynaWisp3

+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(5,1)~ + @1347 + DynaEyes1
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(5,2)~ + @1347 + DynaEyes2
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(5,3)~ + @1347 + DynaEyes3
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(5,4)~ + @1347 + DynaEyes4
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(5,5)~ + @1347 + DynaEyes5

+ ~RandomNum(3,1) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1348 + DynaDrea1.4L
+ ~RandomNum(3,2) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1348 + DynaDrea1.5L
+ ~RandomNum(3,3) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1348 + DynaDrea1.6L

+ ~OR(4) PartyHasItem("X#DYPORE") PartyHasItem("X#DYPORF") PartyHasItem("X#DYPORO") PartyHasItem("X#DYPORR") !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",35) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1349 + DynaPort1

+ ~Global("P#KnowBhaal","GLOBAL",1) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",30) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1350 + DynaTorm1

+ ~ RandomNum(10,1) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1351 + DynaKiss1.1
+ ~ RandomNum(10,2) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1351 + DynaKiss1.2
+ ~ RandomNum(10,3) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1351 + DynaKiss1.3
+ ~ RandomNum(10,4) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1351 + DynaKiss1.4
+ ~ RandomNum(10,5) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1351 + DynaKiss1.5
+ ~ RandomNum(10,6) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1351 + DynaKiss1.6
+ ~ RandomNum(10,7) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1351 + DynaKiss1.7
+ ~ RandomNum(10,8) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1351 + DynaKiss1.8
+ ~ RandomNum(10,9) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1351 + DynaKiss1.9
+ ~ RandomNum(10,10) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1351 + DynaKiss1.10

+ ~AreaType(OUTDOOR) RandomNum(4,1) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1352 + DynaWind1.1
+ ~AreaType(OUTDOOR) RandomNum(4,2) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1352 + DynaWind1.2
+ ~AreaType(OUTDOOR) RandomNum(4,3) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1352 + DynaWind1.3
+ ~AreaType(OUTDOOR) RandomNum(4,4) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1352 + DynaWind1.4

+ ~Race(Player1,ELF) RandomNum(3,1) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1353 + DynaWhin1.1E
+ ~Race(Player1,ELF) RandomNum(3,2) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1353 + DynaWhin1.2
+ ~Race(Player1,ELF) RandomNum(3,3) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1353 + DynaWhin1.3E
+ ~!Race(Player1,ELF) RandomNum(3,1) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1354 + DynaWhin1.1
+ ~!Race(Player1,ELF) RandomNum(3,2) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1354 + DynaWhin1.2
+ ~!Race(Player1,ELF) RandomNum(3,3) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1354 + DynaWhin1.3

+ ~AreaType(FOREST) RandomNum(10,1) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1355 + DynaFlow1.1
+ ~AreaType(FOREST) RandomNum(10,2) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1355 + DynaFlow1.2
+ ~AreaType(FOREST) RandomNum(10,3) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1355 + DynaFlow1.7
+ ~AreaType(FOREST) RandomNum(10,4) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1356 + DynaFlow1.4
+ ~AreaType(FOREST) RandomNum(10,5) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1356 + DynaFlow1.3
+ ~AreaType(FOREST) RandomNum(10,6) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1356 + DynaFlow1.8
+ ~AreaType(FOREST) RandomNum(10,7) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1357 + DynaFlow1.5
+ ~AreaType(FOREST) RandomNum(10,8) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1357 + DynaFlow1.10
+ ~AreaType(FOREST) RandomNum(10,9) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1357 + DynaFlow1.9
+ ~AreaType(FOREST) RandomNum(10,10) !Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",20) !Global("X#DynaheirRomanceInactive","GLOBAL",1) Class(Player1,BARD_ALL)~ + @1358 + DynaFlow1.6

+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(2,1) AreaType(FOREST) OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + @1359 + DynaVers1.1
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(2,2) AreaType(FOREST) OR(2) Class(Player1,DRUID_ALL) Class(Player1,RANGER_ALL)~ + @1359 + DynaVers1.2

+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(2,1) AreaType(FOREST) !Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL)~ + @1359 + DynaVers1.3
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(2,2) AreaType(FOREST) !Class(Player1,DRUID_ALL) !Class(Player1,RANGER_ALL)~ + @1359 + DynaVers1.4

+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(2,1) OR(9) AreaCheck("%NWBaldursGate%") AreaCheck("%SWBaldursGate%") AreaCheck("%NBaldursGate%") AreaCheck("%WBaldursGate%") AreaCheck("%CentralBaldursGate%") AreaCheck("%EBaldursGate%") AreaCheck("%WyrmsCrossing%") AreaCheck("%BaldursGateDocks%") AreaCheck("%SEBaldursGate%")~ + @1360 + DynaVers1.5
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(2,2) OR(9) AreaCheck("%NWBaldursGate%") AreaCheck("%SWBaldursGate%") AreaCheck("%NBaldursGate%") AreaCheck("%WBaldursGate%") AreaCheck("%CentralBaldursGate%") AreaCheck("%EBaldursGate%") AreaCheck("%WyrmsCrossing%") AreaCheck("%BaldursGateDocks%") AreaCheck("%SEBaldursGate%")~ + @1360 + DynaVers1.6

+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(2,1) OR(5) AreaCheck("%Nashkel%") AreaCheck("%Beregost%") AreaCheck("%FriendlyArmInn%") AreaCheck("%Candlekeep_Ch6%") AreaCheck("%Gullykin%")~ + @1361 + DynaVers1.7
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(2,2) OR(5) AreaCheck("%Nashkel%") AreaCheck("%Beregost%") AreaCheck("%FriendlyArmInn%") AreaCheck("%Candlekeep_Ch6%") AreaCheck("%Gullykin%")~ + @1361 + DynaVers1.8

+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(8,1)~ + @1362 + DynaVers1.9
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(8,2)~ + @1362 + DynaVers1.10
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(8,3)~ + @1363 + DynaVers1.11
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(8,4)~ + @1363 + DynaVers1.13
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(8,5)~ + @1363 + DynaVers1.12
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(8,6)~ + @1363 + DynaVers1.13
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(8,7)~ + @1363 + DynaVers1.12
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1) RandomNum(8,8)~ + @1363 + DynaVers1.14

+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1364 DO ~SetGlobal("X#DynaDisableFlirts","GLOBAL",1) SetGlobal("X#DynaheirRomanceInactive","GLOBAL",1)~ EXIT
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1365 DO ~SetGlobal("X#DynaDisableFlirts","GLOBAL",1)~ EXIT
+ ~!Global("X#DynaDisableFlirts","GLOBAL",1) GlobalGT("X#DYLoveTalk","GLOBAL",2) !Global("X#DynaheirRomanceInactive","GLOBAL",1)~ + @1366 EXIT

+ ~%VoiceStrange%~ + @1237 + DynaVoice
END

IF ~~ DynaTorm1
SAY @1367
++ @1368 + DynaTorm1.1
++ @1369 + DynaTorm1.2
++ @1370 + DynaTorm1.3
++ @1371 + DynaTorm1.4
END

IF ~~ DynaTorm1.1
SAY @1372
++ @1373 + DynaTorm1.1.1
++ @1374 + DynaTorm1.1.2
++ @1375 + DynaTorm1.1.3
END

IF ~~ DynaTorm1.1.1
SAY @1376
= @1377
= @1378
IF ~~ THEN EXIT
END

IF ~~ DynaTorm1.1.2
SAY @1379
IF ~~ THEN EXIT
END

IF ~~ DynaTorm1.1.3
SAY @1380
= @1381
IF ~~ THEN EXIT
END


IF ~~ DynaTorm1.2
SAY @1382
IF ~~ THEN EXIT
END

IF ~~ DynaTorm1.3
SAY @1383
= @1384
IF ~~ THEN EXIT
END

IF ~~ DynaTorm1.4
SAY @1385
= @1386
IF ~~ THEN EXIT
END

IF ~~ DynaKiss1.1
SAY @1387
IF ~~ THEN EXIT
END

IF ~~ DynaKiss1.2
SAY @1388
IF ~~ THEN EXIT
END

IF ~~ DynaKiss1.3
SAY @1389
IF ~~ THEN EXIT
END

IF ~~ DynaKiss1.4
SAY @1390
IF ~~ THEN EXIT
END

IF ~~ DynaKiss1.5
SAY @1391
IF ~~ THEN EXIT
END

IF ~~ DynaKiss1.6
SAY @1392
IF ~~ THEN EXIT
END

IF ~~ DynaKiss1.7
SAY @1393
IF ~~ THEN EXIT
END

IF ~~ DynaKiss1.8
SAY @1394
IF ~~ THEN EXIT
END

IF ~~ DynaKiss1.9
SAY @1395
IF ~~ THEN EXIT
END

IF ~~ DynaKiss1.10
SAY @1396
IF ~~ THEN EXIT
END

IF ~~ DynaWind1.1
SAY @1397
IF ~~ THEN EXIT
END

IF ~~ DynaWind1.2
SAY @1398
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_RESIST_COLD)~ EXIT
END

IF ~~ DynaWind1.3
SAY @1399
IF ~~ THEN EXIT
END

IF ~~ DynaWind1.4
SAY @1400
IF ~~ THEN EXIT
END

IF ~~ DynaWhin1.1E
SAY @1401
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_REMOVE_FEAR)~ EXIT
END

IF ~~ DynaWhin1.3E
SAY @1402
= @1403
++ @1404 + DynaWhin1.1E
++ @1405 + DynaWhin1.3.1
++ @1406 + DynaWhin1.3.2
++ @1407 + DynaWhin1.3.3
END

IF ~~ DynaWhin1.3.1
SAY @1408
++ @1409 + DynaWhin1.3.1.1
++ @1410 DO ~RestParty()~ EXIT
++ @1411 + DynaWhin1.3.1.2
END

IF ~~ DynaWhin1.3.1.1
SAY @1412
= @1413
IF ~~ THEN EXIT
END

IF ~~ DynaWhin1.3.1.2
SAY @1414
IF ~~ THEN EXIT
END

IF ~~ DynaWhin1.3.2
SAY @1415
IF ~~ THEN EXIT
END

IF ~~ DynaWhin1.3.3
SAY @1416
= @1417
IF ~~ THEN EXIT
END

IF ~~ DynaWhin1.2
SAY @1418
++ @1419 + DynaWhin1.2.1
++ @1420 EXIT
+ ~Global("P#KnowBhaal","GLOBAL",1)~ + @1421 + DynaWhin1.2.2
++ @1422 + DynaWhin1.2.3
END

IF ~~ DynaWhin1.2.1
SAY @1423
= @1424
IF ~~ THEN EXIT
END

IF ~~ DynaWhin1.2.2
SAY @1425
= @1426
= @1427
IF ~~ THEN EXIT
END

IF ~~ DynaWhin1.2.3
SAY @1428
IF ~~ THEN EXIT
END

IF ~~ DynaWhin1.1
SAY @1429
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_REMOVE_FEAR)~ EXIT
END

IF ~~ DynaWhin1.3
SAY @1430
= @1403
++ @1404 + DynaWhin1.1E
++ @1431 + DynaWhin1.3.1
++ @1432 + DynaWhin1.3.2
++ @1433 + DynaWhin1.3.3
END


IF ~~ DynaDrea1.1E
SAY @1434
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.2E
SAY @1435
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.3E
SAY @1436
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.4L
SAY @1434
++ @1437 + DynaDrea1.4.1
+ ~RandomNum(2,1) OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ + @1438 + DynaDrea1.4.2A
+ ~RandomNum(2,2) OR(2) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ + @1438 + DynaDrea1.4.2B
+ ~RandomNum(2,1) !Class(Player1,MAGE_ALL) !Class(Player1,SORCERER)~ + @1439 + DynaDrea1.4.3
+ ~RandomNum(2,2) !Class(Player1,MAGE_ALL) !Class(Player1,SORCERER)~ + @1439 + DynaDrea1.4.2B
++ @1440 + DynaDrea1.4.4
++ @1441 + DynaDrea1.4.5
END

IF ~~ DynaDrea1.4.1
SAY @1442
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.4.2
SAY @1443
++ @1444 + DynaDrea1.4.2.1
++ @1445 EXIT
++ @1446 + DynaDrea1.4.2.2
END

IF ~~ DynaDrea1.4.2.1
SAY @1447
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.4.2.2
SAY @1448
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.4.2A
SAY @1449
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.4.2B
SAY @1450
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.4.3
SAY @1451
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.4.4
SAY @1452
= @1453
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.4.5
SAY @1454
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.5L
SAY @1455
++ @1456 + DynaDrea1.5.1
++ @1457 + DynaDrea1.5.2
++ @1458 + DynaDrea1.5.3
++ @1459 EXIT
END

IF ~~ DynaDrea1.6L
SAY @1460
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.5.1
SAY @1461
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.5.2
SAY @1462
= @1463
IF ~~ THEN EXIT
END

IF ~~ DynaDrea1.5.3
SAY @1464
IF ~~ THEN EXIT
END


IF ~~ DynaDrea1.6E
SAY @1465
= @1466
= @1467
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.1
SAY @1468
++ @1469 + DynaVers1.1.1
+ ~RandomNum(2,1)~ + @1470 + DynaVers1.1.2
+ ~RandomNum(2,2)~ + @1470 + DynaVers1.1.3
++ @1471 EXIT
END

IF ~~ DynaVers1.1.1
SAY @1472
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.1.2
SAY @1473
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.1.3
SAY @1474
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.2
SAY @1475
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.3
SAY @1476
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.4
SAY @1477
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.5
SAY @1478
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.6
SAY @1479
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.7
SAY @1480
+ ~RandomNum(3,1)~ + @1481 + DynaVers1.7.1
+ ~RandomNum(3,2)~ + @1481 + DynaVers1.7.2
+ ~RandomNum(3,3)~ + @1481 + DynaVers1.7.3
++ @1482 EXIT
++ @1483 + DynaVers1.7.4
END

IF ~~ DynaVers1.7.1
SAY @1484
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.7.2
SAY @1485
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.7.3
SAY @1486
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.7.4
SAY @1487
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.8
SAY @1488
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.9
SAY @1489
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.10
SAY @1490
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.11
SAY @1491
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.12
SAY @1492
= @1493
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.13
SAY @1494
++ @1495 + DynaVers1.13.1
++ @1496 + DynaVers1.13.2
++ @1497 + DynaVers1.13.3
++ @1498 EXIT
END

IF ~~ DynaVers1.13.1
SAY @1499
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.13.2
SAY @1500
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.13.3
SAY @1501
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.14
SAY @1502
++ @1503 + DynaVers1.14.1
++ @1504 + DynaVers1.14.2
++ @1505 + DynaVers1.14.3
++ @1506 EXIT
END

IF ~~ DynaVers1.14.1
SAY @1507
IF ~~ THEN EXIT
END

IF ~~ DynaVers1.14.2
SAY @1508
IF ~~ THEN EXIT

END

IF ~~ DynaVers1.14.3
SAY @1509
IF ~~ THEN EXIT
END

IF ~~ DynaFlow1.1
SAY @1510
IF ~~ THEN EXIT
END

IF ~~ DynaFlow1.2
SAY @1511
IF ~~ THEN EXIT
END

IF ~~ DynaFlow1.3
SAY @1512
IF ~~ THEN EXIT
END

IF ~~ DynaFlow1.4
SAY @1513
IF ~~ THEN EXIT
END

IF ~~ DynaFlow1.5
SAY @1514
IF ~~ THEN EXIT
END

IF ~~ DynaFlow1.6
SAY @1515
IF ~~ THEN EXIT
END

IF ~~ DynaFlow1.7
SAY @1516
IF ~~ THEN EXIT
END

IF ~~ DynaFlow1.8
SAY @1517
IF ~~ THEN EXIT
END

IF ~~ DynaFlow1.9
SAY @1518
IF ~~ THEN EXIT
END

IF ~~ DynaFlow1.10
SAY @1519
IF ~~ THEN EXIT
END

IF ~~ DynaThor1
SAY @1520
+ ~RandomNum(3,1)~ + @1521 + DynaThor1.1
+ ~RandomNum(3,2)~ + @1521 + DynaThor1.2
+ ~RandomNum(3,3)~ + @1521 + DynaThor1.3
++ @1522 + DynaThor1.2
+ ~RandomNum(2,1)~ + @1523 + DynaThor1.4
+ ~RandomNum(2,2)~ + @1523 + DynaThor1.5
++ @1524 EXIT
END

IF ~~ DynaThor1.1
SAY @1525
++ @1526 + DynaThor1.1.1
++ @1527 + DynaThor1.1.2
++ @1528 + DynaThor1.1.3
++ @1529 EXIT
END

IF ~~ DynaThor1.1.1
SAY @1530
IF ~~ THEN EXIT
END

IF ~~ DynaThor1.1.2
SAY @1531
IF ~~ THEN EXIT
END

IF ~~ DynaThor1.1.3
SAY @1532
++ @1533 + DynaThor1.l.3.1
++ @1534 + DynaThor1.l.3.2
++ @1535 + DynaThor1.l.3.3
++ @1536EXIT
END

IF ~~ DynaThor1.l.3.1
SAY @1537
IF ~~ THEN EXIT
END

IF ~~ DynaThor1.l.3.2
SAY @1538
++ @1539 EXIT
++ @1536EXIT
END

IF ~~ DynaThor1.l.3.3
SAY @1540
IF ~RandomNum(4,1)~ THEN GOTO DynaThor1.1.3.3.1
IF ~RandomNum(4,2)~ THEN GOTO DynaThor1.1.3.3.2
IF ~RandomNum(4,3)~ THEN GOTO DynaThor1.1.3.3.2
IF ~RandomNum(4,4)~ THEN GOTO DynaThor1.1.3.3.2
END

IF ~~ DynaThor1.1.3.3.1
SAY @1541
IF ~~ THEN EXIT
END

IF ~~ DynaThor1.1.3.3.2
SAY @1542
IF ~~ THEN EXIT
END

IF ~~ DynaThor1.2
SAY @1543
+ ~RandomNum(2,1)~ + @1544 + DynaThor1.2.1
+ ~RandomNum(2,2)~ + @1544 + DynaThor1.2.5
++ @1545 + DynaThor1.2.2
++ @1546 + DynaThor1.2.3
+ ~RandomNum(3,1)~ + @1547 + DynaThor1.2.4
+ ~RandomNum(3,2)~ + @1547 + DynaThor1.2.5
+ ~RandomNum(3,3)~ + @1547 + DynaThor1.2.5
END

IF ~~ DynaThor1.2.1
SAY @1548
IF ~~ THEN GOTO DynaThor1.2.1.1
END

IF ~~ DynaThor1.2.1.1
SAY @1549
++ @1550 + DynaThor1.1.2
++ @1551 + DynaThor1.1.3
++ @1552EXIT
END

IF ~~ DynaThor1.2.2
SAY @1553
IF ~~ THEN GOTO DynaThor1.2.1.1
END

IF ~~ DynaThor1.2.3
SAY @1554
IF ~~ THEN EXIT
END

IF ~~ DynaThor1.2.4
SAY @1555
IF ~~ THEN GOTO DynaThor1.2.1.1
END

IF ~~ DynaThor1.2.5
SAY @1556
IF ~~ THEN EXIT
END

IF ~~ DynaThor1.3
SAY @1557
+ ~RandomNum(2,1)~ + @1558 + DynaThor1.3.1
+ ~RandomNum(2,2)~ + @1558 + DynaThor1.3.2
++ @1559 + DynaThor1.1.1
++ @1527 + DynaThor1.1.2
++ @1528 + DynaThor1.1.3
++ @1529EXIT
END

IF ~~ DynaThor1.3.1
SAY @1560
IF ~~ THEN EXIT
END

IF ~~ DynaThor1.3.2
SAY @1561
IF ~~ THEN EXIT
END

IF ~~ DynaThor1.4
SAY @1562
+ ~RandomNum(2,1)~ + @1563 + DynaThor1.4.1A
+ ~RandomNum(2,2)~ + @1563 + DynaThor1.4.1
++ @1564 + DynaThor1.4.2
++ @1565 + DynaThor1.4.3
END

IF ~~ DynaThor1.4.1
SAY @1566
IF ~~ THEN GOTO DynaThor1.2.1.1
END

IF ~~ DynaThor1.4.1A
SAY @1567
IF ~~ THEN EXIT
END

IF ~~ DynaThor1.4.2
SAY @1568
IF ~~ THEN GOTO DynaThor1.1
END

IF ~~ DynaThor1.4.3
SAY @1569
IF ~~ THEN EXIT
END

IF ~~ DynaThor1.5
SAY @1570
+ ~RandomNum(2,1)~ + @1563 + DynaThor1.4.1A
+ ~RandomNum(2,2)~ + @1563 + DynaThor1.4.1
+ ~RandomNum(2,1)~ + @1571 EXIT
+ ~RandomNum(2,2)~ + @1571 + DynaThor1.5.1
++ @1572 + DynaThor1.5.2
++ @1565 + DynaThor1.4.3
END

IF ~~ DynaThor1.5.1
SAY @1573
IF ~~ THEN GOTO DynaThor1.1
END

IF ~~ DynaThor1.5.2
SAY @1574
IF ~~ THEN EXIT
END

IF ~~ DynaPack1
SAY @1575
+ ~RandomNum(3,1)~ + @1576 + DynaPack1.1
+ ~RandomNum(3,2)~ + @1576 + DynaPack1.2
+ ~RandomNum(3,3)~ + @1576 + DynaPack1.2
++ @1577 + DynaPack2.1
++ @1578 EXIT
END

IF ~~ DynaPack1.1
SAY @1579
IF ~~ THEN EXIT
END

IF ~~ DynaPack1.2
SAY @1580
+ ~RandomNum(2,1)~ + @1581 + DynaPack1.2.1
+ ~RandomNum(2,2)~ + @1581 + DynaPack1.2.2
+ ~RandomNum(2,1)~ + @1582 + DynaPack1.2.3
+ ~RandomNum(2,2)~ + @1582 + DynaPack1.2.4
+ ~RandomNum(2,1)~ + @1583 + DynaPack1.2.5
+ ~RandomNum(2,2)~ + @1583 + DynaPack1.2.6
END

IF ~~ DynaPack1.2.1
SAY @1584
IF ~~ THEN EXIT
END

IF ~~ DynaPack1.2.2
SAY @1585
IF ~~ THEN EXIT
END

IF ~~ DynaPack1.2.3
SAY @1586
IF ~~ THEN EXIT
END

IF ~~ DynaPack1.2.4
SAY @1587
IF ~~ THEN EXIT
END

IF ~~ DynaPack1.2.5
SAY @1588
IF ~~ THEN EXIT
END

IF ~~ DynaPack1.2.6
SAY @1589
IF ~~ THEN EXIT
END

IF ~~ DynaPack2.1
SAY @1590
+ ~RandomNum(2,1)~ + @1591 + DynaPack2.1.1
+ ~RandomNum(2,2)~ + @1592 + DynaPack2.1.2
++ @1593 + DynaPack2.1.3
END

IF ~~ DynaPack2.1.1
SAY @1594
++ @1595 + DynaPack2.1.1.1
++ @1596 + DynaPack2.1.1.2
++ @1597 + DynaPack2.1.1.3
END

IF ~~ DynaPack2.1.2
SAY @1598
IF ~~ THEN EXIT
END

IF ~~ DynaPack2.1.3
SAY @1599
+ ~RandomNum(2,1)~ + @1600 + DynaPack2.1.1
+ ~RandomNum(2,2)~ + @1600 + DynaPack2.1.2
END

IF ~~ DynaPack2.1.1.1
SAY @1601
IF ~~ THEN EXIT
END

IF ~~ DynaPack2.1.1.2
SAY @1602
IF ~~ THEN EXIT
END

IF ~~ DynaPack2.1.1.3
SAY @1603
IF ~~ THEN EXIT
END

IF ~~ DynaEyes1
SAY @1604
+ ~RandomNum(3,1)~ + @1605 + DynaEyes1.1
+ ~RandomNum(3,2)~ + @1605 + DynaEyes1.2
+ ~RandomNum(3,3)~ + @1605 + DynaEyes1.3
++ @1606EXIT
+ ~RandomNum(3,1)~ + @1607 + DynaEyes1.4.1
+ ~RandomNum(3,2)~ + @1608 + DynaEyes1.4.2
+ ~RandomNum(3,3)~ + @1609 + DynaEyes1.4.3
END

IF ~~ DynaEyes1.1
SAY @1610
IF ~~ THEN EXIT END

IF ~~ DynaEyes1.2
SAY @1611
++ @1612 + DynaEyes1.2.1
+ ~RandomNum(4,1)~ + @1613 + DynaEyes1.2.2
+ ~RandomNum(4,2)~ + @1614 + DynaEyes1.2.3
+ ~RandomNum(4,3)~ + @1615 + DynaEyes1.2.3
+ ~RandomNum(4,4)~ + @1616 + DynaEyes1.2.3
++ @1617 + DynaEyes1.2.4
END

IF ~~ DynaEyes1.2.1
SAY @1618
IF ~~ THEN EXIT END

IF ~~ DynaEyes1.2.2
SAY @1619
IF ~~ THEN EXIT END

IF ~~ DynaEyes1.2.3
SAY @1620
IF ~~ THEN EXIT END

IF ~~ DynaEyes1.2.4
SAY @1621
IF ~~ THEN EXIT END

IF ~~ DynaEyes1.3
SAY @1622
++ @1623 + DynaEyes1.3.1
++ @1624 + DynaEyes1.3.2
++ @1625 + DynaEyes1.3.3
++ @1626EXIT
 END

IF ~~ DynaEyes1.3.1
SAY @1627
IF ~~ THEN EXIT END

IF ~~ DynaEyes1.3.2
SAY @1628
IF ~~ THEN EXIT END

IF ~~ DynaEyes1.3.3
SAY @1629
IF ~~ THEN EXIT END

IF ~~ DynaEyes1.4.1
SAY @1630
IF ~RandomNum(3,1)~ THEN GOTO DynaEyes1.4.1.1
IF ~RandomNum(3,2)~ THEN GOTO DynaEyes1.4.1.2
IF ~RandomNum(3,3)~ THEN GOTO DynaEyes1.4.1.3
END

IF ~~ DynaEyes1.4.2
SAY @1631
IF ~RandomNum(3,1)~ THEN GOTO DynaEyes1.4.1.1

IF ~RandomNum(3,2)~ THEN GOTO DynaEyes1.4.1.2
IF ~RandomNum(3,3)~ THEN GOTO DynaEyes1.4.1.3
END

IF ~~ DynaEyes1.4.3
SAY @1632
IF ~RandomNum(3,1)~ THEN GOTO DynaEyes1.4.1.1
IF ~RandomNum(3,2)~ THEN GOTO DynaEyes1.4.1.2
IF ~RandomNum(3,3)~ THEN GOTO DynaEyes1.4.1.3
END

IF ~~ DynaEyes1.4.1.1
SAY @1633
IF ~~ THEN EXIT END

IF ~~ DynaEyes1.4.1.2
SAY @1634
IF ~~ THEN EXIT END

IF ~~ DynaEyes1.4.1.3
SAY @1635
IF ~~ THEN EXIT END

IF ~~ DynaEyes1.4.1.4
SAY @1636
IF ~~ THEN EXIT END

IF ~~ DynaEyes2
SAY @1637
IF ~~ THEN EXIT END

IF ~~ DynaEyes3
SAY @1638
IF ~~ THEN EXIT END

IF ~~ DynaEyes4
SAY @1639
IF ~~ THEN EXIT END

IF ~~ DynaEyes5
SAY @1640
IF ~~ THEN EXIT END

IF ~~ DynaPort1
SAY @1641
+ ~RandomNum(3,1)~ + @1642 + DynaPort1.1
+ ~RandomNum(3,2)~ + @1643 + DynaPort1.2
+ ~RandomNum(3,3)~ + @1644 + DynaPort1.3
+ ~RandomNum(3,1)~ + @1645 + DynaPort1.4
+ ~RandomNum(3,2)~ + @1645 + DynaPort1.5
+ ~RandomNum(3,3)~ + @1645 + DynaPort1.6
+ ~RandomNum(3,1)~ + @1646 + DynaPort1.7
+ ~RandomNum(3,2)~ + @1647 + DynaPort1.8
+ ~RandomNum(3,3)~ + @1648 + DynaPort1.9
+ ~RandomNum(3,1) Global("P#KnowBhaal","GLOBAL",1)~ + @1649 + DynaPort1.10
+ ~RandomNum(3,2) Global("P#KnowBhaal","GLOBAL",1)~ + @1649 + DynaPort1.11
+ ~RandomNum(3,3) Global("P#KnowBhaal","GLOBAL",1)~ + @1649 + DynaPort1.12
END

IF ~~ DynaPort1.1
SAY @1650
IF ~~ THEN EXIT
END

IF ~~ DynaPort1.2
SAY @1651
IF ~~ THEN EXIT
END

IF ~~ DynaPort1.3
SAY @1652
IF ~~ THEN EXIT
END

IF ~~ DynaPort1.4
SAY @1653
IF ~~ THEN EXIT
END

IF ~~ DynaPort1.5
SAY @1654
IF ~~ THEN EXIT
END

IF ~~ DynaPort1.6
SAY @1655
IF ~~ THEN EXIT
END

IF ~~ DynaPort1.7
SAY @1656
IF ~~ THEN EXIT
END

IF ~~ DynaPort1.8
SAY @1657
IF ~~ THEN EXIT
END

IF ~~ DynaPort1.9
SAY @1658
IF ~~ THEN EXIT
END

IF ~~ DynaPort1.10
SAY @1659
IF ~~ THEN EXIT
END

IF ~~ DynaPort1.11
SAY @1660
IF ~~ THEN EXIT
END

IF ~~ DynaPort1.12
SAY @1661
IF ~~ THEN EXIT
END

IF ~~ DynaWisp1
SAY @1662
+ ~RandomNum(2,1)~ + @1663 + DynaWisp1.1
+ ~RandomNum(2,2)~ + @1664 + DynaWisp1.2
+ ~RandomNum(3,1)~ + @1665 + DynaWisp1.3
+ ~RandomNum(3,2)~ + @1666 + DynaWisp1.4
+ ~RandomNum(3,3)~ + @1665 + DynaWisp1.5
++ @1667 + DynaWisp1.5
END

IF ~~ DynaWisp1.1
SAY @1668
IF ~~ THEN EXIT
END

IF ~~ DynaWisp1.2
SAY @1669
IF ~~ THEN EXIT
END

IF ~~ DynaWisp1.3
SAY @1670
IF ~~ THEN EXIT
END

IF ~~ DynaWisp1.4
SAY @1671
IF ~~ THEN EXIT
END

IF ~~ DynaWisp1.5
SAY @1672
= @1673
= @1674
= @1675
= @1676
IF ~~ THEN EXIT
END

IF ~~ DynaWisp2
SAY @1672
+ ~RandomNum(3,1)~ + @1677 + DynaWisp2.1
+ ~RandomNum(3,2)~ + @1677 + DynaWisp2.2
+ ~RandomNum(3,3)~ + @1677 + DynaWisp2.3
++ @1678 + DynaWisp2.4
+ ~RandomNum(3,1)~ + @1679 + DynaWisp2.5
+ ~RandomNum(3,2)~ + @1679 + DynaWisp2.6
+ ~RandomNum(3,3)~ + @1679 + DynaWisp2.7
END

IF ~~ DynaWisp2.1
SAY @1680
IF ~~ THEN EXIT
END

IF ~~ DynaWisp2.2
SAY @1681
IF ~~ THEN EXIT
END

IF ~~ DynaWisp2.3
SAY @1682
IF ~~ THEN EXIT
END

IF ~~ DynaWisp2.4
SAY @1683
IF ~~ THEN EXIT
END

IF ~~ DynaWisp2.5
SAY @1684
IF ~~ THEN EXIT
END

IF ~~ DynaWisp2.6
SAY @1685
IF ~~ THEN EXIT
END

IF ~~ DynaWisp2.7
SAY @1686
IF ~~ THEN EXIT
END

IF ~~ DynaWisp3
SAY @1687
IF ~~ THEN EXIT
END

IF ~~ DynaHair1
SAY @1688
IF ~~ THEN EXIT
END

IF ~~ DynaHair2
SAY @1689
IF ~~ THEN EXIT
END

IF ~~ DynaHair3
SAY @1690
IF ~~ THEN EXIT
END

IF ~~ DynaHair4
SAY @1691
IF ~~ THEN EXIT
END

IF ~~ DynaHand1
SAY @1692
++ @1693 + DynaHand1.1
++ @1694 + DynaHand1.2
++ @1695 + DynaHand1.3
END

IF ~~ DynaHand1.1
SAY @1696
IF ~~ THEN EXIT
END

IF ~~ DynaHand1.2
SAY @1697
IF ~~ THEN EXIT
END

IF ~~ DynaHand1.3
SAY @1698
++ @1699 + DynaHand1.3.1
++ @1700 + DynaHand1.3.2
++ @1701 + DynaHand1.3.3
+ ~Class(Player1,BARD_ALL)~ + @1702 + DynaHand1.3.4
END

IF ~~ DynaHand1.3.1
SAY @1703
IF ~~ THEN EXIT
END

IF ~~ DynaHand1.3.2
SAY @1704
IF ~~ THEN GOTO DynaHand2
END

IF ~~ DynaHand1.3.3
SAY @1705
IF ~~ THEN EXIT
END

IF ~~ DynaHand1.3.4
SAY @1706
IF ~~ THEN EXIT
END

IF ~~ DynaHand2
SAY @1707
IF ~~ THEN EXIT
END

IF ~~ DynaHand3
SAY @1708
IF ~~ THEN EXIT
END

IF ~~ DynaHand4
SAY @1709
+ ~RandomNum(3,1)~ + @1710 + DynaHand4.1.1
+ ~RandomNum(3,2)~ + @1710 + DynaHand4.1.2
+ ~RandomNum(3,3)~ + @1710 + DynaHand4.1.3
++ @1711 + DynaHand4.2
++ @1712 + DynaHand4.3
END

IF ~~ DynaHand4.1.1
SAY @1713
IF ~~ THEN EXIT
END

IF ~~ DynaHand4.1.2
SAY @1714
= @1715
IF ~~ THEN EXIT
END

IF ~~ DynaHand4.1.3
SAY @1716
IF ~~ THEN EXIT
END

IF ~~ DynaHand4.2
SAY @1717
= @1718
IF ~~ THEN EXIT
END

IF ~~ DynaHand4.3
SAY @1719
IF ~~ THEN EXIT
END

IF ~~ DynaThou1.1
SAY @1720
IF ~~ THEN EXIT
END

IF ~~ DynaThou1.2
SAY @1721
IF ~~ THEN EXIT
END

IF ~~ DynaThou1.3
SAY @1722
IF ~~ THEN EXIT
END

IF ~~ DynaThou1.4
SAY @1723
+ ~RandomNum(3,1)~ + @1724 + DynaThou1.4.1
+ ~RandomNum(3,2)~ + @1724 + DynaThou1.4.4
+ ~RandomNum(3,3)~ + @1724 + DynaThou1.4.1
++ @1725 + DynaThou1.4.2
+ ~RandomNum(2,1)~ + @1726 + DynaThou1.4.3
+ ~RandomNum(2,2)~ + @1726 + DynaThou1.4.5
END

IF ~~ DynaThou1.4.1
SAY @1727
IF ~~ THEN EXIT
END

IF ~~ DynaThou1.4.2
SAY @1728
IF ~~ THEN EXIT
END

IF ~~ DynaThou1.4.3
SAY @1729
IF ~~ THEN EXIT
END

IF ~~ DynaThou1.4.4
SAY @1730
IF ~~ THEN EXIT
END

IF ~~ DynaThou1.4.5
SAY @1731
IF ~~ THEN EXIT
END

IF ~~ DynaMap
SAY @1278
+ ~RandomNum(3,1)~ + @1732 + MapR1.1
+ ~RandomNum(3,2)~ + @1732 + MapR1.2
+ ~RandomNum(3,3)~ + @1732 + MapR1.3
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%)~ + @1279 + MapR2Realm
+ ~Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @1279 + MapR2Bandits
+ ~Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @1279 + MapR2CW
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%)~ + @1279 + MapR2Baldur
+ ~RandomNum(3,1)~ + @1280 + MapR3.1
+ ~RandomNum(3,2)~ + @1281 + MapR3.2
+ ~RandomNum(3,3)~ + @1282 + MapR3.3
END

IF ~~ MapR1.1
SAY @1733
++ @1734 EXIT
+ ~RandomNum(2,1)~ + @1735 + MapR1.1.1
+ ~RandomNum(2,2)~ + @1735 + MapR1.1.2
+ ~RandomNum(2,1)~ + @1736 + MapR1.1.3
+ ~RandomNum(2,2)~ + @1736 + MapR1.1.4
END
IF ~~ MapR1.1.1
SAY @1737
IF ~~ THEN EXIT
END

IF ~~ MapR1.1.2
SAY @1738
IF ~~ THEN EXIT
END

IF ~~ MapR1.1.3
SAY @1739
IF ~~ THEN EXIT
END

IF ~~ MapR1.1.4
SAY @1740
IF ~~ THEN EXIT
END

IF ~~ MapR1.2
SAY @1741
++ @1742 EXIT
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%)~ + @1743 + MapR2Realm
+ ~Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @1743 + MapR2Bandits
+ ~Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @1743 + MapR2CW
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%)~ + @1743 + MapR2Baldur
END

IF ~~ MapR1.3
SAY @1744
++ @1745 + MapR3.2
++ @1746 + MapR1.3.1
++ @1747 + MapR1.3.2
END

IF ~~ MapR1.3.1
SAY @1748
IF ~~ THEN EXIT
END

IF ~~ MapR1.3.2
SAY @1749
++ @1750 + MapR1.3.2.1
++ @1751 EXIT
++ @1752 EXIT
END

IF ~~ MapR1.3.2.1
SAY @1753
IF ~~ THEN EXIT
END

IF ~~ MapR2Realm
SAY @1283
IF ~~ THEN EXIT
END

IF ~~ MapR2Bandits
SAY @1284
IF ~~ THEN EXIT
END

IF ~~ MapR2CW
SAY @1754
IF ~~ THEN EXIT
END

IF ~~ MapR2Baldur
SAY @1286
IF ~~ THEN EXIT
END

IF ~~ MapR3.1
SAY @1755
IF ~~ THEN EXIT
END

IF ~~ MapR3.2
SAY @1756
++ @1289 + MapR3.2.1
++ @1757 + MapR3.2.2
++ @1758 + MapR3.2.3
END

IF ~~ MapR3.2.1
SAY @1759
IF ~~ THEN EXIT
END

IF ~~ MapR3.2.2
SAY @1292
IF ~~ THEN EXIT
END

IF ~~ MapR3.2.3
SAY @1760
IF ~~ THEN EXIT
END

IF ~~ MapR3.3
SAY @1761
IF ~~ THEN EXIT
END

IF ~~ DynaDress
SAY @1762
+ ~RandomNum(3,1)~ + @1763 + DynaDress1.1.1
+ ~RandomNum(3,2)~ + @1763 + DynaDress1.1.2
+ ~RandomNum(3,3)~ + @1763 + DynaDress1.1.3
+ ~RandomNum(3,1)~ + @1764 + DynaDress1.2.1
+ ~RandomNum(3,2)~ + @1765 + DynaDress1.2.2
+ ~RandomNum(3,3)~ + @1766 + DynaDress1.2.3
++ @1767 + DynaDress1.3
+ ~RandomNum(3,1)~ + @1768 + DynaDress1.4.1
+ ~RandomNum(3,2)~ + @1769 + DynaDress1.4.2
+ ~RandomNum(3,3)~ + @1769 + DynaDress1.4.3
+ ~RandomNum(3,1)~ + @1770 + DynaDress1.5.1
+ ~RandomNum(3,2)~ + @1770 + DynaDress1.5.2
+ ~RandomNum(3,3)~ + @1771 + DynaDress1.5.3
END

IF ~~ DynaDress1.1.1
SAY @1772
IF ~~ THEN EXIT
END

IF ~~ DynaDress1.1.2
SAY @1773
IF ~~ THEN EXIT
END

IF ~~ DynaDress1.1.3
SAY @1774
IF ~~ THEN EXIT
END

IF ~~ DynaDress1.2.1
SAY @1775
IF ~~ THEN EXIT
END

IF ~~ DynaDress1.2.2
SAY @1776
++ @1777EXIT
++ @1778 + DynaDress1.2.1
++ @1779 + DynaDress1.2.4
END

IF ~~ DynaDress1.2.3
SAY @1780
++ @1781 EXIT
++ @1782 EXIT
++ @1783 + DynaDress1.1.3
END

IF ~~ DynaDress1.2.4
SAY @1784
++ @1781 EXIT
++ @1782 EXIT
++ @1783 + DynaDress1.1.3
END

IF ~~ DynaDress1.3
SAY @1785
IF ~~ THEN EXIT
END

IF ~~ DynaDress1.4.1
SAY @1786
IF ~~ THEN EXIT
END

IF ~~ DynaDress1.4.2
SAY @1787
IF ~~ THEN EXIT
END

IF ~~ DynaDress1.4.3
SAY @1788
IF ~~ THEN EXIT
END

IF ~~ DynaDress1.5.1
SAY @1789
IF ~~ THEN EXIT
END

IF ~~ DynaDress1.5.2
SAY @1790
IF ~~ THEN EXIT
END

IF ~~ DynaDress1.5.3
SAY @1791
IF ~~ THEN EXIT
END

IF ~~ DynaFood
SAY @1792
+ ~RandomNum(3,1)~ + @1793 + DynaFood1.1
+ ~RandomNum(3,2)~ + @1793 + DynaFood1.3
+ ~RandomNum(3,3)~ + @1793 + DynaFood1.3
+ ~RandomNum(3,1)~ + @1794 + DynaFood2.1
+ ~RandomNum(3,2)~ + @1794 + DynaFood2.2
+ ~RandomNum(3,3)~ + @1794 + DynaFood2.3
+ ~RandomNum(3,1)~ + @1795 + DynaFood2.2
+ ~RandomNum(3,2)~ + @1795 + DynaFood2.2
+ ~RandomNum(3,3)~ + @1795 + DynaFood2.3
++ @1796 + DynaFood2.1
END

IF ~~ DynaFood1.1
SAY @1797
IF ~~ THEN EXIT
END

IF ~~ DynaFood1.2
SAY @1798
IF ~~ THEN EXIT
END

IF ~~ DynaFood1.3
SAY @1799
IF ~~ THEN EXIT
END

IF ~~ DynaFood2.1
SAY @1800
IF ~~ THEN EXIT
END

IF ~~ DynaFood2.2
SAY @1801
+ ~RandomNum(3,1)~ + @1802 + DynaFood2.2.1
+ ~RandomNum(3,2)~ + @1802 + DynaFood2.2.2
+ ~RandomNum(3,3)~ + @1802 + DynaFood2.2.3
++ @1803 + DynaFood2.2.4
++ @1804 + DynaFood2.2.5
END

IF ~~ DynaFood2.2.1
SAY @1805
++ @1806 EXIT
++ @1807EXIT
END

IF ~~ DynaFood2.2.2
SAY @1808
++ @1809 + DynaFood2.2.2.1
+ ~RandomNum(3,1)~ + @1810 + DynaFood2.2.2.2
+ ~RandomNum(3,2)~ + @1811 + DynaFood2.2.2.3
+ ~RandomNum(3,3)~ + @1812 + DynaFood2.2.2.3
++ @1813 EXIT
END

IF ~~ DynaFood2.2.2.1
SAY @1814
++ @1815 + DynaFood2.2.2.4
++ @1816 + DynaFood2.2.2.5
+ ~RandomNum(3,1)~ + @1817 + DynaFood2.2.2.2
+ ~RandomNum(3,2)~ + @1818 + DynaFood2.2.2.3
+ ~RandomNum(3,3)~ + @1819 + DynaFood2.2.2.3
++ @1813 EXIT
END

IF ~~ DynaFood2.2.2.3
SAY @1820
IF ~~ THEN EXIT
END

IF ~~ DynaFood2.2.2.2
SAY @1821
IF ~~ THEN EXIT
END

IF ~~ DynaFood2.2.2.4
SAY @1822
IF ~~ THEN EXIT
END

IF ~~ DynaFood2.2.2.5
SAY @1823
IF ~~ THEN EXIT
END

IF ~~ DynaFood2.2.3
SAY @1824
IF ~~ THEN EXIT
END

IF ~~ DynaFood2.2.4
SAY @1825
IF ~~ THEN EXIT
END

IF ~~ DynaFood2.2.5
SAY @1826
IF ~~ THEN EXIT
END

IF ~~ DynaFood2.3.1
SAY @1827
IF ~~ THEN EXIT
END

IF ~~ DynaFood2.3.2
SAY @1828
IF ~~ THEN EXIT
END

IF ~~ DynaFood2.3.3
SAY @1829
IF ~~ THEN EXIT
END

END

CHAIN ~%DYNAHEIR_JOINED%~ DynaFood2.3
@1830
END
++ @1831 + DynaFood2.3.1
++ @1832 + DynaFood2.3.2
+ ~RandomNum(2,1) !InParty("xan")~ + @1833 + DynaFood2.2
+ ~RandomNum(2,2) !InParty("xan")~ + @1833 EXIT
+ ~RandomNum(4,1) InParty("xan")~ + @1833 + DynaFood2.3.3
+ ~RandomNum(4,2) InParty("xan")~ + @1833 + DynaFood2.3.4
+ ~RandomNum(4,3) InParty("xan")~ + @1833 + DynaFood2.3.3
+ ~RandomNum(4,4) InParty("xan")~ + @1833 + DynaFood2.3.3

CHAIN ~%DYNAHEIR_JOINED%~ DynaFood2.3.4
@1834
== ~%XAN_JOINED%~ @1835
== ~%DYNAHEIR_JOINED%~ @1836
== ~%XAN_JOINED%~ @1837
== ~%DYNAHEIR_JOINED%~ @1838
== ~%XAN_JOINED%~ @1839
== ~%DYNAHEIR_JOINED%~ @1840
== ~%XAN_JOINED%~ @1841
EXIT

APPEND ~%FALDORN_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN FACH
SAY @1842
++ @1843 EXIT

+ ~Global("X#FACHdone","GLOBAL",1) RandomNum(4,1)~ + @1844 + FACHFailure1
+ ~Global("X#FACHdone","GLOBAL",1) RandomNum(4,2)~ + @1844 + FACHFailure2
+ ~Global("X#FACHdone","GLOBAL",1) RandomNum(4,3)~ + @1844 + FACHFailure3
+ ~Global("X#FACHdone","GLOBAL",1) RandomNum(4,4)~ + @1844 + FACHFailure4

+ ~!Global("X#FACHdone","GLOBAL",1) RandomNum(5,1)~ + @1845 + FACHSuccess
+ ~!Global("X#FACHdone","GLOBAL",1) RandomNum(5,2)~ + @1845 + FACHFailure1
+ ~!Global("X#FACHdone","GLOBAL",1) RandomNum(5,3)~ + @1845 + FACHFailure2
+ ~!Global("X#FACHdone","GLOBAL",1) RandomNum(5,4)~ + @1845 + FACHFailure3
+ ~!Global("X#FACHdone","GLOBAL",1) RandomNum(5,5)~ + @1845 + FACHFailure4

+ ~!Global("X#FACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @1846 + FACHSuccess
+ ~!Global("X#FACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @1846 + FACHFailure1

+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @1846 + FACHSuccess
+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @1846 + FACHFailure1
+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @1846 + FACHFailure2
+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @1846 + FACHFailure3
+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @1846 + FACHFailure4

+ ~!Global("X#FACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @1847 + FACHSuccess
+ ~!Global("X#FACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @1847 + FACHFailure2

+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @1847 + FACHSuccess
+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @1847 + FACHFailure1
+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @1847 + FACHFailure2
+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @1847 + FACHFailure3
+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @1847 + FACHFailure4

+ ~!Global("X#FACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @1848 + FACHSuccess
+ ~!Global("X#FACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @1848 + FACHFailure3

+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @1848 + FACHSuccess
+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @1848 + FACHFailure1
+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @1848 + FACHFailure3
+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @1848 + FACHFailure2
+ ~!Global("X#FACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @1848 + FACHFailure4

+ ~OR(2) Global("FLOODED","GLOBAL",1) Global("FLOODED","GLOBAL",2) RandomNum(4,1)~ + @1849 + FalMine3
+ ~OR(2) Global("FLOODED","GLOBAL",1) Global("FLOODED","GLOBAL",2) RandomNum(4,2)~ + @1849 + FalMine4
+ ~OR(2) Global("FLOODED","GLOBAL",1) Global("FLOODED","GLOBAL",2) RandomNum(4,3)~ + @1849 + FalMine5
+ ~OR(2) Global("FLOODED","GLOBAL",1) Global("FLOODED","GLOBAL",2) RandomNum(4,4)~ + @1849 + FalMine6

+ ~Global("FLOODED","GLOBAL",0) RandomNum(2,1)~ + @1849 + FalMine1
+ ~Global("FLOODED","GLOBAL",0) RandomNum(2,2)~ + @1849 + FalMine2

+ ~AreaType(FOREST) RandomNum(5,1)~ + @1850 + FalFore1
+ ~AreaType(FOREST) RandomNum(5,2)~ + @1850 + FalFore2
+ ~AreaType(FOREST) RandomNum(5,3)~ + @1850 + FalFore3
+ ~AreaType(FOREST) RandomNum(5,4)~ + @1850 + FalFore4
+ ~AreaType(FOREST) RandomNum(5,5)~ + @1850 + FalFore5

+ ~AreaType(CITY) RandomNum(8,1)~ + @1850 + FalCity1
+ ~AreaType(CITY) RandomNum(8,2)~ + @1850 + FalCity2
+ ~AreaType(CITY) RandomNum(8,3)~ + @1850 + FalCity3
+ ~AreaType(CITY) RandomNum(8,4)~ + @1850 + FalCity4
+ ~AreaType(CITY) RandomNum(8,5)~ + @1850 + FalCity5
+ ~AreaType(CITY) RandomNum(8,6)~ + @1850 + FalCity6
+ ~AreaType(CITY) RandomNum(8,7)~ + @1850 + FalCity7
+ ~AreaType(CITY) RandomNum(8,8)~ + @1850 + FalCity8

+ ~RandomNum(6,1)~ + @1851 + FalName1
+ ~RandomNum(6,2)~ + @1851 + FalName2
+ ~RandomNum(6,3)~ + @1851 + FalName3
+ ~RandomNum(6,4)~ + @1851 + FalName4
+ ~RandomNum(6,5)~ + @1851 + FalName5
+ ~RandomNum(6,6)~ + @1851 + FalName6

+ ~%VoiceStrange%~ + @1852 + FaldornVoice
END

IF ~~ FaldornVoice
SAY @11
IF ~~ THEN DO ~SetName(@1853)
SetPlayerSound(Myself,@1854,0)
SetPlayerSound(Myself,@1855,1)
SetPlayerSound(Myself,@1856,2)
SetPlayerSound(Myself,@1857,3)
SetPlayerSound(Myself,@1858,4)
SetPlayerSound(Myself,@1859,5)
SetPlayerSound(Myself,@1860,6)
SetPlayerSound(Myself,@1861,7)
SetPlayerSound(Myself,@1862,8)
SetPlayerSound(Myself,@1863,9)
SetPlayerSound(Myself,@1863,10)
SetPlayerSound(Myself,@1863,11)
SetPlayerSound(Myself,@1863,12)
SetPlayerSound(Myself,@1863,13)
SetPlayerSound(Myself,@1864,18)
SetPlayerSound(Myself,@1865,19)
SetPlayerSound(Myself,@1866,20)
SetPlayerSound(Myself,@1867,21)
SetPlayerSound(Myself,@1868,22)
SetPlayerSound(Myself,@1869,23)
SetPlayerSound(Myself,@1870,24)
SetPlayerSound(Myself,@1871,25)
SetPlayerSound(Myself,@1872,26)
SetPlayerSound(Myself,@1873,27)
SetPlayerSound(Myself,@1874,28)
SetPlayerSound(Myself,@1872,29)
SetPlayerSound(Myself,@1873,30)
SetPlayerSound(Myself,@1874,31)
SetPlayerSound(Myself,@1875,32)
SetPlayerSound(Myself,@1876,33)
SetPlayerSound(Myself,@1877,34)
SetPlayerSound(Myself,@1875,35)
SetPlayerSound(Myself,@1876,36)
SetPlayerSound(Myself,@1877,37)
SetPlayerSound(Myself,@1875,38)
SetPlayerSound(Myself,@1878,39)
SetPlayerSound(Myself,@1879,40)
SetPlayerSound(Myself,@1880,41)
SetPlayerSound(Myself,@1881,42)
SetPlayerSound(Myself,@1882,43)
SetPlayerSound(Myself,@1883,44)
SetPlayerSound(Myself,@1884,47)
SetPlayerSound(Myself,@1885,48)
SetPlayerSound(Myself,@1886,53)
SetPlayerSound(Myself,@1887,54)
SetPlayerSound(Myself,@1888,55)
SetPlayerSound(Myself,@1889,58)
SetPlayerSound(Myself,@1890,59)
SetPlayerSound(Myself,@1872,62)
SetPlayerSound(Myself,@1872,63)
SetPlayerSound(Myself,@1873,64)
SetPlayerSound(Myself,@1891,74)~ EXIT
END

IF ~~ FACHSuccess
SAY @1892
= @1893
IF ~~ THEN DO ~SetGlobal("X#FACHdone","GLOBAL",1)~ EXIT
END

IF ~~ FACHFailure1
SAY @1894
IF ~~ THEN EXIT
END

IF ~~ FACHFailure2
SAY @1895
IF ~~ THEN EXIT
END

IF ~~ FACHFailure3
SAY @1896
IF ~~ THEN EXIT
END

IF ~~ FACHFailure4
SAY @1897
IF ~~ THEN EXIT
END

IF ~~ FalName1
SAY @1898
++ @1899 + FalName1.1
++ @1900 EXIT
++ @1901 + FalName1.2
END

IF ~~ FalName1.1
SAY @1902
IF ~~ THEN EXIT
END

IF ~~ FalName1.2
SAY @1903
IF ~~ THEN EXIT
END

IF ~~ FalName2
SAY @1904
IF ~~ THEN EXIT
END

IF ~~ FalName3
SAY @1905
IF ~~ THEN EXIT
END
IF ~~ FalName4
SAY @1906
IF ~~ THEN EXIT
END

IF ~~ FalName5
SAY @1907
++ @1908 + FalName5.1
++ @1909 EXIT
++ @1910 + FalName5.2
END

IF ~~ FalName5.1
SAY @1911
IF ~~ THEN EXIT
END

IF ~~ FalName5.2
SAY @1912
IF ~~ THEN EXIT
END

IF ~~ FalName6
SAY @1913
IF ~~ THEN EXIT
END

IF ~~ FalMine6
SAY @1914
IF ~~ THEN EXIT
END

IF ~~ FalMine5
SAY @1915
IF ~~ THEN EXIT
END

IF ~~ FalMine4
SAY @1916
IF ~~ THEN EXIT
END

IF ~~ FalMine3
SAY @1917
IF ~~ THEN EXIT
END

IF ~~ FalMine2
SAY @1918
IF ~~ THEN EXIT
END

IF ~~ FalMine1
SAY @1919
IF ~~ THEN EXIT
END

IF ~~ FalFore5
SAY @1920
IF ~~ THEN EXIT
END

IF ~~ FalFore4
SAY @1921
IF ~~ THEN EXIT
END

IF ~~ FalFore3
SAY @1922
IF ~~ THEN EXIT
END

IF ~~ FalFore2
SAY @1923
IF ~~ THEN EXIT
END

IF ~~ FalFore1
SAY @1924
IF ~~ THEN EXIT
END

IF ~~ FalCity8
SAY @1925
IF ~~ THEN EXIT
END

IF ~~ FalCity7.1.2.1.1
SAY @1926
IF ~~ THEN EXIT
END

IF ~~ FalCity7.1.2.1
SAY @1927
++ @1928 EXIT
++ @1929 EXIT
++ @1930 + FalCity7.1.2.1.1
END

IF ~~ FalCity7.1.2
SAY @1931
++ @1932 EXIT
+ ~Gender(Player1,MALE)~ + @1933 + FalCity7.1.2.1
++ @1934 + FalCityLeave
END

IF ~~ FalCity7.1.1
SAY @1935
++ @1936 EXIT
++ @1934 + FalCityLeave
END

IF ~~ FalCity7.1
SAY @1937
++ @1938 + FalCity7.1.1
++ @1939 + FalCity7.1.2
++ @1940 + FalCityLeave
END

IF ~~ FalCity7
SAY @1941
++ @1942 EXIT
++ @1943 + FalCity7.1
++ @1940 + FalCityLeave
END

IF ~~ FalCity6
SAY @1944
IF ~~ THEN EXIT
END

IF ~~ FalCity5
SAY @1945
IF ~~ THEN EXIT
END

IF ~~ FalCity4
SAY @1946
IF ~~ THEN EXIT
END

IF ~~ FalCity3
SAY @1947
IF ~~ THEN EXIT
END

IF ~~ FalCityLeave
SAY @1948
IF ~~ THEN EXIT
END

IF ~~ FalCity2.2.1
SAY @1949
++ @1950 EXIT
++ @1940 + FalCityLeave
END

IF ~~ FalCity2.1.2
SAY @1951
= @1952
IF ~~ THEN EXIT
END

IF ~~ FalCity2.1.1
SAY @1953
++ @1954 EXIT
++ @1955 + FalCityLeave
END

IF ~~ FalCity2.2
SAY @1956
= @1957
++ @1958 + FalCity2.2.1
++ @1959 + FalCity2.1.2
++ @1940 + FalCityLeave
END

IF ~~ FalCity2.1
SAY @1960
++ @1961 + FalCity2.1.1
++ @1959 + FalCity2.1.2
++ @1940 + FalCityLeave
END

IF ~~ FalCity2
SAY @1962
++ @1963 + FalCity2.1
++ @1964 + FalCity2.2
++ @1940 + FalCityLeave
END

IF ~~ FalCity1.1
SAY @1965
IF ~~ THEN EXIT
END

IF ~~ FalCity1
SAY @1966

++ @1967 + FalCity1.1
++ @1968 EXIT
++ @1969 + FalCityLeave
END


END

APPEND ~%IMOEN_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN IMCH
SAY @1970
++ @1971 EXIT

+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) Global("X#IMCHdone","GLOBAL",1) RandomNum(4,1)~ + @1972 + IMCHFailure1
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) Global("X#IMCHdone","GLOBAL",1) RandomNum(4,2)~ + @1972 + IMCHFailure2
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) Global("X#IMCHdone","GLOBAL",1) RandomNum(4,3)~ + @1972 + IMCHFailure3
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) Global("X#IMCHdone","GLOBAL",1) RandomNum(4,4)~ + @1972 + IMCHFailure4


+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) RandomNum(5,1)~ + @1973 + IMCHSuccessEarly
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) RandomNum(5,2)~ + @1973 + IMCHFailure1
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) RandomNum(5,3)~ + @1973 + IMCHFailure2
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) RandomNum(5,4)~ + @1973 + IMCHFailure3
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) RandomNum(5,5)~ + @1973 + IMCHFailure4

+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @1974 + IMCHSuccessEarly
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @1974 + IMCHFailure1

+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @1974 + IMCHSuccessEarly
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @1974 + IMCHFailure1
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @1974 + IMCHFailure2
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @1974 + IMCHFailure3
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @1974 + IMCHFailure4

+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @1975 + IMCHSuccessEarly
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @1975 + IMCHFailure2

+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @1975 + IMCHSuccessEarly
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @1975 + IMCHFailure1
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @1975 + IMCHFailure2
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @1975 + IMCHFailure3
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @1975 + IMCHFailure4

+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @1976 + IMCHSuccessEarly
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @1976 + IMCHFailure3

+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @1976 + IMCHSuccessEarly

+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @1976 + IMCHFailure1
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @1976 + IMCHFailure3
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @1976 + IMCHFailure2
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @1976 + IMCHFailure4

+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) Global("X#IMCHdone","GLOBAL",1) RandomNum(4,1)~ + @1972 + IMCHFailure1
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) Global("X#IMCHdone","GLOBAL",1) RandomNum(4,2)~ + @1972 + IMCHFailure2
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) Global("X#IMCHdone","GLOBAL",1) RandomNum(4,3)~ + @1972 + IMCHFailure3
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) Global("X#IMCHdone","GLOBAL",1) RandomNum(4,4)~ + @1972 + IMCHFailure4

+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) RandomNum(5,1)~ + @1973 + IMCHSuccessLATE
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) RandomNum(5,2)~ + @1973 + IMCHFailure1
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) RandomNum(5,3)~ + @1973 + IMCHFailure2
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) RandomNum(5,4)~ + @1973 + IMCHFailure3
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) RandomNum(5,5)~ + @1973 + IMCHFailure4

+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @1974 + IMCHSuccessLATE
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @1974 + IMCHFailure1

+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @1974 + IMCHSuccessLATE
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @1974 + IMCHFailure1
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @1974 + IMCHFailure2
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @1974 + IMCHFailure3
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @1974 + IMCHFailure4

+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @1975 + IMCHSuccessLATE
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @1975 + IMCHFailure2

+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @1975 + IMCHSuccessLATE
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @1975 + IMCHFailure1
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @1975 + IMCHFailure2
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @1975 + IMCHFailure3
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @1975 + IMCHFailure4

+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @1976 + IMCHSuccessLATE
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @1976 + IMCHFailure3

+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @1976 + IMCHSuccessLATE
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @1976 + IMCHFailure1
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @1976 + IMCHFailure3
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @1976 + IMCHFailure2
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#IMCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @1976 + IMCHFailure4

+ ~CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) CheckStatLT("%IMOEN_DV%",7,ENCUMBERANCE) !HPPercentLT("%IMOEN_DV%",75) !AreaType(CITY) RandomNum(2,1)~ + @1977 + X#ImoenHow1
+ ~CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) CheckStatLT("%IMOEN_DV%",7,ENCUMBERANCE) !HPPercentLT("%IMOEN_DV%",75) !AreaType(CITY) RandomNum(2,2)~ + @1977 + X#ImoenHow2

+ ~!CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) CheckStatLT("%IMOEN_DV%",7,ENCUMBERANCE) !HPPercentLT("%IMOEN_DV%",75) !AreaType(CITY)~ + @1977 + X#ImoenHow3

+ ~CheckStatLT("%IMOEN_DV%",7,FATIGUE) !CheckStatLT("%IMOEN_DV%",7,INTOXICATION) CheckStatLT("%IMOEN_DV%",7,ENCUMBERANCE) !HPPercentLT("%IMOEN_DV%",75) !AreaType(CITY)~ + @1977 + X#ImoenHow4

+ ~CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !CheckStatLT("%IMOEN_DV%",7,ENCUMBERANCE) !HPPercentLT("%IMOEN_DV%",75) !AreaType(CITY)~ + @1977 + X#ImoenHow5

+ ~CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !CheckStatLT("%IMOEN_DV%",7,ENCUMBERANCE) HPPercentLT("%IMOEN_DV%",75) !AreaType(CITY)~ + @1977 + X#ImoenHow6

+ ~CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !CheckStatLT("%IMOEN_DV%",7,ENCUMBERANCE) !HPPercentLT("%IMOEN_DV%",75) AreaType(CITY) RandomNum(2,1)~ + @1977 + X#ImoenHow7
+ ~CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !CheckStatLT("%IMOEN_DV%",7,ENCUMBERANCE) !HPPercentLT("%IMOEN_DV%",75) AreaType(CITY) RandomNum(2,2)~ + @1977 + X#ImoenHow8

+ ~!AreaCheck("%Candlekeep_Ch6%") ReputationGT(Player1,5) ReputationLT(Player1,19) CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON) RandomNum(3,1)~ + @1978 + X#ImoenWrong1
+ ~!AreaCheck("%Candlekeep_Ch6%") ReputationGT(Player1,5) ReputationLT(Player1,19) CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON) RandomNum(3,2)~ + @1978 + X#ImoenWrong2
+ ~!AreaCheck("%Candlekeep_Ch6%") ReputationGT(Player1,5) ReputationLT(Player1,19) CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON) RandomNum(3,3)~ + @1978 + X#ImoenWrong3

+ ~!AreaCheck("%Candlekeep_Ch6%") ReputationLT(Player1,6) CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON) RandomNum(3,1)~ + @1978 + X#ImoenWrong1
+ ~!AreaCheck("%Candlekeep_Ch6%") ReputationLT(Player1,6) CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON) RandomNum(3,2)~ + @1978 + X#ImoenWrong2
+ ~!AreaCheck("%Candlekeep_Ch6%") ReputationLT(Player1,6) CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON) RandomNum(3,3)~ + @1978 + X#ImoenWrong4

+ ~!AreaCheck("%Candlekeep_Ch6%") ReputationGT(Player1,18) CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON) RandomNum(3,1)~ + @1978 + X#ImoenWrong1
+ ~!AreaCheck("%Candlekeep_Ch6%") ReputationGT(Player1,18) CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON) RandomNum(3,2)~ + @1978 + X#ImoenWrong2
+ ~!AreaCheck("%Candlekeep_Ch6%") ReputationGT(Player1,18) CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON) RandomNum(3,3)~ + @1978 + X#ImoenWrong5

+ ~AreaCheck("%Candlekeep_Ch6%") CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON)~ + @1978 + X#ImoenWrong2

+ ~CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) AreaType(DUNGEON)~ + @1978 + X#ImoenWrong6

+ ~!CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON)~ + @1978 + X#ImoenWrong7

+ ~CheckStatLT("%IMOEN_DV%",7,FATIGUE) !CheckStatLT("%IMOEN_DV%",7,INTOXICATION) !HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON)~ + @1978 + X#ImoenWrong8

+ ~CheckStatLT("%IMOEN_DV%",7,FATIGUE) CheckStatLT("%IMOEN_DV%",7,INTOXICATION) HPPercentLT("%IMOEN_DV%",75) !AreaType(DUNGEON)~ + @1978 + X#ImoenWrong9

+ ~%VoiceStrange%~ + @1979 + ImoenVoice
END

/* SetPlayerSound entries for _IMOEN2.CRE... */
IF ~~ ImoenVoice
SAY @11
IF ~~ THEN DO ~SetName(@1980)
SetPlayerSound(Myself,@1981,0)
SetPlayerSound(Myself,@1982,1)
SetPlayerSound(Myself,@1983,3)
SetPlayerSound(Myself,@1984,6)
SetPlayerSound(Myself,@1985,7)
SetPlayerSound(Myself,@1986,8)
SetPlayerSound(Myself,@1987,9)
SetPlayerSound(Myself,@1987,10)
SetPlayerSound(Myself,@1987,11)
SetPlayerSound(Myself,@1987,12)
SetPlayerSound(Myself,@1987,13)
SetPlayerSound(Myself,@1988,18)
SetPlayerSound(Myself,@1989,19)
SetPlayerSound(Myself,@1990,20)
SetPlayerSound(Myself,@1991,23)
SetPlayerSound(Myself,@1992,26)
SetPlayerSound(Myself,@1993,SELECT_COMMON2)
SetPlayerSound(Myself,@1994,27)
SetPlayerSound(Myself,@1995,28)
SetPlayerSound(Myself,@1993,29)
SetPlayerSound(Myself,@1994,30)
SetPlayerSound(Myself,@1996,32)
SetPlayerSound(Myself,@1997,33)
SetPlayerSound(Myself,@1998,34)
SetPlayerSound(Myself,@1996,35)
SetPlayerSound(Myself,@1997,36)
SetPlayerSound(Myself,@1998,37)
SetPlayerSound(Myself,@1996,38)
SetPlayerSound(Myself,@1999,53)
SetPlayerSound(Myself,@1992,62)
SetPlayerSound(Myself,@1992,63)
SetPlayerSound(Myself,@1993,64)
SetPlayerSound(Myself,@2000,74)~EXIT
END

IF ~~ X#ImoenWrong1
SAY @2001
IF ~~ THEN EXIT
END

IF ~~ X#ImoenWrong2
SAY @2002
IF ~~ THEN EXIT
END

IF ~~ X#ImoenWrong3
SAY @2003
IF ~~ THEN EXIT
END

IF ~~ X#ImoenWrong4
SAY @2004
IF ~~ THEN EXIT
END


IF ~~ X#ImoenWrong5
SAY @2005
IF ~~ THEN EXIT
END

IF ~~ X#ImoenWrong6
SAY @2006
IF ~~ THEN EXIT
END

IF ~~ X#ImoenWrong7
SAY @2007
IF ~~ THEN EXIT
END

IF ~~ X#ImoenWrong8
SAY @2008
IF ~~ THEN EXIT
END

IF ~~ X#ImoenWrong9
SAY @2009
IF ~~ THEN EXIT
END

IF ~~ X#ImoenHow1
SAY @2010
IF ~~ THEN EXIT
END

IF ~~ X#ImoenHow2
SAY @2011
IF ~~ THEN EXIT
END

IF ~~ X#ImoenHow3
SAY @2012
IF ~~ THEN EXIT
END

IF ~~ X#ImoenHow4
SAY @2013
IF ~~ THEN EXIT
END

IF ~~ X#ImoenHow5
SAY @2014
IF ~~ THEN EXIT
END

IF ~~ X#ImoenHow6
SAY @2015
IF ~~ THEN EXIT
END

IF ~~ X#ImoenHow7
SAY @2016
IF ~~ THEN EXIT
END

IF ~~ X#ImoenHow8
SAY @2017
IF ~~ THEN EXIT
END


IF ~~ IMCHSuccessLATE
SAY @2018
= @2019
= @2020
IF ~~ THEN DO ~SetGlobal("X#IMCHdone","GLOBAL",1)~ EXIT
END

IF ~~ IMCHSuccessEarly
SAY @2021
= @2022
= @2023
IF ~~ THEN DO ~SetGlobal("X#IMCHdone","GLOBAL",1)~ EXIT
END

IF ~~ IMCHFailure1
SAY @2024
IF ~~ THEN EXIT
END

IF ~~ IMCHFailure2
SAY @2025
IF ~~ THEN EXIT
END

IF ~~ IMCHFailure3
SAY @2026
= @2027

IF ~~ THEN EXIT
END

IF ~~ IMCHFailure4
SAY @2028
IF ~~ THEN EXIT
END

END

APPEND ~%JAHEIRA_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN JACH
SAY @2029
++ @2030 EXIT

+ ~Global("X#JACHdone","GLOBAL",1) RandomNum(4,1)~ + @2031 + JACHFailure1
+ ~Global("X#JACHdone","GLOBAL",1) RandomNum(4,2)~ + @2031 + JACHFailure2
+ ~Global("X#JACHdone","GLOBAL",1) RandomNum(4,3)~ + @2031 + JACHFailure3
+ ~Global("X#JACHdone","GLOBAL",1) RandomNum(4,4)~ + @2031 + JACHFailure4

+ ~!Global("X#JACHdone","GLOBAL",1) RandomNum(5,1)~ + @2032 + JACHSuccess
+ ~!Global("X#JACHdone","GLOBAL",1) RandomNum(5,2)~ + @2032 + JACHFailure1
+ ~!Global("X#JACHdone","GLOBAL",1) RandomNum(5,3)~ + @2032 + JACHFailure2
+ ~!Global("X#JACHdone","GLOBAL",1) RandomNum(5,4)~ + @2032 + JACHFailure3
+ ~!Global("X#JACHdone","GLOBAL",1) RandomNum(5,5)~ + @2032 + JACHFailure4

+ ~!Global("X#JACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @2033 + JACHSuccess
+ ~!Global("X#JACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @2033 + JACHFailure1

+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @2033 + JACHSuccess
+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @2033 + JACHFailure1
+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @2033 + JACHFailure2
+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @2033 + JACHFailure3
+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @2033 + JACHFailure4

+ ~!Global("X#JACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @2034 + JACHSuccess
+ ~!Global("X#JACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @2034 + JACHFailure2

+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @2034 + JACHSuccess
+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @2034 + JACHFailure1
+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @2034 + JACHFailure2
+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @2034 + JACHFailure3
+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @2034 + JACHFailure4

+ ~!Global("X#JACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @2035 + JACHSuccess
+ ~!Global("X#JACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @2035 + JACHFailure3

+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @2035 + JACHSuccess
+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @2035 + JACHFailure1
+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @2035 + JACHFailure3
+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @2035 + JACHFailure2
+ ~!Global("X#JACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @2035 + JACHFailure4

+ ~!Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) !AreaCheck("%IceIsland%") !AreaCheck("%IceIslandMaze_L1%") !AreaCheck("%IceIslandMaze_L2%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) RandomNum(3,1)~ + @2036 + X#JaOpinion1
+ ~!Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) !AreaCheck("%IceIsland%") !AreaCheck("%IceIslandMaze_L1%") !AreaCheck("%IceIslandMaze_L2%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) RandomNum(3,2)~ + @2036 + X#JaOpinion2
+ ~!Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) !AreaCheck("%IceIsland%") !AreaCheck("%IceIslandMaze_L1%") !AreaCheck("%IceIslandMaze_L2%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) RandomNum(3,3)~ + @2036 + X#JaOpinion3

+ ~!Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) !AreaCheck("%IceIsland%") !AreaCheck("%IceIslandMaze_L1%") !AreaCheck("%IceIslandMaze_L2%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) ReputationLT(Player1,10) RandomNum(3,1)~ + @2036 + X#JaOpinion1
+ ~!Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) !AreaCheck("%IceIsland%") !AreaCheck("%IceIslandMaze_L1%") !AreaCheck("%IceIslandMaze_L2%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) ReputationLT(Player1,10) RandomNum(3,2)~ + @2036 + X#JaOpinion2
+ ~!Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) !AreaCheck("%IceIsland%") !AreaCheck("%IceIslandMaze_L1%") !AreaCheck("%IceIslandMaze_L2%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) ReputationLT(Player1,10) RandomNum(3,3)~ + @2036 + X#JaOpinion4

+ ~!Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) !AreaCheck("%IceIsland%") !AreaCheck("%IceIslandMaze_L1%") !AreaCheck("%IceIslandMaze_L2%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !ReputationLT(Player1,10) RandomNum(3,1)~ + @2036 + X#JaOpinion1
+ ~!Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) !AreaCheck("%IceIsland%") !AreaCheck("%IceIslandMaze_L1%") !AreaCheck("%IceIslandMaze_L2%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !ReputationLT(Player1,10) RandomNum(3,2)~ + @2036 + X#JaOpinion2
+ ~!Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) !AreaCheck("%IceIsland%") !AreaCheck("%IceIslandMaze_L1%") !AreaCheck("%IceIslandMaze_L2%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !ReputationLT(Player1,10) RandomNum(3,3)~ + @2036 + X#JaOpinion5

+ ~!Dead("khalid") HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) !AreaCheck("%IceIsland%") !AreaCheck("%IceIslandMaze_L1%") !AreaCheck("%IceIslandMaze_L2%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%")~ + @2036 + X#JaOpinion6

+ ~!Dead("khalid") HPPercentLT(Player1,75) !AreaCheck("%IceIsland%") !AreaCheck("%IceIslandMaze_L1%") !AreaCheck("%IceIslandMaze_L2%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%")~ + @2036 + X#JaOpinion7

+ ~!Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) OR(4) AreaCheck("%IceIsland%") AreaCheck("%IceIslandMaze_L1%") !AreaCheck("%IceIslandMaze_L2%") AreaCheck("%IsleofBalduranS%") AreaCheck("%IsleofBalduranN%")~ + @2036 + X#JaOpinion8

+ ~Dead("khalid")~ + @2036 + X#JaOpinion9

+ ~!InParty("khalid") !Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) OR(2) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) ReputationGT(Player1,9) RandomNum(4,1)~ + @2037 + X#JaScowl1
+ ~!InParty("khalid") !Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) OR(2) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) ReputationGT(Player1,9) RandomNum(4,2)~ + @2037 + X#JaScowl2
+ ~!InParty("khalid") !Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) OR(2) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) ReputationGT(Player1,9) RandomNum(4,3)~ + @2037 + X#JaScowl3
+ ~!InParty("khalid") !Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) OR(2) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) ReputationGT(Player1,9) RandomNum(4,4)~ + @2037 + X#JaScowl4

+ ~InParty("khalid") !Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) OR(2) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) ReputationGT(Player1,9) RandomNum(5,1)~ + @2037 + X#JaScowl1
+ ~InParty("khalid") !Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) OR(2) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) ReputationGT(Player1,9) RandomNum(5,2)~ + @2037 + X#JaScowl2
+ ~InParty("khalid") !Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) OR(2) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) ReputationGT(Player1,9) RandomNum(5,3)~ + @2037 + X#JaScowl3
+ ~InParty("khalid") !Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) OR(2) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) ReputationGT(Player1,9) RandomNum(5,4)~ + @2037 + X#JaScowl4
+ ~InParty("khalid") !Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) OR(2) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) ReputationGT(Player1,9) RandomNum(5,5)~ + @2037 + X#JaScowl5

+ ~!Dead("khalid") !HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !ReputationGT(Player1,9)~ + @2037 + X#JaScowl6

+ ~!Dead("khalid") HPPercentLT("jaheira",75) !HPPercentLT(Player1,75) OR(2) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) ReputationGT(Player1,9)~ + @2037 + X#JaScowl7

+ ~!Dead("khalid") !HPPercentLT("jaheira",75) HPPercentLT(Player1,75) OR(2) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) ReputationGT(Player1,9)~ + @2037 + X#JaScowl8

+ ~Dead("khalid")~ + @2037 + X#JaScowl9

+ ~%VoiceStrange%~ + @2038 + JaheiraVoice
END

/* SetPlayerSound entries for _JAHEIR.CRE... */
IF ~~ JaheiraVoice
SAY @11
IF ~~ THEN DO ~SetName(@2039)
SetPlayerSound(Myself,@2040,0)
SetPlayerSound(Myself,@2041,1)
SetPlayerSound(Myself,@2042,2)
SetPlayerSound(Myself,@2043,3)
SetPlayerSound(Myself,@2044,4)
SetPlayerSound(Myself,@2045,5)
SetPlayerSound(Myself,@2046,6)
SetPlayerSound(Myself,@2047,7)
SetPlayerSound(Myself,@2048,8)
SetPlayerSound(Myself,@2049,9)
SetPlayerSound(Myself,@2049,10)
SetPlayerSound(Myself,@2049,11)
SetPlayerSound(Myself,@2049,12)
SetPlayerSound(Myself,@2049,13)
SetPlayerSound(Myself,@2050,18)
SetPlayerSound(Myself,@2051,19)
SetPlayerSound(Myself,@2052,20)
SetPlayerSound(Myself,@2053,21)
SetPlayerSound(Myself,@2054,22)
SetPlayerSound(Myself,@2055,23)
SetPlayerSound(Myself,@2056,24)
SetPlayerSound(Myself,@2057,25)
SetPlayerSound(Myself,@2058,26)
SetPlayerSound(Myself,@2059,27)
SetPlayerSound(Myself,@2060,28)
SetPlayerSound(Myself,@2058,29)
SetPlayerSound(Myself,@2059,30)
SetPlayerSound(Myself,@2060,31)
SetPlayerSound(Myself,@2061,32)
SetPlayerSound(Myself,@2062,33)
SetPlayerSound(Myself,@2063,34)
SetPlayerSound(Myself,@2061,35)
SetPlayerSound(Myself,@2062,36)
SetPlayerSound(Myself,@2063,37)
SetPlayerSound(Myself,@2061,38)
SetPlayerSound(Myself,@2064,39)
SetPlayerSound(Myself,@2065,40)
SetPlayerSound(Myself,@2066,41)
SetPlayerSound(Myself,@2067,42)
SetPlayerSound(Myself,@2068,43)
SetPlayerSound(Myself,@2069,44)
SetPlayerSound(Myself,@2070,45)
SetPlayerSound(Myself,@2071,47)
SetPlayerSound(Myself,@2072,53)
SetPlayerSound(Myself,@2073,54)
SetPlayerSound(Myself,@2074,58)
SetPlayerSound(Myself,@2075,59)
SetPlayerSound(Myself,@2076,60)
SetPlayerSound(Myself,@2058,62)
SetPlayerSound(Myself,@2058,63)
SetPlayerSound(Myself,@2059,64)
SetPlayerSound(Myself,@2077,74)~ EXIT
END

IF ~~ X#JaScowl1
SAY @2078
IF ~~ THEN EXIT
END

IF ~~ X#JaScowl2
SAY @2079
IF ~~ THEN EXIT
END

IF ~~ X#JaScowl3
SAY @2080
IF ~~ THEN EXIT
END

IF ~~ X#JaScowl4
SAY @2081
IF ~~ THEN EXIT
END

IF ~~ X#JaScowl6
SAY @2082
IF ~~ THEN EXIT
END

IF ~~ X#JaScowl7
SAY @2083
IF ~~ THEN EXIT
END

IF ~~ X#JaScowl8
SAY @2084
IF ~~ THEN EXIT
END

IF ~~ X#JaScowl9
SAY @2085
IF ~~ THEN EXIT
END

IF ~~ X#JaOpinion1
SAY @2086
IF ~~ THEN EXIT
END

IF ~~ X#JaOpinion2
SAY @2087
IF ~~ THEN EXIT
END

IF ~~ X#JaOpinion3
SAY @2088
IF ~~ THEN EXIT
END

IF ~~ X#JaOpinion4
SAY @2089
IF ~~ THEN EXIT
END

IF ~~ X#JaOpinion5
SAY @2090
IF ~~ THEN EXIT
END

IF ~~ X#JaOpinion6
SAY @2091
IF ~~ THEN EXIT
END

IF ~~ X#JaOpinion7
SAY @2092
IF ~~ THEN EXIT
END

IF ~~ X#JaOpinion8
SAY @2093
IF ~~ THEN EXIT
END

IF ~~ X#JaOpinion9
SAY @2094
IF ~~ THEN EXIT
END


IF ~~ JACHSuccess
SAY @2095
IF ~~ THEN DO ~SetGlobal("X#JACHdone","GLOBAL",1)~ EXIT
END

IF ~~ JACHFailure1
SAY @2096
IF ~~ THEN EXIT
END

IF ~~ JACHFailure2
SAY @2097
IF ~~ THEN EXIT
END

IF ~~ JACHFailure3
SAY @2098
IF ~~ THEN EXIT
END

IF ~~ JACHFailure4
SAY @2096
IF ~~ THEN EXIT
END

END

CHAIN ~%JAHEIRA_JOINED%~ X#JaScowl5
@2099
== ~%KHALID_JOINED%~ @2100
== ~%JAHEIRA_JOINED%~ @2101
== ~%KHALID_JOINED%~ @2102
EXIT

APPEND ~%KIVAN_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN KICH
SAY @2103
++ @2104 EXIT

+ ~Global("P#KICHdone","GLOBAL",1) RandomNum(5,1)~ + @2105 + KICHFailure1
+ ~Global("P#KICHdone","GLOBAL",1) RandomNum(5,2)~ + @2105 + KICHFailure2
+ ~Global("P#KICHdone","GLOBAL",1) RandomNum(5,3)~ + @2105 + KICHFailure3
+ ~Global("P#KICHdone","GLOBAL",1) RandomNum(5,4)~ + @2105 + KICHFailure4
+ ~Global("P#KICHdone","GLOBAL",1) RandomNum(5,5)~ + @2105 + KICHFailure5

+ ~!Global("P#KICHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(5,1)~ + @2106 + KICHSuccess
+ ~!Global("P#KICHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(5,2)~ + @2106 + KICHFailure1
+ ~!Global("P#KICHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(5,3)~ + @2106 + KICHFailure2
+ ~!Global("P#KICHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(5,4)~ + @2106 + KICHFailure3
+ ~!Global("P#KICHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(5,5)~ + @2106 + KICHFailure4

+ ~!Global("P#KICHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(6,1)~ + @2106 + KICHSuccess
+ ~!Global("P#KICHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(6,2)~ + @2106 + KICHFailure1
+ ~!Global("P#KICHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(6,3)~ + @2106 + KICHFailure2
+ ~!Global("P#KICHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(6,4)~ + @2106 + KICHFailure3
+ ~!Global("P#KICHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(6,5)~ + @2106 + KICHFailure4
+ ~!Global("P#KICHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(6,5)~ + @2106 + KICHFailure5

+ ~!Global("P#KICHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @2107 + KICHSuccess
+ ~!Global("P#KICHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @2107 + KICHFailure1

+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @2107 + KICHSuccess
+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @2107 + KICHFailure2
+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @2107 + KICHFailure3
+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @2107 + KICHFailure4
+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @2107 + KICHFailure5

+ ~!Global("P#KICHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @2108 + KICHSuccess
+ ~!Global("P#KICHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @2108 + KICHFailure2

+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @2108 + KICHSuccess
+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @2108 + KICHFailure1
+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @2108 + KICHFailure5
+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @2108 + KICHFailure3
+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @2108 + KICHFailure4

+ ~!Global("P#KICHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @2109 + KICHSuccess
+ ~!Global("P#KICHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @2109 + KICHFailure3

+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @2109 + KICHSuccess
+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @2109 + KICHFailure1
+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @2109 + KICHFailure5
+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @2109 + KICHFailure2
+ ~!Global("P#KICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @2109 + KICHFailure4

+ ~GlobalLT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(2,1)~ + @2110 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow1
+ ~GlobalLT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(2,2)~ + @2110 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow2

+ ~!HPPercentGT(Player1,50)~ + @2110 + X#KiHow3

+ ~Global("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50)~ + @2110 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow4

+ ~GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @2110 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow5
+ ~GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @2110 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow6
+ ~GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @2110 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow7
+ ~GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @2110 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow8
+ ~GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @2110 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow9
+ ~GlobalGT("X#AskedKivanDoing","GLOBAL",11) HPPercentGT(Player1,50) RandomNum(6,1)~ + @2110 DO ~IncrementGlobal("X#AskedKivanDoing","GLOBAL",1)~ + X#KiHow10

+ ~InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,1)~ + @2111 + X#KiMaleEl1
+ ~InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,2)~ + @2111 + X#KiMaleEl2
+ ~InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,3)~ + @2111 + X#KiMaleEl3
+ ~InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,4)~ + @2111 + X#KiMaleEl4
+ ~InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,5)~ + @2111 + X#KiMaleEl5
+ ~InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,6)~ + @2111 + X#KiMaleEl6
+ ~InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,7)~ + @2111 + X#KiMaleEl7
+ ~InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(8,8)~ + @2111 + X#KiMaleEl8

+ ~!InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,1)~ + @2111 + X#KiMaleEl1
+ ~!InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,2)~ + @2111 + X#KiMaleEl2
+ ~!InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,3)~ + @2111 + X#KiMaleEl3
+ ~!InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,4)~ + @2111 + X#KiMaleEl4
+ ~!InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,5)~ + @2111 + X#KiMaleEl5
+ ~!InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,6)~ + @2111 + X#KiMaleEl6
+ ~!InParty("viconia") Gender(Player1,MALE) !Race(Player1,ELF) RandomNum(7,7)~ + @2111 + X#KiMaleEl7

+ ~InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,1)~ + @2111 + X#KiMaleEl1
+ ~InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,2)~ + @2111 + X#KiMaleEl2
+ ~InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,3)~ + @2111 + X#KiMaleEl3
+ ~InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,4)~ + @2111 + X#KiMaleEl4
+ ~InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,5)~ + @2111 + X#KiMaleEl5
+ ~InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,6)~ + @2111 + X#KiMaleEl6
+ ~InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,7)~ + @2111 + X#KiMaleEl7
+ ~InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,8)~ + @2111 + X#KiMaleEl8
+ ~InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,9)~ + @2111 + X#KiMaleEl9
+ ~InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(10,10)~ + @2111 + X#KiMaleEl10

+ ~!InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,1)~ + @2111 + X#KiMaleEl1
+ ~!InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,2)~ + @2111 + X#KiMaleEl2
+ ~!InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,3)~ + @2111 + X#KiMaleEl3
+ ~!InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,4)~ + @2111 + X#KiMaleEl4
+ ~!InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,5)~ + @2111 + X#KiMaleEl5
+ ~!InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,6)~ + @2111 + X#KiMaleEl6
+ ~!InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,7)~ + @2111 + X#KiMaleEl7
+ ~!InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,8)~ + @2111 + X#KiMaleEl9
+ ~!InParty("viconia") Gender(Player1,FEMALE) !Race(Player1,ELF) RandomNum(9,9)~ + @2111 + X#KiMaleEl10

+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_3%)~ + @2112 + X#KiCourse1

+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_2%) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) RandomNum(2,1)~ + @2112 + X#KiCourse2
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_2%) GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) RandomNum(2,2)~ + @2112 + X#KiCourse3

+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("tazok") RandomNum(4,1)~ + @2112 + X#KiCourse4
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("tazok") RandomNum(4,2)~ + @2112 + X#KiCourse5
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("tazok") RandomNum(4,3)~ + @2112 + X#KiCourse6
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("tazok") RandomNum(4,4)~ + @2112 + X#KiCourse7

+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) Dead("tazok") RandomNum(5,1)~ + @2112 + X#KiCourse8
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) Dead("tazok") RandomNum(5,2)~ + @2112 + X#KiCourse9
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) Dead("tazok") RandomNum(5,3)~ + @2112 + X#KiCourse10
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) Dead("tazok") RandomNum(5,4)~ + @2112 + X#KiCourse11
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) Dead("tazok") RandomNum(5,5)~ + @2112 + X#KiCourse12
+ ~%VoiceStrange%~ + @2113 + X#KivanVoice
END

/* SetPlayerSound entries for _KIVAN.CRE... */
IF ~~ X#KivanVoice
SAY @11
IF ~~ THEN DO ~SetName(@2114)
SetPlayerSound(Myself,@2115,0)
SetPlayerSound(Myself,@2116,1)
SetPlayerSound(Myself,@2117,2)
SetPlayerSound(Myself,@2118,3)
SetPlayerSound(Myself,@2119,4)
SetPlayerSound(Myself,@2120,5)
SetPlayerSound(Myself,@2121,6)
SetPlayerSound(Myself,@2122,7)
SetPlayerSound(Myself,@2123,8)
SetPlayerSound(Myself,@2124,9)
SetPlayerSound(Myself,@2124,10)
SetPlayerSound(Myself,@2124,11)
SetPlayerSound(Myself,@2124,12)
SetPlayerSound(Myself,@2124,13)
SetPlayerSound(Myself,@2125,18)
SetPlayerSound(Myself,@2126,19)
SetPlayerSound(Myself,@2127,20)
SetPlayerSound(Myself,@2128,21)
SetPlayerSound(Myself,@2129,22)
SetPlayerSound(Myself,@2130,23)
SetPlayerSound(Myself,@2131,24)
SetPlayerSound(Myself,@2132,25)
SetPlayerSound(Myself,@2133,26)
SetPlayerSound(Myself,@2134,27)
SetPlayerSound(Myself,@2135,28)
SetPlayerSound(Myself,@2133,29)
SetPlayerSound(Myself,@2134,30)
SetPlayerSound(Myself,@2135,31)
SetPlayerSound(Myself,@2136,32)
SetPlayerSound(Myself,@2137,33)
SetPlayerSound(Myself,@2138,34)
SetPlayerSound(Myself,@2136,35)
SetPlayerSound(Myself,@2137,36)
SetPlayerSound(Myself,@2138,37)
SetPlayerSound(Myself,@2136,38)
SetPlayerSound(Myself,@2139,39)
SetPlayerSound(Myself,@2140,40)
SetPlayerSound(Myself,@2141,41)
SetPlayerSound(Myself,@2142,42)
SetPlayerSound(Myself,@2143,43)
SetPlayerSound(Myself,@2144,44)
SetPlayerSound(Myself,@2145,47)
SetPlayerSound(Myself,@2146,48)
SetPlayerSound(Myself,@2147,53)
SetPlayerSound(Myself,@2148,54)
SetPlayerSound(Myself,@2149,55)
SetPlayerSound(Myself,@2150,58)
SetPlayerSound(Myself,@2151,59)
SetPlayerSound(Myself,@2133,62)
SetPlayerSound(Myself,@2133,63)
SetPlayerSound(Myself,@2134,64)
SetPlayerSound(Myself,@2152,74)~ EXIT
END

IF ~~ X#KiCourse1
SAY @2153
IF ~~ THEN EXIT
END

IF ~~ X#KiCourse2
SAY @2154
IF ~~ THEN EXIT
END

IF ~~ X#KiCourse3
SAY @2155
IF ~~ THEN EXIT
END

IF ~~ X#KiCourse4
SAY @2156
IF ~~ THEN EXIT
END

IF ~~ X#KiCourse5
SAY @2157
IF ~~ THEN EXIT
END

IF ~~ X#KiCourse6
SAY @2158
IF ~~ THEN EXIT
END

IF ~~ X#KiCourse7
SAY @2159
IF ~~ THEN EXIT
END

IF ~~ X#KiCourse8
SAY @2160
IF ~~ THEN EXIT
END

IF ~~ X#KiCourse9
SAY @2161
IF ~~ THEN EXIT
END

IF ~~ X#KiCourse10
SAY @2162
IF ~~ THEN EXIT
END

IF ~~ X#KiCourse11
SAY @2163
IF ~~ THEN EXIT
END

IF ~~ X#KiCourse12
SAY @2164
IF ~~ THEN EXIT
END


IF ~~ X#KiMaleEl1
SAY @2165
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl2
SAY @2166
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl3
SAY @2167
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl4
SAY @2168
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl5
SAY @2169
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl6
SAY @2170
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl7
SAY @2171
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl9
SAY @2172
IF ~~ THEN EXIT
END

IF ~~ X#KiMaleEl10
SAY @2173
IF ~~ THEN EXIT
END


IF ~~ X#KiHow1
SAY @2174
IF ~~ THEN EXIT
END

IF ~~ X#KiHow2
SAY @2175
IF ~~ THEN EXIT
END

IF ~~ X#KiHow3
SAY @2176
IF ~~ THEN EXIT
END

IF ~~ X#KiHow4
SAY @2177
IF ~~ THEN EXIT
END

IF ~~ X#KiHow5
SAY @2178
IF ~~ THEN EXIT
END

IF ~~ X#KiHow6
SAY @2179
IF ~~ THEN EXIT
END

IF ~~ X#KiHow7
SAY @2180
IF ~~ THEN EXIT
END

IF ~~ X#KiHow8
SAY @2181
IF ~~ THEN EXIT
END

IF ~~ X#KiHow9
SAY @2182
IF ~~ THEN EXIT
END

IF ~~ X#KiHow10
SAY @2183
IF ~~ THEN EXIT
END

IF ~~ KICHSuccess
SAY @2184
IF ~~ THEN DO ~SetGlobal("P#KICHdone","GLOBAL",1)~ EXIT
END


IF ~~ KICHFailure1
SAY @2185
IF ~~ THEN EXIT
END

IF ~~ KICHFailure2
SAY @2186
IF ~~ THEN EXIT
END

IF ~~ KICHFailure3
SAY @2187
IF ~~ THEN EXIT
END

IF ~~ KICHFailure4
SAY @2188
IF ~~ THEN EXIT
END

IF ~~ KICHFailure5
SAY @2189
IF ~~ THEN EXIT
END

END

CHAIN ~%KIVAN_JOINED%~ X#KiMaleEl8
@2190
== ~%VICONIA_JOINED%~ @2191
EXIT

APPEND ~%MINSC_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN MICH
SAY @2192
++ @2193 EXIT

+ ~Global("X#MICHdone","GLOBAL",1) RandomNum(4,1)~ + @2194 + MICHFailure1
+ ~Global("X#MICHdone","GLOBAL",1) RandomNum(4,2)~ + @2194 + MICHFailure2
+ ~Global("X#MICHdone","GLOBAL",1) RandomNum(4,3)~ + @2194 + MICHFailure3
+ ~Global("X#MICHdone","GLOBAL",1) RandomNum(4,4)~ + @2194 + MICHFailure4

+ ~!Global("X#MICHdone","GLOBAL",1) RandomNum(5,1)~ + @2195 + MICHSuccess
+ ~!Global("X#MICHdone","GLOBAL",1) RandomNum(5,2)~ + @2195 + MICHFailure1
+ ~!Global("X#MICHdone","GLOBAL",1) RandomNum(5,3)~ + @2195 + MICHFailure2
+ ~!Global("X#MICHdone","GLOBAL",1) RandomNum(5,4)~ + @2195 + MICHFailure3
+ ~!Global("X#MICHdone","GLOBAL",1) RandomNum(5,5)~ + @2195 + MICHFailure4

+ ~!Global("X#MICHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @2196 + MICHSuccess
+ ~!Global("X#MICHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @2196 + MICHFailure1

+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @2196 + MICHSuccess
+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @2196 + MICHFailure1
+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @2196 + MICHFailure2
+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @2196 + MICHFailure3
+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @2196 + MICHFailure4

+ ~!Global("X#MICHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @2197 + MICHSuccess
+ ~!Global("X#MICHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @2197 + MICHFailure2

+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @2197 + MICHSuccess
+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @2197 + MICHFailure1
+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @2197 + MICHFailure2
+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @2197 + MICHFailure3
+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @2197 + MICHFailure4

+ ~!Global("X#MICHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @2198 + MICHSuccess
+ ~!Global("X#MICHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @2198 + MICHFailure3

+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @2198 + MICHSuccess
+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @2198 + MICHFailure1
+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @2198 + MICHFailure3
+ ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @2198 + MICHFailure2
 + ~!Global("X#MICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @2198 + MICHFailure4

+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") !AreaType(DUNGEON) !HPPercentLT("minsc",75) RandomNum(4,1)~ + @2199 + X#MiThoughts1
+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") !AreaType(DUNGEON) !HPPercentLT("minsc",75) RandomNum(4,2)~ + @2199 + X#MiThoughts2
+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") !AreaType(DUNGEON) !HPPercentLT("minsc",75) RandomNum(4,3)~ + @2199 + X#MiThoughts3
+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") !AreaType(DUNGEON) !HPPercentLT("minsc",75) RandomNum(4,4)~ + @2199 + X#MiThoughts4

+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") AreaType(DUNGEON) !HPPercentLT("minsc",75) RandomNum(5,1)~ + @2199 + X#MiThoughts1
+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") AreaType(DUNGEON) !HPPercentLT("minsc",75) RandomNum(5,2)~ + @2199 + X#MiThoughts2
+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") AreaType(DUNGEON) !HPPercentLT("minsc",75) RandomNum(5,3)~ + @2199 + X#MiThoughts3
+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") AreaType(DUNGEON) !HPPercentLT("minsc",75) RandomNum(5,4)~ + @2199 + X#MiThoughts4
+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") AreaType(DUNGEON) !HPPercentLT("minsc",75) RandomNum(5,4)~ + @2199 + X#MiThoughts5

+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") !AreaType(DUNGEON) HPPercentLT("minsc",75) RandomNum(5,1)~ + @2199 + X#MiThoughts1
+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") !AreaType(DUNGEON) HPPercentLT("minsc",75) RandomNum(5,2)~ + @2199 + X#MiThoughts2
+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") !AreaType(DUNGEON) HPPercentLT("minsc",75) RandomNum(5,3)~ + @2199 + X#MiThoughts3
+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") !AreaType(DUNGEON) HPPercentLT("minsc",75) RandomNum(5,4)~ + @2199 + X#MiThoughts4
+ ~!Dead("dynaheir") OR(2) !InParty("dynaheir") !InParty("edwin") !AreaType(DUNGEON) HPPercentLT("minsc",75) RandomNum(5,4)~ + @2199 + X#MiThoughts6

+ ~Dead("dynaheir") RandomNum(2,1)~ + @2199 + X#MiThoughts7
+ ~Dead("dynaheir") RandomNum(2,2)~ + @2199 + X#MiThoughts8

+ ~!Dead("dynaheir") InParty("dynaheir") InParty("edwin")~ + @2199 + X#MiThoughts9

+ ~OR(2) Global("HelpMinsc","GLOBAL",0) Global("HelpMinsc","GLOBAL",1)~ + @2200 + X#MiBoo1

+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_2%) RandomNum(2,1)~ + @2200 + X#MiBoo2
+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_2%) RandomNum(2,2)~ + @2200 + X#MiBoo3

+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_3%) RandomNum(2,1)~ + @2200 + X#MiBoo4
+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_3%) RandomNum(2,2)~ + @2200 + X#MiBoo5

+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_4%) RandomNum(2,1)~ + @2200 + X#MiBoo6
+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_4%) RandomNum(2,2)~ + @2200 + X#MiBoo7

+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(2,1)~ + @2200 + X#MiBoo8
+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(2,2)~ + @2200 + X#MiBoo9

+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(2,1)~ + @2200 + X#MiBoo10
+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(2,2)~ + @2200 + X#MiBoo11

+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,1)~ + @2200 + X#MiBoo12
+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,2)~ + @2200 + X#MiBoo13
+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,3)~ + @2200 + X#MiBoo14
+ ~GlobalGT("HelpMinsc","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,4)~ + @2200 + X#MiBoo15

+ ~RandomNum(8,1)~ + @2201 + X#MiAdvice1
+ ~RandomNum(8,2)~ + @2201 + X#MiAdvice2
+ ~RandomNum(8,3)~ + @2201 + X#MiAdvice3
+ ~RandomNum(8,4)~ + @2201 + X#MiAdvice4
+ ~RandomNum(8,5)~ + @2201 + X#MiAdvice5
+ ~RandomNum(8,6)~ + @2201 + X#MiAdvice6
+ ~RandomNum(8,7)~ + @2201 + X#MiAdvice7
+ ~RandomNum(8,8)~ + @2201 + X#MiAdvice8

+ ~%VoiceStrange%~ + @2202 + MinscVoice
END

/* SetPlayerSound entries for _MINSC.CRE... */
IF ~~ MinscVoice
SAY @11
IF ~~ THEN DO ~SetName(@2203)
SetPlayerSound(Myself,@2204,0)
SetPlayerSound(Myself,@2205,1)
SetPlayerSound(Myself,@2206,2)
SetPlayerSound(Myself,@2207,3)
SetPlayerSound(Myself,@2208,4)
SetPlayerSound(Myself,@2209,5)
SetPlayerSound(Myself,@2210,6)
SetPlayerSound(Myself,@2211,7)
SetPlayerSound(Myself,@2212,8)
SetPlayerSound(Myself,@2213,9)
SetPlayerSound(Myself,@2213,10)
SetPlayerSound(Myself,@2213,11)
SetPlayerSound(Myself,@2213,12)
SetPlayerSound(Myself,@2213,13)
SetPlayerSound(Myself,@2214,18)
SetPlayerSound(Myself,@2215,19)
SetPlayerSound(Myself,@2216,20)
SetPlayerSound(Myself,@2217,21)
SetPlayerSound(Myself,@2218,22)
SetPlayerSound(Myself,@2219,23)
SetPlayerSound(Myself,@2220,24)
SetPlayerSound(Myself,@2221,25)
SetPlayerSound(Myself,@2222,26)
SetPlayerSound(Myself,@2223,27)
SetPlayerSound(Myself,@2224,28)
SetPlayerSound(Myself,@2222,29)
SetPlayerSound(Myself,@2223,30)
SetPlayerSound(Myself,@2224,31)
SetPlayerSound(Myself,@2225,32)
SetPlayerSound(Myself,@2226,33)
SetPlayerSound(Myself,@2227,34)
SetPlayerSound(Myself,@2225,35)
SetPlayerSound(Myself,@2226,36)
SetPlayerSound(Myself,@2227,37)
SetPlayerSound(Myself,@2225,38)
SetPlayerSound(Myself,@2228,39)
SetPlayerSound(Myself,@2229,40)
SetPlayerSound(Myself,@2230,41)
SetPlayerSound(Myself,@2231,42)
SetPlayerSound(Myself,@2232,43)
SetPlayerSound(Myself,@2233,44)
SetPlayerSound(Myself,@2234,45)
SetPlayerSound(Myself,@2235,47)
SetPlayerSound(Myself,@2236,53)
SetPlayerSound(Myself,@2237,54)
SetPlayerSound(Myself,@2238,58)
SetPlayerSound(Myself,@2239,59)
SetPlayerSound(Myself,@2240,60)
SetPlayerSound(Myself,@2222,62)
SetPlayerSound(Myself,@2222,63)
SetPlayerSound(Myself,@2223,64)
SetPlayerSound(Myself,@2241,74)~ EXIT
END

IF ~~ X#MiAdvice1
SAY @2242
IF ~~ THEN EXIT
END

IF ~~ X#MiAdvice2
SAY @2243
IF ~~ THEN EXIT
END

IF ~~ X#MiAdvice3
SAY @2244
IF ~~ THEN EXIT
END

IF ~~ X#MiAdvice4
SAY @2245
IF ~~ THEN EXIT
END

IF ~~ X#MiAdvice5
SAY @2246
IF ~~ THEN EXIT
END

IF ~~ X#MiAdvice6
SAY @2247
IF ~~ THEN EXIT
END

IF ~~ X#MiAdvice7
SAY @2248
IF ~~ THEN EXIT
END

IF ~~ X#MiAdvice8
SAY @2249
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo1
SAY @2250
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo2
SAY @2251
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo3
SAY @2252
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo4
SAY @2253
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo5
SAY @2254
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo6
SAY @2255
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo7
SAY @2256
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo8
SAY @2257
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo9
SAY @2258
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo10
SAY @2259
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo11
SAY @2260
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo12
SAY @2261
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo13
SAY @2262
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo14
SAY @2263
IF ~~ THEN EXIT
END

IF ~~ X#MiBoo15
SAY @2264
IF ~~ THEN EXIT
END

IF ~~ X#MiThoughts1
SAY @2265
IF ~~ THEN EXIT
END

IF ~~ X#MiThoughts2
SAY @2266
IF ~~ THEN EXIT
END

IF ~~ X#MiThoughts3
SAY @2267
IF ~~ THEN EXIT

END

IF ~~ X#MiThoughts4
SAY @2268
IF ~~ THEN EXIT
END

IF ~~ X#MiThoughts5
SAY @2269
IF ~~ THEN EXIT
END

IF ~~ X#MiThoughts6
SAY @2270
IF ~~ THEN EXIT
END

IF ~~ X#MiThoughts7
SAY @2271
IF ~~ THEN EXIT
END

IF ~~ X#MiThoughts8
SAY @2272
IF ~~ THEN EXIT
END

IF ~~ X#MiThoughts9
SAY @2273
IF ~~ THEN EXIT
END

IF ~~ MICHSuccess
SAY @2274
IF ~~ THEN DO ~SetGlobal("X#MICHdone","GLOBAL",1)~ EXIT
END

IF ~~ MICHFailure1
SAY @2275
IF ~~ THEN EXIT
END

IF ~~ MICHFailure2
SAY @2276
IF ~~ THEN EXIT
END

IF ~~ MICHFailure3
SAY @2277
IF ~~ THEN EXIT
END

IF ~~ MICHFailure4
SAY @2278
IF ~~ THEN EXIT
END

END

APPEND ~%MONTARON_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN MOCH
SAY @2279
++ @2280 EXIT

+ ~Global("X#MOCHdone","GLOBAL",1) RandomNum(4,1)~ + @2281 + MOCHFailure1
+ ~Global("X#MOCHdone","GLOBAL",1) RandomNum(4,2)~ + @2281 + MOCHFailure2
+ ~Global("X#MOCHdone","GLOBAL",1) RandomNum(4,3)~ + @2281 + MOCHFailure3
+ ~Global("X#MOCHdone","GLOBAL",1) RandomNum(4,4)~ + @2281 + MOCHFailure4

+ ~!Global("X#MOCHdone","GLOBAL",1) RandomNum(5,1)~ + @2282 + MOCHSuccess
+ ~!Global("X#MOCHdone","GLOBAL",1) RandomNum(5,2)~ + @2282 + MOCHFailure1
+ ~!Global("X#MOCHdone","GLOBAL",1) RandomNum(5,3)~ + @2282 + MOCHFailure2
+ ~!Global("X#MOCHdone","GLOBAL",1) RandomNum(5,4)~ + @2282 + MOCHFailure3
+ ~!Global("X#MOCHdone","GLOBAL",1) RandomNum(5,5)~ + @2282 + MOCHFailure4

+ ~!Global("X#MOCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @2283 + MOCHSuccess
+ ~!Global("X#MOCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @2283 + MOCHFailure1

+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @2283 + MOCHSuccess
+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @2283 + MOCHFailure1
+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @2283 + MOCHFailure2
+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @2283 + MOCHFailure3
+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @2283 + MOCHFailure4

+ ~!Global("X#MOCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @2284 + MOCHSuccess
+ ~!Global("X#MOCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @2284 + MOCHFailure2

+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @2284 + MOCHSuccess
+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @2284 + MOCHFailure1
+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @2284 + MOCHFailure2
+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @2284 + MOCHFailure3
+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @2284 + MOCHFailure4

+ ~!Global("X#MOCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @2285 + MOCHSuccess
+ ~!Global("X#MOCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @2285 + MOCHFailure3

+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @2285 + MOCHSuccess
+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @2285 + MOCHFailure1
+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @2285 + MOCHFailure3
+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @2285 + MOCHFailure2
+ ~!Global("X#MOCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @2285 + MOCHFailure4

+ ~!Dead("sarevok") RandomNum(5,1) !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2286 + X#MoWrong1
+ ~!Dead("sarevok") RandomNum(5,2) !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2286 + X#MoWrong2
+ ~!Dead("sarevok") RandomNum(5,3) !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2286 + X#MoWrong3
+ ~!Dead("sarevok") RandomNum(5,4) !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2286 + X#MoWrong4
+ ~!Dead("sarevok") RandomNum(5,5) !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2286 + X#MoWrong5

+ ~!Dead("sarevok") HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2286 + X#MoWrong6
+ ~!Dead("sarevok") !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2286 + X#MoWrong7
+ ~!Dead("sarevok") !HPPercentLT("montaron",75) OR(2) AreaCheck("%IsleofBalduranS%") AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2286 + X#MoWrong8

+ ~Dead("sarevok") !AreaCheck("%Undercity_TempleofBhaal%")~ + @2286 + X#MoWrong9

+ ~!Dead("sarevok") RandomNum(6,1) !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2287 + X#MoSuggestion1
+ ~!Dead("sarevok") RandomNum(6,2) !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2287 + X#MoSuggestion2
+ ~!Dead("sarevok") RandomNum(6,3) !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2287 + X#MoSuggestion3
+ ~!Dead("sarevok") RandomNum(6,4) !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2287 + X#MoSuggestion4
+ ~!Dead("sarevok") RandomNum(6,5) !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2287 + X#MoSuggestion5
+ ~!Dead("sarevok") RandomNum(6,6) !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2287 + X#MoSuggestion9

+ ~!Dead("sarevok") HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2287 + X#MoSuggestion6
+ ~!Dead("sarevok") !HPPercentLT("montaron",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2287 + X#MoSuggestion7
+ ~!Dead("sarevok") !HPPercentLT("montaron",75) OR(2) AreaCheck("%IsleofBalduranS%") AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2287 + X#MoSuggestion8

+ ~%VoiceStrange%~ + @2288 + MontaronVoice
END

/* SetPlayerSound entries for _MONTAR.CRE... */
IF ~~ MontaronVoice
SAY @11
IF ~~ THEN DO ~SetName(@2289)
SetPlayerSound(Myself,@2290,0)
SetPlayerSound(Myself,@2291,1)
SetPlayerSound(Myself,@2292,2)
SetPlayerSound(Myself,@2293,3)
SetPlayerSound(Myself,@2294,4)
SetPlayerSound(Myself,@2295,5)
SetPlayerSound(Myself,@2296,6)
SetPlayerSound(Myself,@2297,7)
SetPlayerSound(Myself,@2298,8)
SetPlayerSound(Myself,@2299,9)
SetPlayerSound(Myself,@2299,10)
SetPlayerSound(Myself,@2299,11)
SetPlayerSound(Myself,@2299,12)
SetPlayerSound(Myself,@2299,13)
SetPlayerSound(Myself,@2300,18)
SetPlayerSound(Myself,@2301,19)
SetPlayerSound(Myself,@2302,20)
SetPlayerSound(Myself,@2303,21)
SetPlayerSound(Myself,@2304,22)
SetPlayerSound(Myself,@2305,23)
SetPlayerSound(Myself,@2306,24)
SetPlayerSound(Myself,@2307,25)
SetPlayerSound(Myself,@2308,26)
SetPlayerSound(Myself,@2309,27)
SetPlayerSound(Myself,@2310,28)
SetPlayerSound(Myself,@2308,29)
SetPlayerSound(Myself,@2309,30)
SetPlayerSound(Myself,@2310,31)
SetPlayerSound(Myself,@2311,32)
SetPlayerSound(Myself,@2312,33)
SetPlayerSound(Myself,@2313,34)
SetPlayerSound(Myself,@2311,35)
SetPlayerSound(Myself,@2312,36)
SetPlayerSound(Myself,@2313,37)
SetPlayerSound(Myself,@2311,38)
SetPlayerSound(Myself,@2314,39)
SetPlayerSound(Myself,@2315,40)
SetPlayerSound(Myself,@2316,41)
SetPlayerSound(Myself,@2317,42)
SetPlayerSound(Myself,@2318,43)
SetPlayerSound(Myself,@2319,44)
SetPlayerSound(Myself,@2320,45)
SetPlayerSound(Myself,@2321,46)
SetPlayerSound(Myself,@2322,53)
SetPlayerSound(Myself,@2323,54)
SetPlayerSound(Myself,@2324,55)
SetPlayerSound(Myself,@2325,58)
SetPlayerSound(Myself,@2326,59)
SetPlayerSound(Myself,@2308,62)
SetPlayerSound(Myself,@2308,63)
SetPlayerSound(Myself,@2309,64)
SetPlayerSound(Myself,@2327,74)~ EXIT
END

IF ~~ X#MoSuggestion1
SAY @2328
IF ~~ THEN EXIT
END

IF ~~ X#MoSuggestion2
SAY @2329
IF ~~ THEN EXIT
END

IF ~~ X#MoSuggestion3
SAY @2330
IF ~~ THEN EXIT
END

IF ~~ X#MoSuggestion4
SAY @2331
IF ~~ THEN EXIT
END

IF ~~ X#MoSuggestion5
SAY @2332
IF ~~ THEN EXIT
END

IF ~~ X#MoSuggestion6
SAY @2333
IF ~~ THEN EXIT
END

IF ~~ X#MoSuggestion9
SAY @2334
IF ~~ THEN EXIT
END

IF ~~ X#MoSuggestion8
SAY @2335
IF ~~ THEN EXIT
END

IF ~~ X#MoSuggestion7
SAY @2336
IF ~~ THEN EXIT
END

IF ~~ X#MoWrong1
SAY @2337
IF ~~ THEN EXIT
END

IF ~~ X#MoWrong2
SAY @2338
IF ~~ THEN EXIT
END

IF ~~ X#MoWrong3
SAY @2339
IF ~~ THEN EXIT
END

IF ~~ X#MoWrong4
SAY @2340
IF ~~ THEN EXIT
END

IF ~~ X#MoWrong5
SAY @2341
IF ~~ THEN EXIT
END

IF ~~ X#MoWrong6
SAY @2342
IF ~~ THEN EXIT
END

IF ~~ X#MoWrong7
SAY @2343
IF ~~ THEN EXIT
END

IF ~~ X#MoWrong8
SAY @2344
IF ~~ THEN EXIT
END

IF ~~ X#MoWrong9
SAY @2345
IF ~~ THEN EXIT
END

IF ~~ MOCHSuccess
SAY @2346
IF ~~ THEN DO ~SetGlobal("X#MOCHdone","GLOBAL",1)~ EXIT
END

IF ~~ MOCHFailure1
SAY @2347
IF ~~ THEN EXIT
END

IF ~~ MOCHFailure2
SAY @2348 
IF ~~ THEN EXIT
END

IF ~~ MOCHFailure3
SAY @2347
IF ~~ THEN EXIT
END

IF ~~ MOCHFailure4
SAY @2348
IF ~~ THEN EXIT
END

END

APPEND ~%QUAYLE_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN QUCH
SAY @2349
++ @2350 EXIT

+ ~Global("X#QUCHdone","GLOBAL",1) RandomNum(4,1)~ + @2351 + QUCHFailure1
+ ~Global("X#QUCHdone","GLOBAL",1) RandomNum(4,2)~ + @2351 + QUCHFailure2
+ ~Global("X#QUCHdone","GLOBAL",1) RandomNum(4,3)~ + @2351 + QUCHFailure3
+ ~Global("X#QUCHdone","GLOBAL",1) RandomNum(4,4)~ + @2351 + QUCHFailure4


+ ~!Global("X#QUCHdone","GLOBAL",1) RandomNum(5,1)~ + @2352 + QUCHSuccess
+ ~!Global("X#QUCHdone","GLOBAL",1) RandomNum(5,2)~ + @2352 + QUCHFailure1
+ ~!Global("X#QUCHdone","GLOBAL",1) RandomNum(5,3)~ + @2352 + QUCHFailure2
+ ~!Global("X#QUCHdone","GLOBAL",1) RandomNum(5,4)~ + @2352 + QUCHFailure3
+ ~!Global("X#QUCHdone","GLOBAL",1) RandomNum(5,5)~ + @2352 + QUCHFailure4

+ ~!Global("X#QUCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @2353 + QUCHSuccess
+ ~!Global("X#QUCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @2353 + QUCHFailure1

+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @2353 + QUCHSuccess
+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @2353 + QUCHFailure1
+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @2353 + QUCHFailure2
+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @2353 + QUCHFailure3
+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @2353 + QUCHFailure4

+ ~!Global("X#QUCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @2354 + QUCHSuccess
+ ~!Global("X#QUCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @2354 + QUCHFailure2

+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @2354 + QUCHSuccess
+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @2354 + QUCHFailure1
+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @2354 + QUCHFailure2
+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @2354 + QUCHFailure3
+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @2354 + QUCHFailure4

+ ~!Global("X#QUCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @2355 + QUCHSuccess
+ ~!Global("X#QUCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @2355 + QUCHFailure3

+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @2355 + QUCHSuccess
+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @2355 + QUCHFailure1
+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @2355 + QUCHFailure3
+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @2355 + QUCHFailure2
+ ~!Global("X#QUCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @2355 + QUCHFailure4

+ ~RandomNum(8,1)~ + @2356 + QuaylePID1.1
+ ~RandomNum(8,2)~ + @2356 + QuaylePID1.2
+ ~RandomNum(8,3)~ + @2356 + QuaylePID1.3
+ ~RandomNum(8,4)~ + @2356 + QuaylePID1.4
+ ~RandomNum(8,5)~ + @2356 + QuaylePID1.5
+ ~RandomNum(8,6)~ + @2356 + QuaylePID1.6
+ ~RandomNum(8,7)~ + @2356 + QuaylePID1.7
+ ~RandomNum(8,8)~ + @2356 + QuaylePID1.8

+ ~RandomNum(8,1)~ + @2357 + QuaylePID2.1
+ ~RandomNum(8,2)~ + @2357 + QuaylePID2.2
+ ~RandomNum(8,3)~ + @2357 + QuaylePID2.3
+ ~RandomNum(8,4)~ + @2357 + QuaylePID2.4
+ ~RandomNum(8,5)~ + @2357 + QuaylePID2.5
+ ~RandomNum(8,6)~ + @2357 + QuaylePID2.6
+ ~RandomNum(8,7)~ + @2357 + QuaylePID2.7
+ ~RandomNum(8,8)~ + @2357 + QuaylePID2.8

+ ~RandomNum(8,1)~ + @2358 + QuaylePID3.1
+ ~RandomNum(8,2)~ + @2358 + QuaylePID3.2
+ ~RandomNum(8,3)~ + @2358 + QuaylePID3.3
+ ~RandomNum(8,4)~ + @2358 + QuaylePID3.4
+ ~RandomNum(8,5)~ + @2358 + QuaylePID3.5
+ ~RandomNum(8,6)~ + @2358 + QuaylePID3.6
+ ~RandomNum(8,7)~ + @2358 + QuaylePID3.7
+ ~RandomNum(8,8)~ + @2358 + QuaylePID3.8

+ ~%VoiceStrange%~ + @2359 + QuayleVoice
END

/* SetPlayerSound entries for _QUAYLE.CRE... */
IF ~~ QuayleVoice
SAY @11
IF ~~ THEN DO ~SetName(@2360)
SetPlayerSound(Myself,@2361,0)
SetPlayerSound(Myself,@2362,1)
SetPlayerSound(Myself,@2363,2)
SetPlayerSound(Myself,@2364,3)
SetPlayerSound(Myself,@2365,4)
SetPlayerSound(Myself,@2366,5)
SetPlayerSound(Myself,@2367,6)
SetPlayerSound(Myself,@2368,7)
SetPlayerSound(Myself,@2369,8)
SetPlayerSound(Myself,@2370,9)
SetPlayerSound(Myself,@2370,10)
SetPlayerSound(Myself,@2370,11)
SetPlayerSound(Myself,@2370,12)
SetPlayerSound(Myself,@2370,13)
SetPlayerSound(Myself,@2371,18)
SetPlayerSound(Myself,@2372,19)
SetPlayerSound(Myself,@2373,20)
SetPlayerSound(Myself,@2374,21)
SetPlayerSound(Myself,@2375,22)
SetPlayerSound(Myself,@2376,23)
SetPlayerSound(Myself,@2377,24)
SetPlayerSound(Myself,@2378,25)
SetPlayerSound(Myself,@2379,26)
SetPlayerSound(Myself,@2380,27)
SetPlayerSound(Myself,@2381,28)
SetPlayerSound(Myself,@2379,29)
SetPlayerSound(Myself,@2380,30)
SetPlayerSound(Myself,@2381,31)
SetPlayerSound(Myself,@2382,32)
SetPlayerSound(Myself,@2383,33)
SetPlayerSound(Myself,@2384,34)
SetPlayerSound(Myself,@2382,35)
SetPlayerSound(Myself,@2383,36)
SetPlayerSound(Myself,@2384,37)
SetPlayerSound(Myself,@2382,38)
SetPlayerSound(Myself,@2385,39)
SetPlayerSound(Myself,@2386,40)
SetPlayerSound(Myself,@2387,41)
SetPlayerSound(Myself,@2388,42)
SetPlayerSound(Myself,@2389,43)
SetPlayerSound(Myself,@2390,44)
SetPlayerSound(Myself,@2391,45)
SetPlayerSound(Myself,@2392,47)
SetPlayerSound(Myself,@2393,53)
SetPlayerSound(Myself,@2394,54)
SetPlayerSound(Myself,@2395,58)
SetPlayerSound(Myself,@2396,59)
SetPlayerSound(Myself,@2397,60)
SetPlayerSound(Myself,@2379,62)
SetPlayerSound(Myself,@2379,63)
SetPlayerSound(Myself,@2380,64)
SetPlayerSound(Myself,@2398,74)~ EXIT
END

IF ~~ QuaylePID1.1
SAY @2399
IF ~~ EXIT
END

IF ~~ QuaylePID1.2
SAY @2400
IF ~~ EXIT
END

IF ~~ QuaylePID1.3
SAY @2401
IF ~~ EXIT
END

IF ~~ QuaylePID1.4
SAY @2402
IF ~~ EXIT
END

IF ~~ QuaylePID1.5
SAY @2403
IF ~~ EXIT
END

IF ~~ QuaylePID1.6
SAY @2404
IF ~~ EXIT
END

IF ~~ QuaylePID1.7
SAY @2405
IF ~~ EXIT
END

IF ~~ QuaylePID1.8
SAY @2406
IF ~~ EXIT
END

IF ~~ QuaylePID2.1
SAY @2407
IF ~~ EXIT
END

IF ~~ QuaylePID2.2
SAY @2408
IF ~~ EXIT
END

IF ~~ QuaylePID2.3
SAY @2409
IF ~~ EXIT
END

IF ~~ QuaylePID2.4
SAY @2410
IF ~~ EXIT
END

IF ~~ QuaylePID2.5
SAY @2411
IF ~~ EXIT
END

IF ~~ QuaylePID2.6
SAY @2412
IF ~~ EXIT
END

IF ~~ QuaylePID2.7
SAY @2413
IF ~~ EXIT
END

IF ~~ QuaylePID2.8
SAY @2414
IF ~~ EXIT
END

IF ~~ QuaylePID3.1
SAY @2415
IF ~~ EXIT
END

IF ~~ QuaylePID3.2
SAY @2416
IF ~~ EXIT
END

IF ~~ QuaylePID3.3
SAY @2417
IF ~~ EXIT
END

IF ~~ QuaylePID3.4
SAY @2418
IF ~~ EXIT
END

IF ~~ QuaylePID3.5
SAY @2419
IF ~~ EXIT
END

IF ~~ QuaylePID3.6
SAY @2420
IF ~~ EXIT
END

IF ~~ QuaylePID3.7
SAY @2421
IF ~~ EXIT
END

IF ~~ QuaylePID3.8
SAY @2422
IF ~~ EXIT
END

IF ~~ QUCHSuccess
SAY @2423
= @2424
= @2425
IF ~~ THEN DO ~SetGlobal("X#QUCHdone","GLOBAL",1)~ EXIT
END

IF ~~ QUCHFailure1
SAY @2426
IF ~~ THEN EXIT
END

IF ~~ QUCHFailure2
SAY @2427
IF ~~ THEN EXIT
END

IF ~~ QUCHFailure3
SAY @2426
IF ~~ THEN EXIT
END

IF ~~ QUCHFailure4
SAY @2427
IF ~~ THEN EXIT
END

END

APPEND ~%TIAX_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN TICH
SAY @2428
++ @2429 EXIT

+ ~Global("X#TICHdone","GLOBAL",1) RandomNum(4,1)~ + @2430 + TICHFailure1
+ ~Global("X#TICHdone","GLOBAL",1) RandomNum(4,2)~ + @2430 + TICHFailure2
+ ~Global("X#TICHdone","GLOBAL",1) RandomNum(4,3)~ + @2430 + TICHFailure3
+ ~Global("X#TICHdone","GLOBAL",1) RandomNum(4,4)~ + @2430 + TICHFailure4

+ ~!Global("X#TICHdone","GLOBAL",1) RandomNum(5,1)~ + @2431 + TICHSuccess
+ ~!Global("X#TICHdone","GLOBAL",1) RandomNum(5,2)~ + @2431 + TICHFailure1
+ ~!Global("X#TICHdone","GLOBAL",1) RandomNum(5,3)~ + @2431 + TICHFailure2
+ ~!Global("X#TICHdone","GLOBAL",1) RandomNum(5,4)~ + @2431 + TICHFailure3
+ ~!Global("X#TICHdone","GLOBAL",1) RandomNum(5,5)~ + @2431 + TICHFailure4

+ ~!Global("X#TICHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @2432 + TICHSuccess
+ ~!Global("X#TICHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @2432 + TICHFailure1

+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @2432 + TICHSuccess
+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @2432 + TICHFailure1
+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @2432 + TICHFailure2
+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @2432 + TICHFailure3
+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @2432 + TICHFailure4

+ ~!Global("X#TICHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @2433 + TICHSuccess
+ ~!Global("X#TICHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @2433 + TICHFailure2

+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @2433 + TICHSuccess
+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @2433 + TICHFailure1
+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @2433 + TICHFailure2
+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @2433 + TICHFailure3
+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @2433 + TICHFailure4

+ ~!Global("X#TICHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @2434 + TICHSuccess
+ ~!Global("X#TICHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @2434 + TICHFailure3

+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @2434 + TICHSuccess
+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @2434 + TICHFailure1
+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @2434 + TICHFailure3
+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @2434 + TICHFailure2
+ ~!Global("X#TICHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @2434 + TICHFailure4

+ ~RandomNum(8,1)~ + @2435 + TiaxPID1.1
+ ~RandomNum(8,2)~ + @2435 + TiaxPID1.2
+ ~RandomNum(8,3)~ + @2435 + TiaxPID1.3
+ ~RandomNum(8,4)~ + @2435 + TiaxPID1.4
+ ~RandomNum(8,5)~ + @2435 + TiaxPID1.5
+ ~RandomNum(8,6)~ + @2435 + TiaxPID1.6
+ ~RandomNum(8,7)~ + @2435 + TiaxPID1.7
+ ~RandomNum(8,8)~ + @2435 + TiaxPID1.8

+ ~RandomNum(8,1)~ + @2436 + TiaxPID2.1
+ ~RandomNum(8,2)~ + @2436 + TiaxPID2.2
+ ~RandomNum(8,3)~ + @2436 + TiaxPID2.3
+ ~RandomNum(8,4)~ + @2436 + TiaxPID2.4
+ ~RandomNum(8,5)~ + @2436 + TiaxPID2.5
+ ~RandomNum(8,6)~ + @2436 + TiaxPID2.6
+ ~RandomNum(8,7)~ + @2436 + TiaxPID2.7
+ ~RandomNum(8,8)~ + @2436 + TiaxPID2.8

+ ~RandomNum(8,1)~ + @2437 + TiaxPID3.1
+ ~RandomNum(8,2)~ + @2437 + TiaxPID3.2
+ ~RandomNum(8,3)~ + @2437 + TiaxPID3.3
+ ~RandomNum(8,4)~ + @2437 + TiaxPID3.4
+ ~RandomNum(8,5)~ + @2437 + TiaxPID3.5
+ ~RandomNum(8,6)~ + @2437 + TiaxPID3.6
+ ~RandomNum(8,7)~ + @2437 + TiaxPID3.7
+ ~RandomNum(8,8)~ + @2437 + TiaxPID3.8

+ ~%VoiceStrange%~ + @2438 + TiaxVoice
END
//>>>>NOTE: MODIFYING OR CHANGING THESE ENTRIES IN ANY WAY WILL RESULT IN NEW STRINGS BEING ADDED TO DIALOG.TLK
//            INSTEAD OF THE DESIRED REPAIR. PLEASE USE CAUTION IN MASS TEXT PROCESSING OF X#PCINIT.D WHEN IN PLACE!
//              THE TYPOS/SPACING ERRORS MUST REMAIN!

//SetPlayerSound entries for _TIAX.CRE...
IF ~~ TiaxVoice
SAY @11
IF ~~ THEN DO ~SetName(@2439)
SetPlayerSound(Myself,@2440,0)
SetPlayerSound(Myself,@2441,1)
SetPlayerSound(Myself,@2442,2)
SetPlayerSound(Myself,@2443,3)
SetPlayerSound(Myself,@2444,4)
SetPlayerSound(Myself,@2445,5)
SetPlayerSound(Myself,@2446,6)
SetPlayerSound(Myself,@2447,7)
SetPlayerSound(Myself,@2448,8)
SetPlayerSound(Myself,@2449,9)
SetPlayerSound(Myself,@2449,10)
SetPlayerSound(Myself,@2449,11)
SetPlayerSound(Myself,@2449,12)
SetPlayerSound(Myself,@2449,13)
SetPlayerSound(Myself,@2450,18)
SetPlayerSound(Myself,@2451,19)
SetPlayerSound(Myself,@2452,20)
SetPlayerSound(Myself,@2453,21)
SetPlayerSound(Myself,@2454,22)
SetPlayerSound(Myself,@2455,23)
SetPlayerSound(Myself,@2456,24)
SetPlayerSound(Myself,@2457,25)
SetPlayerSound(Myself,@2458,26)
SetPlayerSound(Myself,@2459,27)
SetPlayerSound(Myself,@2460,28)
SetPlayerSound(Myself,@2458,29)
SetPlayerSound(Myself,@2459,30)
SetPlayerSound(Myself,@2460,31)
SetPlayerSound(Myself,@2461,32)
SetPlayerSound(Myself,@2462,33)
SetPlayerSound(Myself,@2463,34)
SetPlayerSound(Myself,@2461,35)
SetPlayerSound(Myself,@2462,36)
SetPlayerSound(Myself,@2463,37)
SetPlayerSound(Myself,@2461,38)
SetPlayerSound(Myself,@2464,39)
SetPlayerSound(Myself,@2465,40)
SetPlayerSound(Myself,@2466,41)
SetPlayerSound(Myself,@2467,42)
SetPlayerSound(Myself,@2468,43)
SetPlayerSound(Myself,@2469,44)
SetPlayerSound(Myself,@2470,50)
SetPlayerSound(Myself,@2471,51)
SetPlayerSound(Myself,@2472,53)
SetPlayerSound(Myself,@2473,54)
SetPlayerSound(Myself,@2474,58)
SetPlayerSound(Myself,@2475,59)
SetPlayerSound(Myself,@2476,60)
SetPlayerSound(Myself,@2458,62)
SetPlayerSound(Myself,@2458,63)
SetPlayerSound(Myself,@2459,64)
SetPlayerSound(Myself,@2477,74)~ EXIT
END

IF ~~ TiaxPID1.1
SAY @2478
IF ~~ EXIT
END

IF ~~ TiaxPID1.2
SAY @2479
IF ~~ EXIT
END

IF ~~ TiaxPID1.3
SAY @2480
IF ~~ EXIT
END

IF ~~ TiaxPID1.4
SAY @2481
IF ~~ EXIT
END

IF ~~ TiaxPID1.5
SAY @2482
IF ~~ EXIT
END

IF ~~ TiaxPID1.6
SAY @2483
IF ~~ EXIT
END

IF ~~ TiaxPID1.7
SAY @2484
IF ~~ EXIT
END

IF ~~ TiaxPID1.8
SAY @2485
IF ~~ EXIT
END

IF ~~ TiaxPID2.1
SAY @2486
IF ~~ EXIT
END

IF ~~ TiaxPID2.2
SAY @2487
IF ~~ EXIT
END

IF ~~ TiaxPID2.3
SAY @2488
IF ~~ EXIT
END

IF ~~ TiaxPID2.4
SAY @2489
IF ~~ EXIT
END

IF ~~ TiaxPID2.5
SAY @2490
IF ~~ EXIT
END

IF ~~ TiaxPID2.6
SAY @2491
IF ~~ EXIT
END

IF ~~ TiaxPID2.7
SAY @2492
IF ~~ EXIT
END

IF ~~ TiaxPID2.8
SAY @2493
= @2494
IF ~~ EXIT
END

IF ~~ TiaxPID3.1
SAY @2495
IF ~~ EXIT
END

IF ~~ TiaxPID3.2
SAY @2496
IF ~~ EXIT
END

IF ~~ TiaxPID3.3
SAY @2497
IF ~~ EXIT
END

IF ~~ TiaxPID3.4
SAY @2498
IF ~~ EXIT
END

IF ~~ TiaxPID3.5
SAY @2499
IF ~~ EXIT
END

IF ~~ TiaxPID3.6
SAY @2500
IF ~~ EXIT
END

IF ~~ TiaxPID3.7
SAY @2501
IF ~~ EXIT
END

IF ~~ TiaxPID3.8
SAY @2502
IF ~~ EXIT
END

IF ~~ TICHSuccess
SAY @2503
= @2504
= @2505
= @2506
IF ~~ THEN DO ~SetGlobal("X#TICHdone","GLOBAL",1)~ EXIT
END

IF ~~ TICHFailure1
SAY @2507
IF ~~ THEN EXIT
END

IF ~~ TICHFailure2
SAY @2508
IF ~~ THEN EXIT
END

IF ~~ TICHFailure3
SAY @2509
IF ~~ THEN EXIT
END

IF ~~ TICHFailure4
SAY @2510
IF ~~ THEN EXIT
END

END

APPEND ~%XAN_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR% !Global("X#XaRomanceInactive","GLOBAL",1) OR(2) Global("X#XaRomanceActive","GLOBAL",1) Global("X#XaRomanceActive","GLOBAL",2) GlobalGT("X#XALoveTalk","GLOBAL",7) GlobalLT("X#XALoveTalk","GLOBAL",28)~ THEN BEGIN XAFlirtEarly
SAY @2511

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2512 + XAFEHow1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2512 + XAFEHow2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2512 + XAFEHow3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2512 + XAFEHow4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2512 + XAFEHow5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2512 + XAFEHow6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2512 + XAFEHow7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2512 + XAFEHow8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2513 + XAFESmile1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2513 + XAFESmile2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2513 + XAFESmile3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2513 + XAFESmile4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2513 + XAFESmile5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2513 + XAFESmile6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2513 + XAFESmile7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2513 + XAFESmile8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2514 + XAFEHand1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2514 + XAFEHand2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2514 + XAFEHand3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2514 + XAFEHand4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2514 + XAFEHand5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2514 + XAFEHand6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2514 + XAFEHand7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2514 + XAFEHand8

+ ~Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,4)~ + @2515 + XAFECheerPaladin
+ ~Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,1)~ + @2515 + XAFECheer1
+ ~Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,2)~ + @2515 + XAFECheer2
+ ~Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,3)~ + @2515 + XAFECheer3

+ ~!Class(Player1,PALADIN_ALL) Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,4)~ + @2515 + XAFECheerMage
+ ~!Class(Player1,PALADIN_ALL) Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,1)~ + @2515 + XAFECheer1
+ ~!Class(Player1,PALADIN_ALL) Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,2)~ + @2515 + XAFECheer2
+ ~!Class(Player1,PALADIN_ALL) Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,3)~ + @2515 + XAFECheer3

+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,4)~ + @2515 + XAFECheerBard
+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,1)~ + @2515 + XAFECheer1
+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,2)~ + @2515 + XAFECheer2
+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) Class(Player1,BARD_ALL) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,3)~ + @2515 + XAFECheer3

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2516 + XAFESide1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2516 + XAFESide2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2516 + XAFESide3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2516 + XAFESide4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2516 + XAFESide5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2516 + XAFESide6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2516 + XAFESide7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2516 + XAFESide8

+ ~!Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) !CheckStatGT(Player1,18,CHR) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(5,1)~ + @2517 + XAFEKiss1
+ ~!Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) !CheckStatGT(Player1,18,CHR) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(5,2)~ + @2517 + XAFEKiss2
+ ~!Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) !CheckStatGT(Player1,18,CHR) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(5,3)~ + @2517 + XAFEKiss3
+ ~!Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) !CheckStatGT(Player1,18,CHR) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(5,4)~ + @2517 + XAFEKiss5
+ ~!Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) !CheckStatGT(Player1,18,CHR) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(5,5)~ + @2517 + XAFEKiss6

+ ~!Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) CheckStatGT(Player1,18,CHR) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(6,1)~ + @2517 + XAFEKiss1
+ ~!Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) CheckStatGT(Player1,18,CHR) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(6,2)~ + @2517 + XAFEKiss2
+ ~!Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) CheckStatGT(Player1,18,CHR) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(6,3)~ + @2517 + XAFEKiss3
+ ~!Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) CheckStatGT(Player1,18,CHR) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(6,4)~ + @2517 + XAFEKiss4
+ ~!Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) CheckStatGT(Player1,18,CHR) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(6,5)~ + @2517 + XAFEKiss5
+ ~!Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) CheckStatGT(Player1,18,CHR) Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(6,6)~ + @2517 + XAFEKiss6

+ ~Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) InParty("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,1)~ + @2517 + XAFEKiss1
+ ~Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) InParty("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,2)~ + @2517 + XAFEKiss2
+ ~Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) InParty("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,3)~ + @2517 + XAFEKiss3
+ ~Global("P#CoranMatch","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",1) InParty("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,4)~ + @2517 + XAFEKissCoran

+ ~!Global("P#CoranMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,1)~ + @2517 + XAFEKiss1
+ ~!Global("P#CoranMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,2)~ + @2517 + XAFEKiss2
+ ~!Global("P#CoranMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,3)~ + @2517 + XAFEKiss3
+ ~!Global("P#CoranMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,4)~ + @2517 + XAFEKissAjantis

+ ~Global("P#CoranMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) InParty("coran") InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(5,1)~ + @2517 + XAFEKiss1
+ ~Global("P#CoranMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) InParty("coran") InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(5,2)~ + @2517 + XAFEKiss2
+ ~Global("P#CoranMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) InParty("coran") InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(5,3)~ + @2517 + XAFEKiss3
+ ~Global("P#CoranMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) InParty("coran") InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(5,4)~ + @2517 + XAFEKissCoran
+ ~Global("P#CoranMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) InParty("coran") InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(5,5)~ + @2517 + XAFEKissAjantis


+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2518 + XAFEHug1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2518 + XAFEHug2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2518 + XAFEHug3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2518 + XAFEHug4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2518 + XAFEHug5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2518 + XAFEHug6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2518 + XAFEHug7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2518 + XAFEHug8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2519 + XAFEWaist1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2519 + XAFEWaist2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2519 + XAFEWaist3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2519 + XAFEWaist4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2519 + XAFEWaist5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2519 + XAFEWaist6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2519 + XAFEWaist7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2519 + XAFEWaist8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2520 + XAFECare1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2520 + XAFECare2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2520 + XAFECare3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2520 + XAFECare4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2520 + XAFECare5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2520 + XAFECare6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2520 + XAFECare7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2520 + XAFECare8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2521 + XAFEWho1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2521 + XAFEWho2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2521 + XAFEWho3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2521 + XAFEWho4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2521 + XAFEWho5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2521 + XAFEWho6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2521 + XAFEWho7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2521 + XAFEWho8

+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) InParty("eldoth") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,4)~ + @2515 + XAFECheerEldoth
+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) InParty("eldoth") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,1)~ + @2515 + XAFECheer1
+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) InParty("eldoth") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,2)~ + @2515 + XAFECheer2
+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) InParty("eldoth") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,3)~ + @2515 + XAFECheer3

+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,4)~ + @2515 + XAFECheerAjantis
+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,1)~ + @2515 + XAFECheer1
+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,2)~ + @2515 + XAFECheer2
+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(4,3)~ + @2515 + XAFECheer3

+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) !InParty("eldoth") !InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(3,1)~ + @2515 + XAFECheer1
+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) !InParty("eldoth") !InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(3,2)~ + @2515 + XAFECheer2
+ ~!Class(Player1,PALADIN_ALL) !Class(Player1,MAGE_ALL) !Class(Player1,BARD_ALL) !InParty("eldoth") !InParty("ajantis") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(3,3)~ + @2515 + XAFECheer3

+ ~GlobalLT("X#XALoveTalk","GLOBAL",26)~ + @2522 + XAFEFriends

+ ~Global("X#DisableXaFlirts","GLOBAL",0)~ + @2523 DO ~SetGlobal("X#DisableXaFlirts","GLOBAL",1)~ EXIT

++ @2524 EXIT

+ ~%VoiceStrange%~ + @2525 + XanVoice
END

/* SetPlayerSound entries for _XAN.CRE... */
IF ~~ XanVoice
SAY @11
IF ~~ THEN DO ~SetName(@2526)
SetPlayerSound(Myself,@2527,0)
SetPlayerSound(Myself,@2528,1)
SetPlayerSound(Myself,@2529,2)
SetPlayerSound(Myself,@2530,3)
SetPlayerSound(Myself,@2531,4)
SetPlayerSound(Myself,@2532,5)
SetPlayerSound(Myself,@2533,6)
SetPlayerSound(Myself,@2534,7)
SetPlayerSound(Myself,@2535,8)
SetPlayerSound(Myself,@2536,9)
SetPlayerSound(Myself,@2536,10)
SetPlayerSound(Myself,@2536,11)
SetPlayerSound(Myself,@2536,12)
SetPlayerSound(Myself,@2536,13)
SetPlayerSound(Myself,@2537,18)
SetPlayerSound(Myself,@2538,19)
SetPlayerSound(Myself,@2539,20)
SetPlayerSound(Myself,@2540,21)
SetPlayerSound(Myself,@2541,22)
SetPlayerSound(Myself,@2542,23)
SetPlayerSound(Myself,@2543,24)
SetPlayerSound(Myself,@2544,25)
SetPlayerSound(Myself,@2545,26)
SetPlayerSound(Myself,@2546,27)
SetPlayerSound(Myself,@2547,28)
SetPlayerSound(Myself,@2545,29)
SetPlayerSound(Myself,@2546,30)
SetPlayerSound(Myself,@2547,31)
SetPlayerSound(Myself,@2548,32)
SetPlayerSound(Myself,@2549,33)
SetPlayerSound(Myself,@2550,34)
SetPlayerSound(Myself,@2548,35)
SetPlayerSound(Myself,@2549,36)
SetPlayerSound(Myself,@2550,37)
SetPlayerSound(Myself,@2548,38)
SetPlayerSound(Myself,@2551,39)
SetPlayerSound(Myself,@2552,40)
SetPlayerSound(Myself,@2553,41)
SetPlayerSound(Myself,@2554,42)
SetPlayerSound(Myself,@2555,43)
SetPlayerSound(Myself,@2556,44)
SetPlayerSound(Myself,@2557,45)
SetPlayerSound(Myself,@2558,47)
SetPlayerSound(Myself,@2559,53)
SetPlayerSound(Myself,@2560,54)
SetPlayerSound(Myself,@2561,58)
SetPlayerSound(Myself,@2562,59)
SetPlayerSound(Myself,@2563,60)
SetPlayerSound(Myself,@2545,62)
SetPlayerSound(Myself,@2545,63)
SetPlayerSound(Myself,@2546,64)
SetPlayerSound(Myself,@2564,74)~ EXIT
END

IF ~~ XAFEWho5
SAY @2565
= @2566
IF ~~ THEN EXIT
END

IF ~~ XAFEWho6
SAY @2567
IF ~~ THEN EXIT
END

IF ~~ XAFEWho7
SAY @2568
IF ~~ THEN EXIT
END

IF ~~ XAFEWho8
SAY @2569
IF ~~ THEN EXIT
END

IF ~~ XAFECare5
SAY @2570
IF ~~ THEN EXIT
END

IF ~~ XAFECare6
SAY @2571
IF ~~ THEN EXIT
END

IF ~~ XAFECare7
SAY @2572
IF ~~ THEN EXIT
END

IF ~~ XAFECare8
SAY @2573
IF ~~ THEN EXIT
END

IF ~~ XAFEWaist5
SAY @2574
IF ~~ THEN EXIT
END

IF ~~ XAFEWaist6
SAY @2575
IF ~~ THEN EXIT
END

IF ~~ XAFEWaist7
SAY @2576
IF ~~ THEN EXIT
END

IF ~~ XAFEWaist8
SAY @2577
IF ~~ THEN EXIT
END

IF ~~ XAFEHug5
SAY @2578
IF ~~ THEN EXIT
END

IF ~~ XAFEHug6
SAY @2579
IF ~~ THEN EXIT
END

IF ~~ XAFEHug7
SAY @2580
IF ~~ THEN EXIT
END

IF ~~ XAFEHug8
SAY @2581
IF ~~ THEN EXIT
END

IF ~~ XAFEKiss5
SAY @2582
IF ~~ THEN EXIT
END

IF ~~ XAFEKiss6
SAY @2583
IF ~~ THEN EXIT
END

IF ~~ XAFEKissAjantis
SAY @2584
IF ~~ THEN EXIT
END

IF ~~ XAFEKissCoran
SAY @2585
IF ~~ THEN EXIT
END

IF ~~ XAFESide5
SAY @2586
IF ~~ THEN EXIT
END

IF ~~ XAFESide6
SAY @2587
IF ~~ THEN EXIT
END

IF ~~ XAFESide7
SAY @2588
IF ~~ THEN EXIT
END

IF ~~ XAFESide8
SAY @2589
IF ~~ THEN EXIT
END

IF ~~ XAFECheerBard
SAY @2590
IF ~~ THEN EXIT
END

IF ~~ XAFECheerMage
SAY @2591
IF ~~ THEN EXIT
END

IF ~~ XAFECheerPaladin
SAY @2592
IF ~~ THEN EXIT
END

IF ~~ XAFEHand5
SAY @2593
= @2594
IF ~~ THEN EXIT
END

IF ~~ XAFEHand6
SAY @2595
= @2596
IF ~~ THEN EXIT
END

IF ~~ XAFEHand7
SAY @2597
IF ~~ THEN EXIT
END

END

CHAIN ~%XAN_JOINED%~ XAFEHand8
@2598
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @2599
== ~%XAN_JOINED%~ @2600
EXIT


APPEND ~%XAN_JOINED%~

IF ~~ XAFESmile5
SAY @2601
IF ~~ THEN EXIT
END

IF ~~ XAFESmile6
SAY @2602
IF ~~ THEN EXIT
END

IF ~~ XAFESmile7
SAY @2603
IF ~~ THEN EXIT
END

IF ~~ XAFESmile8
SAY @2604
IF ~~ THEN EXIT
END


IF ~~ XAFEHow5
SAY @2605
IF ~~ THEN EXIT
END

IF ~~ XAFEHow6
SAY @2606
IF ~~ THEN EXIT
END

IF ~~ XAFEHow7
SAY @2607
IF ~~ THEN EXIT
END

IF ~~ XAFEHow8
SAY @2608
IF ~~ THEN EXIT
END

IF ~~ XAFEFriends
SAY @2609
IF ~~ THEN DO ~SetGlobal("X#XaRomanceInactive","GLOBAL",1)~ EXIT
END

IF ~~ XAFEWho1
SAY @2610
IF ~~ THEN EXIT
END

IF ~~ XAFEWho2
SAY @2611
IF ~~ THEN EXIT
END

IF ~~ XAFEWho3
SAY @2612
IF ~~ THEN EXIT
END

IF ~~ XAFEWho4
SAY @2613
IF ~~ THEN EXIT
END

IF ~~ XAFECare1
SAY @2614
IF ~~ THEN EXIT
END

IF ~~ XAFECare2
SAY @2615
IF ~~ THEN EXIT
END

IF ~~ XAFECare3
SAY @2616
=@2617
IF ~~ THEN EXIT
END

IF ~~ XAFECare4
SAY @2618
= @2619
IF ~~ THEN EXIT
END

IF ~~ XAFEWaist1
SAY @2620
IF ~~ THEN EXIT
END

IF ~~ XAFEWaist2
SAY @2621
IF ~~ THEN EXIT
END

IF ~~ XAFEWaist3
SAY @2622
IF ~~ THEN EXIT
END

IF ~~ XAFEWaist4
SAY @2623
IF ~~ THEN EXIT
END

IF ~~ XAFEHug4
SAY @2624
IF ~~ THEN EXIT
END

IF ~~ XAFEHug3
SAY @2625
IF ~~ THEN EXIT
END

IF ~~ XAFEHug2
SAY @2626
IF ~~ THEN EXIT
END

IF ~~ XAFEHug1
SAY @2627
= @2628
IF ~~ THEN EXIT
END

IF ~~ XAFEKiss1
SAY @2629
= @2630
IF ~~ THEN EXIT
END

IF ~~ XAFEKiss2
SAY @2631
IF ~~ THEN EXIT
END

IF ~~ XAFEKiss3
SAY @2632
IF ~~ THEN EXIT
END

IF ~~ XAFEKiss4
SAY @2633
= @2634
= @2635
= @2636
IF ~~ THEN EXIT
END

IF ~~ XAFESide1
SAY @2637
IF ~~ THEN EXIT
END

IF ~~ XAFESide2
SAY @2638
IF ~~ THEN EXIT
END

IF ~~ XAFESide3
SAY @2639
IF ~~ THEN EXIT
END

IF ~~ XAFESide4
SAY @2640
IF ~~ THEN EXIT
END

IF ~~ XAFECheer1
SAY @2641
IF ~~ THEN EXIT
END

IF ~~ XAFECheer2
SAY @2642
= @2643
IF ~~ THEN EXIT
END

IF ~~ XAFECheer3
SAY @2644
IF ~~ THEN EXIT
END

IF ~~ XAFECheerAjantis
SAY @2645
IF ~~ THEN EXIT
END

IF ~~ XAFECheerEldoth

SAY @2646
IF ~~ THEN EXIT
END

IF ~~ XAFEHand1
SAY @2647
= @2648
IF ~~ THEN EXIT
END

IF ~~ XAFEHand2
SAY @2649
IF ~~ THEN EXIT
END

IF ~~ XAFEHand3
SAY @2650
IF ~~ THEN EXIT
END

IF ~~ XAFEHand4
SAY @2651
IF ~~ THEN EXIT
END

IF ~~ XAFESmile1
SAY @2652
IF ~~ THEN EXIT
END

IF ~~ XAFESmile2
SAY @2653
= @2654
IF ~~ THEN EXIT
END

IF ~~ XAFESmile3
SAY @2655
IF ~~ THEN EXIT
END

IF ~~ XAFESmile4
SAY @2656
IF ~~ THEN EXIT
END

IF ~~ XAFEHow1
SAY @2657
IF ~~ THEN EXIT
END

IF ~~ XAFEHow2
SAY @2658
IF ~~ THEN EXIT
END

IF ~~ XAFEHow3
SAY @2659
IF ~~ THEN EXIT
END

IF ~~ XAFEHow4
SAY @2660
IF ~~ THEN EXIT
END

IF ~IsGabber(Player1) %BGT_VAR% !Global("X#XaRomanceInactive","GLOBAL",1) OR(2) Global("X#XaRomanceActive","GLOBAL",1) Global("X#XaRomanceActive","GLOBAL",2) GlobalGT("X#XALoveTalk","GLOBAL",27) GlobalLT("X#XALoveTalk","GLOBAL",30)~ THEN BEGIN XAFlirtMed
SAY @2661
IF ~~ THEN EXIT
END

IF ~IsGabber(Player1) %BGT_VAR% !Global("X#XaRomanceInactive","GLOBAL",1) OR(2) Global("X#XaRomanceActive","GLOBAL",1) Global("X#XaRomanceActive","GLOBAL",2) GlobalGT("X#XALoveTalk","GLOBAL",29)~ THEN BEGIN XAFlirtLate
SAY @2662

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2663 + XAFLSmile1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2663 + XAFLSmile2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2663 + XAFLSmile3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2663 + XAFLSmile4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2663 + XAFLSmile5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2663 + XAFLSmile6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2663 + XAFLSmile7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2663 + XAFLSmile8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2517 + XAFLKiss1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2517 + XAFLKiss2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2517 + XAFLKiss3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2517 + XAFLKiss4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2517 + XAFLKiss5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2517 + XAFLKiss6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2517 + XAFLKiss7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2517 + XAFLKiss8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2664 + XAFEEmbrace1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2664 + XAFEEmbrace2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2664 + XAFEEmbrace3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2664 + XAFEEmbrace4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2664 + XAFEEmbrace5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2664 + XAFEEmbrace6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2664 + XAFEEmbrace7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2664 + XAFEEmbrace8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2665 + XAFETrob1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2665 + XAFETrob2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2665 + XAFETrob3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2665 + XAFETrob4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2665 + XAFETrob5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2665 + XAFETrob6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2665 + XAFETrob7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2665 + XAFETrob8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2666 + XAFEWond1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2666 + XAFEWond2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2666 + XAFEWond3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2666 + XAFEWond4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2666 + XAFEWond5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2666 + XAFEWond6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2666 + XAFEWond7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2666 + XAFEWond8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2667 + XAFEMeet1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2667 + XAFEMeet2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2667 + XAFEMeet3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2667 + XAFEMeet4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2667 + XAFEMeet5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2667 + XAFEMeet6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2667 + XAFEMeet7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2667 + XAFEMeet8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2668 + XAFESigh1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2668 + XAFESigh2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2668 + XAFESigh3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2668 + XAFESigh4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2668 + XAFESigh5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2668 + XAFESigh6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2668 + XAFESigh7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2668 + XAFESigh8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2669 + XAFEShou1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2669 + XAFEShou2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2669 + XAFEShou3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2669 + XAFEShou4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2669 + XAFEShou9
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2669 + XAFEShou10
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2669 + XAFEShou11
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2669 + XAFEShou12

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2670 + XAFEShou5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2670 + XAFEShou6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2670 + XAFEShou7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2670 + XAFEShou8
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2670 + XAFEShou13
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2670 + XAFEShou14
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2670 + XAFEShou15
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2670 + XAFEShou16

+ ~OR(2) !InParty("coran") Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(7,1)~ + @2671 + XAFEView1
+ ~OR(2) !InParty("coran") Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(7,2)~ + @2671 + XAFEView2
+ ~OR(2) !InParty("coran") Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(7,3)~ + @2671 + XAFEView3
+ ~OR(2) !InParty("coran") Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(7,4)~ + @2671 + XAFEView4
+ ~OR(2) !InParty("coran") Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(7,5)~ + @2671 + XAFEView5
+ ~OR(2) !InParty("coran") Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(7,6)~ + @2671 + XAFEView6
+ ~OR(2) !InParty("coran") Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(7,7)~ + @2671 + XAFEView7

+ ~InParty("coran") !Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2671 + XAFEView1
+ ~InParty("coran") !Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2671 + XAFEView2
+ ~InParty("coran") !Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2671 + XAFEView3
+ ~InParty("coran") !Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2671 + XAFEView4
+ ~InParty("coran") !Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2671 + XAFEView5
+ ~InParty("coran") !Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2671 + XAFEView6
+ ~InParty("coran") !Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2671 + XAFEView7
+ ~InParty("coran") !Dead("coran") Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2671 + XAFEView8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2672 + XAFEHair1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2672 + XAFEHair2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2672 + XAFEHair3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2672 + XAFEHair4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2672 + XAFEHair5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2672 + XAFEHair6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2672 + XAFEHair7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2672 + XAFEHair8

+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,1)~ + @2673 + XAFELove1
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,2)~ + @2673 + XAFELove2
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,3)~ + @2673 + XAFELove3
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,4)~ + @2673 + XAFELove4
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,5)~ + @2673 + XAFELove5
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,6)~ + @2673 + XAFELove6
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,7)~ + @2673 + XAFELove7
+ ~Global("X#DisableXaFlirts","GLOBAL",0) RandomNum(8,8)~ + @2673 + XAFELove8

+ ~Global("X#DisableXaFlirts","GLOBAL",0)~ + @2523 DO ~SetGlobal("X#DisableXaFlirts","GLOBAL",1)~ EXIT

++ @2524 EXIT

+ ~%VoiceStrange%~ + @2525 + XanVoice
END

IF ~~ XAFELove8
SAY @2674
IF ~~ THEN EXIT
END

IF ~~ XAFELove7
SAY @2675
= @2676
IF ~~ THEN EXIT
END

IF ~~ XAFELove6
SAY @2677
IF ~~ THEN EXIT
END

IF ~~ XAFELove5
SAY @2678
IF ~~ THEN EXIT
END

IF ~~ XAFEHair5
SAY @2679
IF ~~ THEN EXIT
END

IF ~~ XAFEHair6
SAY @2680
IF ~~ THEN EXIT
END

IF ~~ XAFEHair7
SAY @2681
IF ~~ THEN EXIT
END

IF ~~ XAFEHair8
SAY @2682
IF ~~ THEN EXIT
END

IF ~~ XAFEView5
SAY @2683
IF ~~ THEN EXIT
END

IF ~~ XAFEView6
SAY @2684
IF ~~ THEN EXIT
END

IF ~~ XAFEView7
SAY @2685
IF ~~ THEN EXIT
END

IF ~~ XAFEView8
SAY @2686
IF ~~ THEN EXIT
END

IF ~~ XAFEShou13
SAY @2687
IF ~~ THEN EXIT
END

IF ~~ XAFEShou14
SAY @2688
= @2689
IF ~~ THEN EXIT
END

IF ~~ XAFEShou15
SAY @2690
IF ~~ THEN EXIT
END

IF ~~ XAFEShou16
SAY @2691
IF ~~ THEN EXIT
END

IF ~~ XAFEShou9
SAY @2692
IF ~~ THEN EXIT
END

IF ~~ XAFEShou10
SAY @2693
= @2694
IF ~~ THEN EXIT
END

IF ~~ XAFEShou11
SAY @2695
IF ~~ THEN EXIT
END

IF ~~ XAFEShou12
SAY @2696
IF ~~ THEN EXIT
END

IF ~~ XAFESigh5
SAY @2697
IF ~~ THEN EXIT
END

IF ~~ XAFESigh6
SAY @2698
IF ~~ THEN EXIT
END

IF ~~ XAFESigh7
SAY @2699
IF ~~ THEN EXIT
END

IF ~~ XAFESigh8
SAY @2700
IF ~~ THEN EXIT
END

IF ~~ XAFEMeet5
SAY @2701
IF ~~ THEN EXIT
END

IF ~~ XAFEMeet6
SAY @2702
IF ~~ THEN EXIT
END

IF ~~ XAFEMeet7
SAY @2703
IF ~~ THEN EXIT
END

IF ~~ XAFEMeet8
SAY @2704
IF ~~ THEN EXIT
END

IF ~~ XAFEWond5
SAY @2705
IF ~~ THEN EXIT
END

IF ~~ XAFEWond6
SAY @2706
IF ~~ THEN EXIT
END

IF ~~ XAFEWond7
SAY @2707
IF ~~ THEN EXIT
END

IF ~~ XAFEWond8
SAY @2708
IF ~~ THEN EXIT
END

IF ~~ XAFETrob5
SAY @2709
IF ~~ THEN EXIT
END

IF ~~ XAFETrob6
SAY @2710
IF ~~ THEN EXIT
END

IF ~~ XAFETrob7
SAY @2711
= @2712
IF ~~ THEN EXIT
END

IF ~~ XAFETrob8
SAY @2713
IF ~~ THEN EXIT
END


IF ~~ XAFEEmbrace5
SAY @2714
IF ~~ THEN EXIT
END

IF ~~ XAFEEmbrace6
SAY @2715
IF ~~ THEN EXIT
END

IF ~~ XAFEEmbrace7
SAY @2716
IF ~~ THEN EXIT
END

IF ~~ XAFEEmbrace8
SAY @2717
IF ~~ THEN EXIT
END

IF ~~ XAFLKiss5
SAY @2718
IF ~~ THEN EXIT
END

IF ~~ XAFLKiss6
SAY @2719
= @2720
= @2721
IF ~~ THEN EXIT
END

IF ~~ XAFLKiss7
SAY @2722
= @2723
= @2724
IF ~~ THEN EXIT
END

IF ~~ XAFLKiss8
SAY @2725
= @2726
IF ~~ THEN EXIT
END

IF ~~ XAFLSmile5
SAY @2727
IF ~~ THEN EXIT
END

IF ~~ XAFLSmile6
SAY @2728
IF ~~ THEN EXIT
END

IF ~~ XAFLSmile7
SAY @2729
IF ~~ THEN EXIT
END

IF ~~ XAFLSmile8
SAY @2730
IF ~~ THEN EXIT
END

IF ~~ XAFELove1
SAY @2731
IF ~~ THEN EXIT
END

IF ~~ XAFELove2
SAY @2732
IF ~~ THEN EXIT
END

IF ~~ XAFELove3
SAY @2733
IF ~~ THEN EXIT
END

IF ~~ XAFELove4
SAY @2734
IF ~~ THEN EXIT
END

IF ~~ XAFEHair1
SAY @2735
IF ~~ THEN EXIT
END

IF ~~ XAFEHair2
SAY @2736
IF ~~ THEN EXIT
END

IF ~~ XAFEHair3
SAY @2737
= @2738
IF ~~ THEN EXIT
END

IF ~~ XAFEHair4
SAY @2739
IF ~~ THEN EXIT
END

IF ~~ XAFEView1
SAY @2740
= @2741
IF ~~ THEN EXIT
END

IF ~~ XAFEView2
SAY @2742
IF ~~ THEN EXIT
END

IF ~~ XAFEView3
SAY @2743
IF ~~ THEN EXIT
END

IF ~~ XAFEView4
SAY @2744
IF ~~ THEN EXIT
END

IF ~~ XAFEShou5
SAY @2745
IF ~~ THEN EXIT
END

IF ~~ XAFEShou6
SAY @2746
IF ~~ THEN EXIT
END

IF ~~ XAFEShou7
SAY @2747
= @2748
IF ~~ THEN EXIT
END

IF ~~ XAFEShou8
SAY @2749
IF ~~ THEN EXIT
END

IF ~~ XAFEShou1
SAY @2750
IF ~~ THEN EXIT
END

IF ~~ XAFEShou2
SAY @2751
IF ~~ THEN EXIT
END

IF ~~ XAFEShou3
SAY @2752
= @2753
IF ~~ THEN EXIT
END

IF ~~ XAFEShou4
SAY @2754
= @2755
= @2756
= @2757
IF ~~ THEN EXIT
END

IF ~~ XAFESigh1
SAY @2758
IF ~~ THEN EXIT
END

IF ~~ XAFESigh2
SAY @2759
++ @2760 + XAFESigh1.1
++ @2761 + XAFESigh1.2
END

IF ~~ XAFESigh1.1
SAY @2762
IF ~~ THEN EXIT
END

IF ~~ XAFESigh1.2
SAY @2763
IF ~~ THEN EXIT
END

IF ~~ XAFESigh3
SAY @2764
IF ~~ THEN EXIT
END

IF ~~ XAFESigh4
SAY @2765
IF ~~ THEN EXIT
END

IF ~~ XAFEMeet1
SAY @2766
IF ~~ THEN EXIT
END

IF ~~ XAFEMeet2
SAY @2767
IF ~~ THEN EXIT
END

IF ~~ XAFEMeet3
SAY @2768
IF ~~ THEN EXIT
END

IF ~~ XAFEMeet4
SAY @2769
IF ~~ THEN EXIT
END

IF ~~ XAFEWond1
SAY @2770
= @2771
IF ~~ THEN EXIT
END

IF ~~ XAFEWond2
SAY @2772
IF ~~ THEN EXIT
END

IF ~~ XAFEWond3
SAY @2773
IF ~~ THEN EXIT
END

IF ~~ XAFEWond4
SAY @2774
IF ~~ THEN EXIT
END

IF ~~ XAFETrob1
SAY @2775
IF ~~ THEN EXIT
END

IF ~~ XAFETrob2
SAY @2776
IF ~~ THEN EXIT
END

IF ~~ XAFETrob3
SAY @2777
IF ~~ THEN EXIT
END

IF ~~ XAFETrob4
SAY @2778
IF ~~ THEN EXIT
END

IF ~~ XAFEEmbrace1
SAY @2779
= @2780
IF ~~ THEN EXIT
END

IF ~~ XAFEEmbrace2
SAY @2781
IF ~~ THEN EXIT
END

IF ~~ XAFEEmbrace3
SAY @2782
= @2783
IF ~~ THEN EXIT
END

IF ~~ XAFEEmbrace4
SAY @2784
= @2785
IF ~~ THEN EXIT
END

IF ~~ XAFLKiss1
SAY @2786
= @2787
IF ~~ THEN EXIT
END

IF ~~ XAFLKiss2
SAY @2788
= @2789
IF ~~ THEN EXIT
END

IF ~~ XAFLKiss3
SAY @2790
IF ~~ THEN EXIT
END

IF ~~ XAFLKiss4
SAY @2791
= @2792
IF ~~ THEN EXIT
END

IF ~~ XAFLSmile1
SAY @2793
IF ~~ THEN EXIT
END

IF ~~ XAFLSmile2
SAY @2794
IF ~~ THEN EXIT
END

IF ~~ XAFLSmile3
SAY @2795
IF ~~ THEN EXIT
END

IF ~~ XAFLSmile4
SAY @2796
IF ~~ THEN EXIT
END

IF ~IsGabber(Player1) %BGT_VAR% OR(3) Global("X#XaRomanceInactive","GLOBAL",1) Global("X#XaRomanceActive","GLOBAL",0) GlobalLT("X#XALoveTalk","GLOBAL",9)~ THEN BEGIN XACH
SAY @2797
++ @2798 EXIT

+ ~Global("X#XACHdone","GLOBAL",1) RandomNum(4,1)~ + @2799 + XACHFailure1
+ ~Global("X#XACHdone","GLOBAL",1) RandomNum(4,2)~ + @2799 + XACHFailure2
+ ~Global("X#XACHdone","GLOBAL",1) RandomNum(4,3)~ + @2799 + XACHFailure3
+ ~Global("X#XACHdone","GLOBAL",1) RandomNum(4,4)~ + @2799 + XACHFailure4

+ ~!Global("X#XACHdone","GLOBAL",1) RandomNum(5,1)~ + @2800 + XACHSuccess
+ ~!Global("X#XACHdone","GLOBAL",1) RandomNum(5,2)~ + @2800 + XACHFailure1
+ ~!Global("X#XACHdone","GLOBAL",1) RandomNum(5,3)~ + @2800 + XACHFailure2
+ ~!Global("X#XACHdone","GLOBAL",1) RandomNum(5,4)~ + @2800 + XACHFailure3
+ ~!Global("X#XACHdone","GLOBAL",1) RandomNum(5,5)~ + @2800 + XACHFailure4

+ ~!Global("X#XACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @2801 + XACHSuccess
+ ~!Global("X#XACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @2801 + XACHFailure1

+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @2801 + XACHSuccess
+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @2801 + XACHFailure1
+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @2801 + XACHFailure2
+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @2801 + XACHFailure3
+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @2801 + XACHFailure4

+ ~!Global("X#XACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @2802 + XACHSuccess
+ ~!Global("X#XACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @2802 + XACHFailure2

+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @2802 + XACHSuccess
+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @2802 + XACHFailure1
+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @2802 + XACHFailure2
+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @2802 + XACHFailure3
+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @2802 + XACHFailure4

+ ~!Global("X#XACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @2803 + XACHSuccess
+ ~!Global("X#XACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @2803 + XACHFailure3

+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @2803 + XACHSuccess
+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @2803 + XACHFailure1
+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @2803 + XACHFailure3
+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @2803 + XACHFailure2
+ ~!Global("X#XACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @2803 + XACHFailure4

+ ~RandomNum(4,1) !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom1
+ ~RandomNum(4,2) !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom2
+ ~RandomNum(4,3) !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom3
+ ~RandomNum(4,4) !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom4

+ ~OR(2) Global("X#AjantisRomanceActive","GLOBAL",2) Global("P#CoranLover","GLOBAL",1)~ + @2804 + XaDoom5

+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_3%) !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom6

+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom7
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom8
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom9

+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_4%) !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom10
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom11
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom12
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom13

+ ~RandomNum(4,1) OR(10)
AreaCheck("%NWBaldursGate%")
AreaCheck("%NBaldursGate%")
AreaCheck("%NEBaldursGate%")
AreaCheck("%WBaldursGate%")
AreaCheck("%CentralBaldursGate%")
AreaCheck("%EBaldursGate%")
AreaCheck("%WyrmsCrossing%")
AreaCheck("%SWBaldursGate%")
AreaCheck("%BaldursGateDocks%")
AreaCheck("%SEBaldursGate%") Global("Chapter","GLOBAL",%tutu_chapter_5%) !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom14
+ ~RandomNum(4,2) OR(10)
AreaCheck("%NWBaldursGate%")
AreaCheck("%NBaldursGate%")
AreaCheck("%NEBaldursGate%")
AreaCheck("%WBaldursGate%")
AreaCheck("%CentralBaldursGate%")
AreaCheck("%EBaldursGate%")
AreaCheck("%WyrmsCrossing%")
AreaCheck("%SWBaldursGate%")
AreaCheck("%BaldursGateDocks%")
AreaCheck("%SEBaldursGate%") Global("Chapter","GLOBAL",%tutu_chapter_5%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom15
+ ~RandomNum(4,3) OR(10)
AreaCheck("%NWBaldursGate%")
AreaCheck("%NBaldursGate%")
AreaCheck("%NEBaldursGate%")
AreaCheck("%WBaldursGate%")
AreaCheck("%CentralBaldursGate%")
AreaCheck("%EBaldursGate%")
AreaCheck("%WyrmsCrossing%")
AreaCheck("%SWBaldursGate%")
AreaCheck("%BaldursGateDocks%")
AreaCheck("%SEBaldursGate%") Global("Chapter","GLOBAL",%tutu_chapter_5%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom16
+ ~RandomNum(4,4) OR(10)
AreaCheck("%NWBaldursGate%")
AreaCheck("%NBaldursGate%")
AreaCheck("%NEBaldursGate%")
AreaCheck("%WBaldursGate%")
AreaCheck("%CentralBaldursGate%")
AreaCheck("%EBaldursGate%")
AreaCheck("%WyrmsCrossing%")
AreaCheck("%SWBaldursGate%")
AreaCheck("%BaldursGateDocks%")
AreaCheck("%SEBaldursGate%") Global("Chapter","GLOBAL",%tutu_chapter_5%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom17

+ ~
!AreaCheck("%NWBaldursGate%")
!AreaCheck("%NBaldursGate%")
!AreaCheck("%NEBaldursGate%")
!AreaCheck("%WBaldursGate%")
!AreaCheck("%CentralBaldursGate%")
!AreaCheck("%EBaldursGate%")
!AreaCheck("%WyrmsCrossing%")
!AreaCheck("%SWBaldursGate%")
!AreaCheck("%BaldursGateDocks%")
!AreaCheck("%SEBaldursGate%") Global("Chapter","GLOBAL",%tutu_chapter_5%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom18

+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom19
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom20
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom21
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom22

+ ~RandomNum(4,1) OR(2) !Global("X#XaRomanceActive","GLOBAL",2) Global("X#XaRomanceInactive","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_7%) !Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom23
+ ~RandomNum(4,2) OR(2) !Global("X#XaRomanceActive","GLOBAL",2) Global("X#XaRomanceInactive","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_7%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom24
+ ~RandomNum(4,3) OR(2) !Global("X#XaRomanceActive","GLOBAL",2) Global("X#XaRomanceInactive","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_7%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom25
+ ~RandomNum(4,4) OR(2) !Global("X#XaRomanceActive","GLOBAL",2) Global("X#XaRomanceInactive","GLOBAL",1) Global("Chapter","GLOBAL",%tutu_chapter_7%)!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2804 + XaDoom26

+ ~Global("X#XaRomanceInactive","GLOBAL",1) OR(2) Global("X#AjantisRomanceActive","GLOBAL",2) Global("P#CoranLover","GLOBAL",1)~ + @2805 + XaDie1

+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,1)~ + @2805 + XaDie2
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,2)~ + @2805 + XaDie3
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,3)~ + @2805 + XaDie4
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,4)~ + @2805 + XaDie5
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,5)~ + @2805 + XaDie6
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,6)~ + @2805 + XaDie7
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,7)~ + @2805 + XaDie8
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,8)~ + @2805 + XaDie9

+ ~Global("X#XaRomanceInactive","GLOBAL",1) OR(2) Global("X#AjantisRomanceActive","GLOBAL",2) Global("P#CoranLover","GLOBAL",1)~ + @2806 + XaOver1

+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,1)~ + @2806 + XaOver2
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,2)~ + @2806 + XaOver3
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,3)~ + @2806 + XaOver4
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,4)~ + @2806 + XaOver5
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,5)~ + @2806 + XaOver6
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,6)~ + @2806 + XaOver7
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,7)~ + @2806 + XaOver8
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,8)~ + @2806 + XaOver9

+ ~Global("X#XaRomanceInactive","GLOBAL",1) OR(2) Global("X#AjantisRomanceActive","GLOBAL",2) Global("P#CoranLover","GLOBAL",1)~ + @2807 + XaSmile1

+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,1)~ + @2807 + XaSmile2
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,2)~ + @2807 + XaSmile3
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,3)~ + @2807 + XaSmile4
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,4)~ + @2807 + XaSmile5
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,5)~ + @2807 + XaSmile6
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,6)~ + @2807 + XaSmile7
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,7)~ + @2807 + XaSmile8
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,8)~ + @2807 + XaSmile9

+ ~Global("X#XaRomanceInactive","GLOBAL",1) OR(2) Global("X#AjantisRomanceActive","GLOBAL",2) Global("P#CoranLover","GLOBAL",1)~ + @2808 + XaEquip1

+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,1)~ + @2808 + XaEquip2
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,2)~ + @2808 + XaEquip3
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,3)~ + @2808 + XaEquip4
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,4)~ + @2808 + XaEquip5
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,5)~ + @2808 + XaEquip6
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,6)~ + @2808 + XaEquip7
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,7)~ + @2808 + XaEquip8
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("P#CoranLover","GLOBAL",1) RandomNum(8,8)~ + @2808 + XaEquip9

+ ~Global("X#XARomanceInactive","GLOBAL",1)
OR(2)
Global("P#CoranRomanceInactive","GLOBAL",1)
Global("P#CoranMatch","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceActive","GLOBAL",3)
Global("X#AjantisRomanceActive","GLOBAL",0)
Global("X#XanRomCutByOther","GLOBAL",1)
Race(Player1,ELF)~ + @2809 + X#MakeUpElf

+ ~Global("X#XARomanceInactive","GLOBAL",1)
OR(2)
Global("P#CoranRomanceInactive","GLOBAL",1)
Global("P#CoranMatch","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceActive","GLOBAL",3)
Global("X#AjantisRomanceActive","GLOBAL",0)
Global("X#XanRomCutByOther","GLOBAL",1)
!Race(Player1,ELF)~ + @2809 + X#MakeUpNonElf

+ ~%VoiceStrange%~ + @2525 + XanVoice
END

IF ~~ X#MakeUpElf
SAY @2810
IF ~~ THEN DO ~SetGlobal("X#XARomanceInactive","GLOBAL",0) SetGlobal("X#XanRomCutByOther","GLOBAL",2)~ EXIT
END

IF ~~ X#MakeUpNonElf
SAY @2811
IF ~~ THEN DO ~SetGlobal("X#XanRomCutByOther","GLOBAL",2)~ EXIT
END


IF ~~ XaEquip9
SAY @2812
IF ~~ THEN EXIT
END

IF ~~ XaEquip8
SAY @2813
IF ~~ THEN EXIT
END

IF ~~ XaEquip7
SAY @2814
IF ~~ THEN EXIT
END

IF ~~ XaEquip6
SAY @2815
IF ~~ THEN EXIT
END

IF ~~ XaEquip5
SAY @2816
IF ~~ THEN EXIT
END

IF ~~ XaEquip4
SAY @2817
IF ~~ THEN EXIT
END

IF ~~ XaEquip3
SAY @2818
IF ~~ THEN EXIT
END

IF ~~ XaEquip2
SAY @2819
IF ~~ THEN EXIT

END

IF ~~ XaEquip1
SAY @2820
IF ~~ THEN EXIT
END

IF ~~ XaSmile9
SAY @2821
IF ~~ THEN EXIT
END

IF ~~ XaSmile8
SAY @2822
IF ~~ THEN EXIT
END

IF ~~ XaSmile7
SAY @2823
IF ~~ THEN EXIT
END

IF ~~ XaSmile6
SAY @2824
IF ~~ THEN EXIT
END

IF ~~ XaSmile5
SAY @2825
IF ~~ THEN EXIT
END

IF ~~ XaSmile4
SAY @2826
IF ~~ THEN EXIT
END

IF ~~ XaSmile3
SAY @2827
IF ~~ THEN EXIT
END

IF ~~ XaSmile2
SAY @2828
IF ~~ THEN EXIT
END

IF ~~ XaSmile1
SAY @2829
IF ~~ THEN EXIT
END

IF ~~ XaOver9
SAY @2830
IF ~~ THEN EXIT

END

IF ~~ XaOver8
SAY @2831
IF ~~ THEN EXIT
END

IF ~~ XaOver7
SAY @2832
IF ~~ THEN EXIT
END

IF ~~ XaOver6
SAY @2833
IF ~~ THEN EXIT
END

IF ~~ XaOver5
SAY @2834
IF ~~ THEN EXIT
END

IF ~~ XaOver4
SAY @2835
IF ~~ THEN EXIT
END

IF ~~ XaOver3
SAY @2836
IF ~~ THEN EXIT
END

IF ~~ XaOver2
SAY @2837
IF ~~ THEN EXIT
END

IF ~~ XaOver1
SAY @2838
IF ~~ THEN EXIT
END

IF ~~ XaOver10
SAY @2839
IF ~~ THEN EXIT
END

IF ~~ XaDie9
SAY @2840
IF ~~ THEN EXIT
END

IF ~~ XaDie8
SAY @2841
IF ~~ THEN EXIT
END

IF ~~ XaDie7
SAY @2842
IF ~~ THEN EXIT
END

IF ~~ XaDie6
SAY @2843
IF ~~ THEN EXIT
END

IF ~~ XaDie5
SAY @2844
IF ~~ THEN EXIT
END

IF ~~ XaDie4
SAY @2845
IF ~~ THEN EXIT
END

IF ~~ XaDie3
SAY @2846
IF ~~ THEN EXIT
END

IF ~~ XaDie2
SAY @2847
IF ~~ THEN EXIT
END

IF ~~ XaDie1
SAY @2848
IF ~~ THEN EXIT
END

IF ~~ XaDoom23
SAY @2849
IF ~~ THEN EXIT
END

IF ~~ XaDoom26
SAY @2850
IF ~~ THEN EXIT
END

IF ~~ XaDoom25
SAY @2851
IF ~~ THEN EXIT
END

IF ~~ XaDoom24
SAY @2852
IF ~~ THEN EXIT
END

IF ~~ XaDoom27
SAY @2853
IF ~~ THEN EXIT
END

IF ~~ XaDoom19
SAY @2854
IF ~~ THEN EXIT
END

IF ~~ XaDoom20
SAY @2855
IF ~~ THEN EXIT
END

IF ~~ XaDoom21
SAY @2856
IF ~~ THEN EXIT
END

IF ~~ XaDoom22
SAY @2857
IF ~~ THEN EXIT
END

IF ~~ XaDoom14
SAY @2858
IF ~~ THEN EXIT
END

IF ~~ XaDoom15
SAY @2859
IF ~~ THEN EXIT
END

IF ~~ XaDoom16
SAY @2860
IF ~~ THEN EXIT
END

IF ~~ XaDoom17
SAY @2861
IF ~~ THEN EXIT
END

IF ~~ XaDoom18
SAY @2862
IF ~~ THEN EXIT
END

IF ~~ XaDoom13
SAY @2863
IF ~~ THEN EXIT
END

IF ~~ XaDoom12
SAY @2864
IF ~~ THEN EXIT
END

IF ~~ XaDoom11
SAY @2865
IF ~~ THEN EXIT
END

IF ~~ XaDoom10
SAY @2866
IF ~~ THEN EXIT
END

IF ~~ XaDoom9
SAY @2867
IF ~~ THEN EXIT
END

IF ~~ XaDoom8
SAY @2868
IF ~~ THEN EXIT
END

IF ~~ XaDoom7
SAY @2869
IF ~~ THEN EXIT
END

IF ~~ XaDoom6
SAY @2870
IF ~~ THEN EXIT
END

IF ~~ XaDoom5
SAY @2871
IF ~~ THEN EXIT
END

IF ~~ XaDoom4
SAY @2872
IF ~~ THEN EXIT
END

IF ~~ XaDoom3
SAY @2873
IF ~~ THEN EXIT
END

IF ~~ XaDoom2
SAY @2874
IF ~~ THEN EXIT
END

IF ~~ XaDoom1
SAY @2875
IF ~~ THEN EXIT
END

IF ~~ XACHSuccess
SAY @2876
IF ~~ THEN DO ~SetGlobal("X#XACHdone","GLOBAL",1)~ EXIT
END

IF ~~ XACHFailure1
SAY @2877
IF ~~ THEN EXIT
END

IF ~~ XACHFailure2
SAY @2878
IF ~~ THEN EXIT
END

IF ~~ XACHFailure3
SAY @2879
IF ~~ THEN EXIT
END

IF ~~ XACHFailure4
SAY @2877
IF ~~ THEN EXIT
END

END

APPEND ~%XZAR_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN XZCH
SAY @2880
++ @2881 EXIT
+ ~Global("X#XzarCookie","GLOBAL",0)~ + @2882 + XZCHCookie
+ ~Global("X#XZCHdone","GLOBAL",1) RandomNum(4,1)~ + @2883 + XZCHFailure1
+ ~Global("X#XZCHdone","GLOBAL",1) RandomNum(4,2)~ + @2883 + XZCHFailure2
+ ~Global("X#XZCHdone","GLOBAL",1) RandomNum(4,3)~ + @2883 + XZCHFailure3
+ ~Global("X#XZCHdone","GLOBAL",1) RandomNum(4,4)~ + @2883 + XZCHFailure4
+ ~!Global("X#XZCHdone","GLOBAL",1) RandomNum(5,1)~ + @2884 + XZCHSuccess
+ ~!Global("X#XZCHdone","GLOBAL",1) RandomNum(5,2)~ + @2884 + XZCHFailure1
+ ~!Global("X#XZCHdone","GLOBAL",1) RandomNum(5,3)~ + @2884 + XZCHFailure2
+ ~!Global("X#XZCHdone","GLOBAL",1) RandomNum(5,4)~ + @2884 + XZCHFailure3
+ ~!Global("X#XZCHdone","GLOBAL",1) RandomNum(5,5)~ + @2884 + XZCHFailure4
+ ~!Global("X#XZCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @2885 + XZCHSuccess
+ ~!Global("X#XZCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @2885 + XZCHFailure1
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @2885 + XZCHSuccess
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @2885 + XZCHFailure1
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @2885 + XZCHFailure2
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @2885 + XZCHFailure3
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @2885 + XZCHFailure4
+ ~!Global("X#XZCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @2886 + XZCHSuccess
+ ~!Global("X#XZCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @2886 + XZCHFailure2
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @2886 + XZCHSuccess
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @2886 + XZCHFailure1
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @2886 + XZCHFailure2
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @2886 + XZCHFailure3
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @2886 + XZCHFailure4
+ ~!Global("X#XZCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @2887 + XZCHSuccess
+ ~!Global("X#XZCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @2887 + XZCHFailure3
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @2887 + XZCHSuccess
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @2887 + XZCHFailure1
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @2887 + XZCHFailure3
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @2887 + XZCHFailure2
+ ~!Global("X#XZCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @2887 + XZCHFailure4
+ ~!HPPercentLT("xzar",80) !Dead("sarevok") RandomNum(5,1) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2888 + X#XzThere1
+ ~!HPPercentLT("xzar",80)!Dead("sarevok") RandomNum(5,2) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2888 + X#XzThere2
+ ~!HPPercentLT("xzar",80)!Dead("sarevok") RandomNum(5,3) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2888 + X#XzThere3
+ ~!HPPercentLT("xzar",80)!Dead("sarevok") RandomNum(5,4) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2888 + X#XzThere4
+ ~!HPPercentLT("xzar",80)!Dead("sarevok") RandomNum(5,5) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2888 + X#XzThere9
+ ~HPPercentLT("xzar",80)!Dead("sarevok") !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2888 + X#XzThere5
+ ~!HPPercentLT("xzar",80) Dead("sarevok") !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%Undercity%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2888 + X#XzThere6
+ ~!HPPercentLT("xzar",80) !Dead("sarevok") !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2888 + X#XzThere7
+ ~!HPPercentLT("xzar",80) !Dead("sarevok") !AreaCheck("%Undercity_TempleofBhaal%") OR(2) AreaCheck("%IsleofBalduranS%") AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2888 + X#XzThere8
+ ~!HPPercentLT("xzar",80) !GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("sarevok") RandomNum(4,1) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion1
+ ~!HPPercentLT("xzar",80) !GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("sarevok") RandomNum(4,2) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion2
+ ~!HPPercentLT("xzar",80) !GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("sarevok") RandomNum(4,3) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion3
+ ~!HPPercentLT("xzar",80) !GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("sarevok") RandomNum(4,4) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion4

+ ~HPPercentLT("xzar",80) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%)!Dead("sarevok") !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion7

+ ~!HPPercentLT("xzar",80) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) Dead("sarevok") !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%Undercity%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion6
+ ~!HPPercentLT("xzar",80) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("sarevok") !AreaCheck("%Undercity_TempleofBhaal%") OR(2) AreaCheck("%IsleofBalduranS%") AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion8

+ ~!HPPercentLT("xzar",80) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("sarevok") RandomNum(5,1) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion1
+ ~!HPPercentLT("xzar",80) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("sarevok") RandomNum(5,2) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion2
+ ~!HPPercentLT("xzar",80) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("sarevok") RandomNum(5,3) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion3
+ ~!HPPercentLT("xzar",80) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("sarevok") RandomNum(5,4) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion4
+ ~!HPPercentLT("xzar",80) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("sarevok") RandomNum(5,5) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%")
!AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion5

+ ~HPPercentLT("xzar",80) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%)!Dead("sarevok") !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion7

+ ~!HPPercentLT("xzar",80) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) Dead("sarevok") !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%Undercity%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion6
+ ~!HPPercentLT("xzar",80) GlobalGT("Chapter","GLOBAL",%tutu_chapter_3%) !Dead("sarevok") !AreaCheck("%Undercity_TempleofBhaal%") OR(2) AreaCheck("%IsleofBalduranS%") AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @2889 + X#XzSuggestion8

+ ~%VoiceStrange%~ + @2890 + XzarVoice
END

IF ~~ XzarVoice
SAY @11
IF ~~ THEN DO ~SetName(@2891)
SetPlayerSound(Myself,@2892,0)
SetPlayerSound(Myself,@2893,1)
SetPlayerSound(Myself,@2894,2)
SetPlayerSound(Myself,@2895,3)
SetPlayerSound(Myself,@2896,4)
SetPlayerSound(Myself,@2897,5)
SetPlayerSound(Myself,@2898,6)
SetPlayerSound(Myself,@2899,7)
SetPlayerSound(Myself,@2900,8)
SetPlayerSound(Myself,@2901,9)
SetPlayerSound(Myself,@2901,10)
SetPlayerSound(Myself,@2901,11)
SetPlayerSound(Myself,@2901,12)
SetPlayerSound(Myself,@2901,13)
SetPlayerSound(Myself,@2902,18)
SetPlayerSound(Myself,@2903,19)
SetPlayerSound(Myself,@2904,20)
SetPlayerSound(Myself,@2905,21)
SetPlayerSound(Myself,@2906,22)
SetPlayerSound(Myself,@2907,23)
SetPlayerSound(Myself,@2908,24)
SetPlayerSound(Myself,@2909,25)
SetPlayerSound(Myself,@2910,26)
SetPlayerSound(Myself,@2911,27)
SetPlayerSound(Myself,@2912,28)
SetPlayerSound(Myself,@2910,29)
SetPlayerSound(Myself,@2911,30)
SetPlayerSound(Myself,@2912,31)
SetPlayerSound(Myself,@2913,32)
SetPlayerSound(Myself,@2914,33)
SetPlayerSound(Myself,@2915,34)
SetPlayerSound(Myself,@2913,35)
SetPlayerSound(Myself,@2914,36)
SetPlayerSound(Myself,@2915,37)
SetPlayerSound(Myself,@2913,38)
SetPlayerSound(Myself,@2916,39)
SetPlayerSound(Myself,@2917,40)
SetPlayerSound(Myself,@2918,41)
SetPlayerSound(Myself,@2919,42)
SetPlayerSound(Myself,@2920,43)
SetPlayerSound(Myself,@2921,50)
SetPlayerSound(Myself,@2922,51)
SetPlayerSound(Myself,@2923,52)
SetPlayerSound(Myself,@2924,53)
SetPlayerSound(Myself,@2925,54)
SetPlayerSound(Myself,@2926,55)
SetPlayerSound(Myself,@2927,58)
SetPlayerSound(Myself,@2928,59)
SetPlayerSound(Myself,@2910,62)
SetPlayerSound(Myself,@2910,63)
SetPlayerSound(Myself,@2911,64)
SetPlayerSound(Myself,@2929,74)~ EXIT
END

IF ~~ X#XzSuggestion1
SAY @2930
IF ~~ THEN EXIT
END

IF ~~ X#XzSuggestion2
SAY @2931
IF ~~ THEN EXIT
END

IF ~~ X#XzSuggestion3
SAY @2932
IF ~~ THEN EXIT
END

IF ~~ X#XzSuggestion4
SAY @2933
IF ~~ THEN EXIT
END

IF ~~ X#XzSuggestion6
SAY @2934
IF ~~ THEN EXIT
END

IF ~~ X#XzSuggestion5
SAY @2935
IF ~~ THEN EXIT
END

IF ~~ X#XzSuggestion8
SAY @2936
IF ~~ THEN EXIT
END

IF ~~ X#XzSuggestion7
SAY @2937
IF ~~ THEN EXIT
END

IF ~~ X#XzThere1
SAY @2938
IF ~~ THEN EXIT
END

IF ~~ X#XzThere2
SAY @2939
IF ~~ THEN EXIT
END

IF ~~ X#XzThere3
SAY @2940
IF ~~ THEN EXIT
END

IF ~~ X#XzThere4
SAY @2941
IF ~~ THEN EXIT
END

IF ~~ X#XzThere8
SAY @2942
IF ~~ THEN EXIT
END

IF ~~ X#XzThere5
SAY @2943
IF ~~ THEN EXIT
END

IF ~~ X#XzThere6
SAY @2944
IF ~~ THEN EXIT
END

IF ~~ X#XzThere7
SAY @2945
IF ~~ THEN EXIT
END

IF ~~ X#XzThere9

SAY @2946
IF ~~ THEN EXIT
END

IF ~~ XZCHCookie
SAY @2947
= @2948
++ @2949 DO ~SetGlobal("X#XzarCookie","GLOBAL",1)~ + XZCHCookie3

++ @2950 DO ~SetGlobal("X#XzarCookie","GLOBAL",1)~ + XZCHCookie4
++ @2951 DO ~SetGlobal("X#XzarCookie","GLOBAL",1)~ + XZCHCookie15a
++ @2952 DO ~SetGlobal("X#XzarCookie","GLOBAL",1)~ + XZCHCookie5
END

IF ~~ XZCHCookie3
SAY @2953
++ @2954 + XZCHCookie6
++ @2955 + XZCHCookie9
++ @2956 + XZCHCookie15b
END

IF ~~ XZCHCookie4
SAY @2957
++ @2958 + XZCHCookie5
++ @2959 + XZCHCookie6
END

IF ~~ XZCHCookie5
SAY @2960
++ @2961 + XZCHCookie7
++ @2962 + XZCHCookie8
++ @2963 + XZCHCookie10
END

IF ~~ XZCHCookie6
SAY @2964
IF ~~ THEN GOTO XZCHCookie6a
END

IF ~~ XZCHCookie6a
SAY @2965
IF ~~ THEN EXIT
END

IF ~~ XZCHCookie7
SAY @2966
++ @2967 + XZCHCookie9
++ @2968 + XZCHCookie6
++ @2969 + XZCHCookie15c
END

IF ~~ XZCHCookie8
SAY @2970
IF ~~ THEN EXIT
END

IF ~~ XZCHCookie9
SAY @2971
++ @2972 + XZCHCookie11
++ @2973 + XZCHCookie12
++ @2974 + XZCHCookie15d
END

IF ~~ XZCHCookie10
SAY @2975
IF ~~ THEN EXIT
END

IF ~~ XZCHCookie11
SAY @2976
IF ~~ THEN EXIT
END

IF ~~ XZCHCookie12
SAY @2977
++ @2978 + XZCHCookie14
++ @2979 EXIT
END

IF ~~ XZCHCookie14
SAY @2980
IF ~~ THEN EXIT
END

IF ~~ XZCHCookie15a
SAY @2981
IF ~~ THEN GOTO XZCHCookie15
END

IF ~~ XZCHCookie15b
SAY @2982
IF ~~ THEN GOTO XZCHCookie15
END

IF ~~ XZCHCookie15c
SAY @2983
IF ~~ THEN GOTO XZCHCookie15
END

IF ~~ XZCHCookie15d
SAY @2984
IF ~~ THEN GOTO XZCHCookie15
END

IF ~~ XZCHCookie15
SAY @2985
++ @2986 + XZCHCookie16
++ @2987 + XZCHCookie10
++ @2988 + XZCHCookie17
++ @2989 + XZCHCookie18
END

IF ~~ XZCHCookie16
SAY @2990
IF ~~ THEN EXIT
END

IF ~~ XZCHCookie17
SAY @2991
IF ~~ THEN EXIT
END

IF ~~ XZCHCookie18
SAY @2992
IF ~~ THEN EXIT
END

IF ~~ XZCHSuccess
SAY @2993
IF ~~ THEN DO ~SetGlobal("X#XZCHdone","GLOBAL",1)~ EXIT
END

IF ~~ XZCHFailure1
SAY @2994
IF ~~ THEN EXIT
END

IF ~~ XZCHFailure2
SAY @2995
IF ~~ THEN EXIT
END

IF ~~ XZCHFailure3
SAY @2996
IF ~~ THEN EXIT
END

IF ~~ XZCHFailure4
SAY @2997
IF ~~ THEN EXIT
END

END

APPEND ~%YESLICK_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN YECH
SAY @2998
++ @2999 EXIT

+ ~Global("X#YECHdone","GLOBAL",1) RandomNum(4,1)~ + @3000 + YECHFailure1
+ ~Global("X#YECHdone","GLOBAL",1) RandomNum(4,2)~ + @3000 + YECHFailure2
+ ~Global("X#YECHdone","GLOBAL",1) RandomNum(4,3)~ + @3000 + YECHFailure3
+ ~Global("X#YECHdone","GLOBAL",1) RandomNum(4,4)~ + @3000 + YECHFailure4

+ ~!Global("X#YECHdone","GLOBAL",1) RandomNum(5,1)~ + @3001 + YECHSuccess
+ ~!Global("X#YECHdone","GLOBAL",1) RandomNum(5,2)~ + @3001 + YECHFailure1
+ ~!Global("X#YECHdone","GLOBAL",1) RandomNum(5,3)~ + @3001 + YECHFailure2
+ ~!Global("X#YECHdone","GLOBAL",1) RandomNum(5,4)~ + @3001 + YECHFailure3
+ ~!Global("X#YECHdone","GLOBAL",1) RandomNum(5,5)~ + @3001 + YECHFailure4

+ ~!Global("X#YECHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3002 + YECHSuccess
+ ~!Global("X#YECHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3002 + YECHFailure1

+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3002 + YECHSuccess
+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3002 + YECHFailure1
+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3002 + YECHFailure2
+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3002 + YECHFailure3
+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3002 + YECHFailure4

+ ~!Global("X#YECHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3003 + YECHSuccess
+ ~!Global("X#YECHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3003 + YECHFailure2

+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3003 + YECHSuccess
+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3003 + YECHFailure1
+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3003 + YECHFailure2
+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3003 + YECHFailure3
+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3003 + YECHFailure4

+ ~!Global("X#YECHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3004 + YECHSuccess
+ ~!Global("X#YECHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3004 + YECHFailure3

+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3004 + YECHSuccess
+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3004 + YECHFailure1
+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3004 + YECHFailure3
+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3004 + YECHFailure2
+ ~!Global("X#YECHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3004 + YECHFailure4

+ ~RandomNum(8,1)~ + @3005 + YeslickPID1.1
+ ~RandomNum(8,2)~ + @3005 + YeslickPID1.2
+ ~RandomNum(8,3)~ + @3005 + YeslickPID1.3
+ ~RandomNum(8,4)~ + @3005 + YeslickPID1.4
+ ~RandomNum(8,5)~ + @3005 + YeslickPID1.5
+ ~RandomNum(8,6)~ + @3005 + YeslickPID1.6
+ ~RandomNum(8,7)~ + @3005 + YeslickPID1.7
+ ~RandomNum(8,8)~ + @3005 + YeslickPID1.8

+ ~RandomNum(8,1)~ + @3006 + YeslickPID2.1
+ ~RandomNum(8,2)~ + @3006 + YeslickPID2.2
+ ~RandomNum(8,3)~ + @3006 + YeslickPID2.3
+ ~RandomNum(8,4)~ + @3006 + YeslickPID2.4
+ ~RandomNum(8,5)~ + @3006 + YeslickPID2.5
+ ~RandomNum(8,6)~ + @3006 + YeslickPID2.6
+ ~RandomNum(8,7)~ + @3006 + YeslickPID2.7
+ ~RandomNum(8,8)~ + @3006 + YeslickPID2.8

+ ~%VoiceStrange%~ + @3007 + YeslickVoice
END

/* SetPlayerSound entries for _YESLIC.CRE... */
IF ~~ YeslickVoice
SAY @11
IF ~~ THEN DO ~SetName(@3008)
SetPlayerSound(Myself,@3009,0)
SetPlayerSound(Myself,@3010,1)
SetPlayerSound(Myself,@3011,2)
SetPlayerSound(Myself,@3012,3)
SetPlayerSound(Myself,@3013,4)
SetPlayerSound(Myself,@3014,5)
SetPlayerSound(Myself,@3015,6)
SetPlayerSound(Myself,@3016,7)
SetPlayerSound(Myself,@3017,8)
SetPlayerSound(Myself,@3018,9)
SetPlayerSound(Myself,@3018,10)
SetPlayerSound(Myself,@3018,11)
SetPlayerSound(Myself,@3018,12)
SetPlayerSound(Myself,@3018,13)
SetPlayerSound(Myself,@3019,18)
SetPlayerSound(Myself,@3020,19)
SetPlayerSound(Myself,@3021,20)
SetPlayerSound(Myself,@3022,21)
SetPlayerSound(Myself,@3023,22)
SetPlayerSound(Myself,@3024,23)
SetPlayerSound(Myself,@3025,24)
SetPlayerSound(Myself,@3026,25)
SetPlayerSound(Myself,@3027,26)
SetPlayerSound(Myself,@3028,27)
SetPlayerSound(Myself,@3029,28)
SetPlayerSound(Myself,@3027,29)
SetPlayerSound(Myself,@3028,30)
SetPlayerSound(Myself,@3029,31)
SetPlayerSound(Myself,@3030,32)
SetPlayerSound(Myself,@3031,33)
SetPlayerSound(Myself,@3032,34)
SetPlayerSound(Myself,@3030,35)
SetPlayerSound(Myself,@3031,36)
SetPlayerSound(Myself,@3032,37)
SetPlayerSound(Myself,@3030,38)
SetPlayerSound(Myself,@3033,39)
SetPlayerSound(Myself,@3034,40)
SetPlayerSound(Myself,@3035,41)
SetPlayerSound(Myself,@3036,42)
SetPlayerSound(Myself,@3037,43)
SetPlayerSound(Myself,@3038,44)
SetPlayerSound(Myself,@3039,47)
SetPlayerSound(Myself,@3040,50)
SetPlayerSound(Myself,@3041,53)
SetPlayerSound(Myself,@3042,54)
SetPlayerSound(Myself,@3043,55)
SetPlayerSound(Myself,@3044,58)
SetPlayerSound(Myself,@3045,59)
SetPlayerSound(Myself,@3027,62)
SetPlayerSound(Myself,@3027,63)
SetPlayerSound(Myself,@3028,64)
SetPlayerSound(Myself,@3046,74)~EXIT
END

IF ~~ YeslickPID1.1
SAY @3047
IF ~~ EXIT
END

IF ~~ YeslickPID1.2
SAY @3048
IF ~~ EXIT
END

IF ~~ YeslickPID1.3
SAY @3049
IF ~~ EXIT
END

IF ~~ YeslickPID1.4
SAY @3050
IF ~~ EXIT
END

IF ~~ YeslickPID1.5
SAY @3051
IF ~~ EXIT
END

IF ~~ YeslickPID1.6
SAY @3052
IF ~~ EXIT
END

IF ~~ YeslickPID1.7
SAY @3053
IF ~~ EXIT
END

IF ~~ YeslickPID1.8
SAY @3054
IF ~~ EXIT
END

IF ~~ YeslickPID2.1
SAY @3055
IF ~~ EXIT
END

IF ~~ YeslickPID2.2
SAY @3056
IF ~~ EXIT
END

IF ~~ YeslickPID2.3
SAY @3057
IF ~~ EXIT
END

IF ~~ YeslickPID2.4
SAY @3058
IF ~~ EXIT
END

IF ~~ YeslickPID2.5
SAY @3059
IF ~~ EXIT
END

IF ~~ YeslickPID2.6
SAY @3060
IF ~~ EXIT
END

IF ~~ YeslickPID2.7
SAY @3061
IF ~~ EXIT
END

IF ~~ YeslickPID2.8
SAY @3062
IF ~~ EXIT
END

IF ~~ YECHSuccess
SAY @3063
= @3064
= @3065
IF ~~ THEN DO ~SetGlobal("X#YECHdone","GLOBAL",1)~ EXIT
END

IF ~~ YECHFailure1
SAY @3066
IF ~~ THEN EXIT
END

IF ~~ YECHFailure2
SAY @3067
IF ~~ THEN EXIT
END

IF ~~ YECHFailure3
SAY @3068
IF ~~ THEN EXIT
END

IF ~~ YECHFailure4
SAY @3068
IF ~~ THEN EXIT
END

END

APPEND ~%CORAN_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR% OR(2) !Global("P#CoranMatch","GLOBAL",1) Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN BEGIN COCH
SAY @3069
++ @3070 EXIT
+ ~Global("P#CoCHdone","GLOBAL",1) Gender(Player1, MALE)~ + @3071 + COCHMFailure
+ ~Global("P#CoCHdone","GLOBAL",1) Gender(Player1,FEMALE)~ + @3071 + COCHFFailure_1

+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(4,1)~ + @3072 + COCHSuccess
+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(4,2)~ + @3072 + COCHMFailure
+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(4,3)~ + @3072 + COCHMFailure
+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(4,4)~ + @3072 + COCHMFailure

+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(4,1)~ + @3072 + COCHSuccess
+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(4,2)~ + @3072 + COCHFFailure_1
+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(4,3)~ + @3072 + COCHFFailure_1
+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(4,4)~ + @3072 + COCHFFailure_2

+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3073 + COCHSuccess
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3073 + COCHMFailure

+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,1)~ + @3073 + COCHSuccess
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,2)~ + @3073 + COCHMFailure
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,3)~ + @3073 + COCHMFailure
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,4)~ + @3073 + COCHMFailure

+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3074 + COCHSuccess
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3074 + COCHMFailure

+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,1)~ + @3074 + COCHSuccess
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,2)~ + @3074 + COCHMFailure
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,3)~ + @3074 + COCHMFailure
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,4)~ + @3074 + COCHMFailure

+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3075 + COCHSuccess
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3075 + COCHMFailure

+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,1)~ + @3075 + COCHSuccess
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,2)~ + @3075 + COCHMFailure
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,3)~ + @3075 + COCHMFailure
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,4)~ + @3075 + COCHMFailure

+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3073 + COCHSuccess
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3073 + COCHFFailure_1

+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,1)~ + @3073 + COCHSuccess
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,2)~ + @3073 + COCHFFailure_1
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,3)~ + @3073 + COCHFFailure_2
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,4)~ + @3073 + COCHFFailure_1

+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3076 + COCHSuccess
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3076 + COCHFFailure_1

+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,1)~ + @3076 + COCHSuccess
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,2)~ + @3076 + COCHFFailure_1
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,3)~ + @3076 + COCHFFailure_1
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,4)~ + @3076 + COCHFFailure_2

+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3075 + COCHSuccess
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3075 + COCHFFailure_2

+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,1)~ + @3075 + COCHSuccess
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,2)~ + @3075 + COCHFFailure_1
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,3)~ + @3075 + COCHFFailure_1
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,4)~ + @3075 + COCHFFailure_1

+ ~Gender(Player1,FEMALE) RandomNum(4,1)~ + @3077 + X#COMaiden5
+ ~Gender(Player1,FEMALE) RandomNum(4,2)~ + @3077 + X#COMaiden6
+ ~Gender(Player1,FEMALE) RandomNum(4,3)~ + @3077 + X#COMaiden7
+ ~Gender(Player1,FEMALE) RandomNum(4,4)~ + @3077 + X#COMaiden8

+ ~Gender(Player1,MALE) RandomNum(4,1)~ + @3077 + X#COMaiden1
+ ~Gender(Player1,MALE) RandomNum(4,2)~ + @3077 + X#COMaiden2
+ ~Gender(Player1,MALE) RandomNum(4,3)~ + @3077 + X#COMaiden3
+ ~Gender(Player1,MALE) RandomNum(4,4)~ + @3077 + X#COMaiden4

+ ~RandomNum(6,1)~ + @3078 + X#CORomantic1
+ ~RandomNum(6,2)~ + @3078 + X#CORomantic2
+ ~RandomNum(6,3)~ + @3078 + X#CORomantic3
+ ~RandomNum(6,4)~ + @3078 + X#CORomantic4
+ ~RandomNum(6,5)~ + @3078 + X#CORomantic5
+ ~RandomNum(6,6)~ + @3078 + X#CORomantic6

+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) !Global("P#CoranWyvern","GLOBAL",1) RandomNum(3,1)~ + @3079 + X#COAction1
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) !Global("P#CoranWyvern","GLOBAL",1) RandomNum(3,2)~ + @3079 + X#COAction2
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) !Global("P#CoranWyvern","GLOBAL",1) RandomNum(3,3)~ + @3079 + X#COAction3

+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) Global("P#CoranWyvern","GLOBAL",1) RandomNum(3,1)~ + @3079 + X#COAction4
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) Global("P#CoranWyvern","GLOBAL",1) RandomNum(3,2)~ + @3079 + X#COAction5
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) Global("P#CoranWyvern","GLOBAL",1) RandomNum(3,3)~ + @3079 + X#COAction6

+ ~Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,1)~ + @3079 + X#COAction5
+ ~Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,2)~ + @3079 + X#COAction7
+ ~Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,3)~ + @3079 + X#COAction8
+ ~Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,4)~ + @3079 + X#COAction9

+ ~Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,1) AreaCheck("%Candlekeep_Ch6%")~ + @3079 + X#COAction10
+ ~Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,2) AreaCheck("%Candlekeep_Ch6%")~ + @3079 + X#COAction11
+ ~Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,3) AreaCheck("%Candlekeep_Ch6%")~ + @3079 + X#COAction12
+ ~Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,4) AreaCheck("%Candlekeep_Ch6%")~ + @3079 + X#COAction5

+ ~Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,1) !AreaCheck("%Candlekeep_Ch6%") OR(2) AreaCheck("%Candlekeep_Catacombs_L1%") AreaCheck("%Candlekeep_Catacombs_L2%")~ + @3079 + X#COAction13
+ ~Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,2) !AreaCheck("%Candlekeep_Ch6%") OR(2) AreaCheck("%Candlekeep_Catacombs_L1%") AreaCheck("%Candlekeep_Catacombs_L2%")~ + @3079 + X#COAction14
+ ~Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,3) !AreaCheck("%Candlekeep_Ch6%")OR(2) AreaCheck("%Candlekeep_Catacombs_L1%") AreaCheck("%Candlekeep_Catacombs_L2%")~ + @3079 + X#COAction15
+ ~Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,4) !AreaCheck("%Candlekeep_Ch6%") OR(2) AreaCheck("%Candlekeep_Catacombs_L1%") AreaCheck("%Candlekeep_Catacombs_L2%")~ + @3079 + X#COAction5

+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,1)~ + @3079 + X#COAction16
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,2)~ + @3079 + X#COAction17
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,3)~ + @3079 + X#COAction18
+ ~Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,4)~ + @3079 + X#COAction5

+ ~RandomNum(5,1)~ + @3080 + CoStory1.1
+ ~RandomNum(5,2)~ + @3080 + CoStory1.2
+ ~RandomNum(5,3)~ + @3080 + CoStory1.3
+ ~RandomNum(5,4)~ + @3080 + CoStory1.4
+ ~RandomNum(5,5)~ + @3080 + CoStory1.5

+ ~Global("P#CoranRomanceInactive","GLOBAL",1)
OR(2)
Global("X#XaRomanceInactive","GLOBAL",1)
Global("X#XaRomanceActive","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceActive","GLOBAL",3)
Global("X#AjantisRomanceActive","GLOBAL",0)
Global("P#CoranRomCutByOther","GLOBAL",1)~ + @3081 + X#MakeUpCoran

+ ~Global("X#CoranHanaliRune","GLOBAL",10)~ + @3082 DO ~SetGlobal("X#CoranHanaliRune","GLOBAL",12)~ + X#CoHa6.1

+ ~%VoiceStrange%~ + @3083 + CoranVoice
END

/* SetPlayerSound entries for _CORAN.CRE... */
IF ~~ CoranVoice
SAY @11
IF ~~ THEN DO ~SetName(@3084)
SetPlayerSound(Myself,@3085,0)
SetPlayerSound(Myself,@3086,1)
SetPlayerSound(Myself,@3087,2)
SetPlayerSound(Myself,@3088,3)
SetPlayerSound(Myself,@3089,4)
SetPlayerSound(Myself,@3090,5)
SetPlayerSound(Myself,@3091,6)
SetPlayerSound(Myself,@3092,7)
SetPlayerSound(Myself,@3093,8)
SetPlayerSound(Myself,@3094,9)
SetPlayerSound(Myself,@3094,10)
SetPlayerSound(Myself,@3094,11)
SetPlayerSound(Myself,@3094,12)
SetPlayerSound(Myself,@3094,13)
SetPlayerSound(Myself,@3095,18)
SetPlayerSound(Myself,@3096,19)
SetPlayerSound(Myself,@3097,20)
SetPlayerSound(Myself,@3098,21)
SetPlayerSound(Myself,@3099,22)
SetPlayerSound(Myself,@3100,23)
SetPlayerSound(Myself,@3101,24)
SetPlayerSound(Myself,@3102,25)
SetPlayerSound(Myself,@3103,26)
SetPlayerSound(Myself,@3104,27)
SetPlayerSound(Myself,@3105,28)
SetPlayerSound(Myself,@3103,29)
SetPlayerSound(Myself,@3104,30)
SetPlayerSound(Myself,@3105,31)
SetPlayerSound(Myself,@3106,32)
SetPlayerSound(Myself,@3107,33)
SetPlayerSound(Myself,@3108,34)
SetPlayerSound(Myself,@3106,35)
SetPlayerSound(Myself,@3107,36)
SetPlayerSound(Myself,@3108,37)
SetPlayerSound(Myself,@3106,38)
SetPlayerSound(Myself,@3109,39)
SetPlayerSound(Myself,@3110,40)
SetPlayerSound(Myself,@3111,41)
SetPlayerSound(Myself,@3112,42)
SetPlayerSound(Myself,@3113,43)
SetPlayerSound(Myself,@3114,47)
SetPlayerSound(Myself,@3115,48)
SetPlayerSound(Myself,@3116,49)
SetPlayerSound(Myself,@3117,53)
SetPlayerSound(Myself,@3118,54)
SetPlayerSound(Myself,@3119,55)
SetPlayerSound(Myself,@3120,58)
SetPlayerSound(Myself,@3121,59)
SetPlayerSound(Myself,@3103,62)
SetPlayerSound(Myself,@3103,63)
SetPlayerSound(Myself,@3104,64)
SetPlayerSound(Myself,@3122,74)~ EXIT
END

IF ~~ X#CoHa6.1
SAY @3123
IF ~AreaType(FOREST)~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",0)~ GOTO X#CoHa6.2
IF ~!AreaType(FOREST)~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",0)~ GOTO X#CoHa6.3
END

IF ~~ X#MakeUpCoran
SAY @3124
IF ~~ THEN DO ~SetGlobal("P#CoranRomanceInactive","GLOBAL",0) SetGlobal("P#CoranRomCutByOther","GLOBAL",2)~ EXIT
END

IF ~~ X#COMaiden8
SAY @3125
IF ~~ THEN EXIT
END

IF ~~ X#COMaiden7
SAY @3126
IF ~~ THEN EXIT
END

IF ~~ X#COMaiden6
SAY @3127
IF ~~ THEN EXIT
END

IF ~~ X#COMaiden5
SAY @3128
IF ~~ THEN EXIT
END

IF ~~ X#COMaiden4
SAY @3129
IF ~~ THEN EXIT
END

IF ~~ X#COMaiden3
SAY @3130
IF ~~ THEN EXIT
END

IF ~~ X#COMaiden2
SAY @3131
IF ~~ THEN EXIT
END

IF ~~ X#COMaiden1
SAY @3132
IF ~~ THEN EXIT
END

IF ~~ X#COAction18
SAY @3133
= @3134
IF ~~ THEN EXIT
END

IF ~~ X#COAction17
SAY @3135
IF ~~ THEN EXIT
END

IF ~~ X#COAction16
SAY @3136
IF ~~ THEN EXIT
END

IF ~~ X#COAction15
SAY @3137
IF ~~ THEN EXIT
END

IF ~~ X#COAction14
SAY @3138
= @3139
IF ~~ THEN EXIT
END

IF ~~ X#COAction13
SAY @3140
IF ~~ THEN EXIT
END

IF ~~ X#COAction12
SAY @3141
IF ~~ THEN EXIT
END

IF ~~ X#COAction11
SAY @3142
= @3143
IF ~~ THEN EXIT
END

IF ~~ X#COAction10
SAY @3144
= @3145
IF ~~ THEN EXIT
END

IF ~~ X#COAction9
SAY @3146
= @3147
IF ~~ THEN EXIT
END

IF ~~ X#COAction8
SAY @3148
IF ~~ THEN EXIT
END

IF ~~ X#COAction7
SAY @3149
IF ~~ THEN EXIT
END

IF ~~ X#COAction6
SAY @3150
IF ~~ THEN EXIT
END

IF ~~ X#COAction5
SAY @3151
IF ~~ THEN EXIT
END
IF ~~ X#COAction4
SAY @3152
IF ~~ THEN EXIT
END

IF ~~ X#COAction3
SAY @3153
IF ~~ THEN EXIT
END


IF ~~ X#COAction2
SAY @3154
IF ~~ THEN EXIT
END

IF ~~ X#COAction1
SAY @3155
IF ~~ THEN EXIT
END

IF ~~ X#CORomantic1
SAY @3156
IF ~~ THEN EXIT
END

IF ~~ X#CORomantic2
SAY @3157
= @3158
IF ~~ THEN EXIT
END

IF ~~ X#CORomantic3
SAY @3159
IF ~~ THEN EXIT
END

IF ~~ X#CORomantic4
SAY @3160
IF ~~ THEN EXIT
END

IF ~~ X#CORomantic5
SAY @3161
IF ~~ THEN EXIT
END

IF ~~ X#CORomantic6
SAY @3162
++ @3163 + X#CORomantic6.1
++ @3164 + X#CORomantic6.2
++ @3165 + X#CORomantic6.3
END

IF ~~ X#CORomantic6.1
SAY @3166
IF ~~ THEN EXIT
END

IF ~~ X#CORomantic6.2
SAY @3167
IF ~~ THEN EXIT
END

IF ~~ X#CORomantic6.3
SAY @3168
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COCHSuccess
SAY @3169
IF ~~ THEN DO ~SetGlobal("P#CoCHdone","GLOBAL",1)~ EXIT
END


IF ~~ THEN BEGIN COCHMFailure
SAY @3170
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COCHFFailure_1
SAY @3171 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN COCHFFailure_2
SAY @3172 
IF ~~ THEN EXIT
END

IF ~IsGabber(Player1) %BGT_VAR% Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1)~ THEN BEGIN CoranFlirt
SAY @3173
++ @3174 + CHFEMALE

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4)  Global("P#CoranLover","GLOBAL",0) !Global("P#CoranRomanceInactive","GLOBAL",1)~ + @3175 + CoKiss1

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) GlobalGT("P#CoranLover","GLOBAL",0) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(7,1)~ + @3176 + CoKissL1.1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) GlobalGT("P#CoranLover","GLOBAL",0) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(7,2)~ + @3176 + CoKissL1.2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) GlobalGT("P#CoranLover","GLOBAL",0) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(7,3)~ + @3176 + CoKissL1.3
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) GlobalGT("P#CoranLover","GLOBAL",0) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(7,4)~ + @3176 + CoKissL1.4
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) GlobalGT("P#CoranLover","GLOBAL",0) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(7,5)~ + @3176 + CoKissL1.5
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) GlobalGT("P#CoranLover","GLOBAL",0) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(7,6)~ + @3176 + CoKissL1.6
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) GlobalGT("P#CoranLover","GLOBAL",0) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(7,7)~ + @3176 + CoKissL1.7

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) AreaType(OUTDOOR) TimeLT(7) TimeGT(19)~ + @3177 + Stars
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1)~ + @3178 + Sad
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) GlobalGT("P#CoranLover","GLOBAL",1) TimeLT(20) TimeGT(6)~ + @3179 + Summer
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) AreaType(FOREST) RandomNum(3,1)~ + @3180 + Flo1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) AreaType(FOREST) RandomNum(3,2)~ + @3180 + Flo2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) AreaType(FOREST) RandomNum(3,3)~ + @3180 + Flo3
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,1)~ + @3181 + Cheek1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,2)~ + @3181 + Cheek2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,3)~ + @3181 + Cheek3
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,4)~ + @3181 + Cheek4
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) AreaType(DUNGEON) RandomNum(4,1) GlobalGT("P#CoranLover","GLOBAL",1)~ + @3182 + Left1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) AreaType(DUNGEON) RandomNum(4,2) GlobalGT("P#CoranLover","GLOBAL",1)~ + @3182 + Left2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) AreaType(DUNGEON) RandomNum(4,3) GlobalGT("P#CoranLover","GLOBAL",1)~ + @3182 + Left10
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) AreaType(DUNGEON) RandomNum(4,4) GlobalGT("P#CoranLover","GLOBAL",1)~ + @3182 + Left11
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(3,1)~ + @3183 + Theq1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(3,2)~ + @3183 + Theq2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(3,3)~ + @3183 + Theq3
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1)~ + @3184 + CoLean
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) HPPercentGT("coran",50)~ + @3185 + CoHealth1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) !HPPercentGT("coran",50)~ + @3185 + CoHealth2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) AreaType(FOREST) GlobalGT("P#CoranLover","GLOBAL",1) !Global("P#CoEar","GLOBAL",1) RandomNum(2,1)~ + @3186 + CoEar1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) AreaType(FOREST) GlobalGT("P#CoranLover","GLOBAL",1) !Global("P#CoEar","GLOBAL",1) RandomNum(2,2)~ + @3186 + CoEar2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1)~ + @3187 + CoShine
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) GlobalLT("P#CoranLover","GLOBAL",1)~ + @3188 + CoHood
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) GlobalLT("P#CoranLover", "GLOBAL",1)~ + @3189 + CoHip
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(5,1)~ + @3080 + CoStory1.1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(5,2)~ + @3080 + CoStory1.2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(5,3)~ + @3080 + CoStory1.3
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(5,4)~ + @3080 + CoStory1.4
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(5,5)~ + @3080 + CoStory1.5
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) !Global("X#HairColor","GLOBAL",1) !Global("X#EyeColor","GLOBAL",1) RandomNum(3,1)~ + @3190 + AskHair
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) !Global("X#HairColor","GLOBAL",1) !Global("X#EyeColor","GLOBAL",1) RandomNum(3,2)~ + @3190 + AskEye
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) !Global("X#HairColor","GLOBAL",1) !Global("X#EyeColor","GLOBAL",1) RandomNum(3,3)~ + @3190 + AskNot
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) Global("X#HairColor","GLOBAL",1) !Global("X#EyeColor","GLOBAL",1) RandomNum(2,1)~ + @3190 + AskEye
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) Global("X#HairColor","GLOBAL",1) !Global("X#EyeColor","GLOBAL",1) RandomNum(2,2)~ + @3190 + AskNot
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) !Global("X#HairColor","GLOBAL",1) Global("X#EyeColor","GLOBAL",1) RandomNum(2,1)~ + @3190 + AskHair
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) !Global("X#HairColor","GLOBAL",1) Global("X#EyeColor","GLOBAL",1) RandomNum(2,2)~ + @3190 + AskNot
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) Global("X#HairColor","GLOBAL",1) Global("X#EyeColor","GLOBAL",1)~ + @3190 + AskNot
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(3,1) OR(2) Global("P#CoranRomancePath","GLOBAL",1) Global("P#CoranRomancePath","GLOBAL",6)~ + @3191 + CoPalm1.1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(3,2) OR(2) Global("P#CoranRomancePath","GLOBAL",1) Global("P#CoranRomancePath","GLOBAL",6)~ + @3191 + CoPalm1.2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(3,3) OR(2) Global("P#CoranRomancePath","GLOBAL",1) Global("P#CoranRomancePath","GLOBAL",6)~ + @3191 + CoPalm1.3
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) AreaType(FOREST) GlobalLT("P#CoranLover","GLOBAL",1)~ + @3192 + CoBerry
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) AreaType(DUNGEON)~ + @3193 + CoCold
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(2,1) Race(Player1,HUMAN) TimeOfDay(NIGHT)~ + @3194 + CoTorch1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(2,2) Race(Player1,HUMAN) TimeOfDay(NIGHT)~ + @3194 + CoTorch2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,1) Race(Player1,ELF)~ + @3195 + CoElfCompliment1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,2) Race(Player1,ELF)~ + @3195 + CoElfCompliment2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,3) Race(Player1,ELF)~ + @3195 + CoElfCompliment3
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,4) Race(Player1,ELF)~ + @3195 + CoElfCompliment4
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,1) !Race(Player1,ELF)~ + @3196 + CoNElfCompliment1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,2) !Race(Player1,ELF)~ + @3196 + CoNElfCompliment2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,3) !Race(Player1,ELF)~ + @3196 + CoNElfCompliment3
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,4) !Race(Player1,ELF)~ + @3196 + CoNElfCompliment4
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,1) GlobalLT("P#CoranLover","GLOBAL",1)~ + @3197 + CoHandEarly1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,2) GlobalLT("P#CoranLover","GLOBAL",1)~ + @3197 + CoHandEarly2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,3) GlobalLT("P#CoranLover","GLOBAL",1)~ + @3197 + CoHandEarly3
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1) RandomNum(4,4) GlobalLT("P#CoranLover","GLOBAL",1)~ + @3197 + CoHandEarly4
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1)~ + @3198 DO ~SetGlobal("P#CoranDisableFlirts","GLOBAL",1)~ EXIT
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CFriendTalk","GLOBAL",4) !Global("P#CoranRomanceInactive","GLOBAL",1)~ + @3199 EXIT

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Gender(Player1,FEMALE) RandomNum(4,1)~ + @3077 + X#COMaiden5
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Gender(Player1,FEMALE) RandomNum(4,2)~ + @3077 + X#COMaiden6
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Gender(Player1,FEMALE) RandomNum(4,3)~ + @3077 + X#COMaiden7
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Gender(Player1,FEMALE) RandomNum(4,4)~ + @3077 + X#COMaiden8

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) RandomNum(6,1)~ + @3078 + X#CORomantic1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) RandomNum(6,2)~ + @3078 + X#CORomantic2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) RandomNum(6,3)~ + @3078 + X#CORomantic3
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) RandomNum(6,4)~ + @3078 + X#CORomantic4
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) RandomNum(6,5)~ + @3078 + X#CORomantic5
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) RandomNum(6,6)~ + @3078 + X#CORomantic6

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) !Global("P#CoranWyvern","GLOBAL",1) RandomNum(3,1)~ + @3079 + X#COAction1
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) !Global("P#CoranWyvern","GLOBAL",1) RandomNum(3,2)~ + @3079 + X#COAction2
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) !Global("P#CoranWyvern","GLOBAL",1) RandomNum(3,3)~ + @3079 + X#COAction3

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) Global("P#CoranWyvern","GLOBAL",1) RandomNum(3,1)~ + @3079 + X#COAction4
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) Global("P#CoranWyvern","GLOBAL",1) RandomNum(3,2)~ + @3079 + X#COAction5
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) Global("P#CoranWyvern","GLOBAL",1) RandomNum(3,3)~ + @3079 + X#COAction6

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,1)~ + @3079 + X#COAction5
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,2)~ + @3079 + X#COAction7
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,3)~ + @3079 + X#COAction8
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,4)~ + @3079 + X#COAction9

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,1) AreaCheck("%Candlekeep_Ch6%")~ + @3079 + X#COAction10
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,2) AreaCheck("%Candlekeep_Ch6%")~ + @3079 + X#COAction11
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,3) AreaCheck("%Candlekeep_Ch6%")~ + @3079 + X#COAction12
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,4) AreaCheck("%Candlekeep_Ch6%")~ + @3079 + X#COAction5

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,1) !AreaCheck("%Candlekeep_Ch6%") OR(2) AreaCheck("%Candlekeep_Catacombs_L1%") AreaCheck("%Candlekeep_Catacombs_L2%")~ + @3079 + X#COAction13
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,2) !AreaCheck("%Candlekeep_Ch6%") OR(2) AreaCheck("%Candlekeep_Catacombs_L1%") AreaCheck("%Candlekeep_Catacombs_L2%")~ + @3079 + X#COAction14
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,3) !AreaCheck("%Candlekeep_Ch6%") OR(2) AreaCheck("%Candlekeep_Catacombs_L1%") AreaCheck("%Candlekeep_Catacombs_L2%")~ + @3079 + X#COAction15
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(4,4) !AreaCheck("%Candlekeep_Ch6%") OR(2) AreaCheck("%Candlekeep_Catacombs_L1%") AreaCheck("%Candlekeep_Catacombs_L2%")~ + @3079 + X#COAction5

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,1)~ + @3079 + X#COAction16
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,2)~ + @3079 + X#COAction17
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,3)~ + @3079 + X#COAction18
+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) !GlobalGT("P#CFriendTalk","GLOBAL",4) Global("P#CoranLover","GLOBAL",0) Global("Chapter","GLOBAL",%tutu_chapter_7%) RandomNum(4,4)~ + @3079 + X#COAction5

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CoranLover","GLOBAL",0) Global("X#CoranHanali","GLOBAL",0)~ + @3200 DO ~SetGlobal("X#CoranHanali","GLOBAL",1) SetGlobal("X#CoranHanaliRune","GLOBAL",1) RealSetGlobalTimer("X#CoHanaliTime","GLOBAL",10)~ + X#CoHa1

+ ~!Global("P#CoranDisableFlirts","GLOBAL",1) GlobalGT("P#CoranLover","GLOBAL",0) Global("X#CoranHanali","GLOBAL",1)~ + @3201 DO ~SetGlobal("X#CoranHanali","GLOBAL",3)~ EXIT
+ ~%VoiceStrange%~ + @3083 + CoranVoice
END

IF ~~ X#CoHa1
SAY @3202
IF ~~ THEN EXIT
END

IF ~~ X#CoHa6.2
SAY @3203
= @3204
= @3205
IF ~~ THEN EXIT
END

IF ~~ X#CoHa6.3
SAY @3206
= @3207
= @3208
IF ~~ THEN EXIT
END

IF ~~ CoKissL1.1
SAY @3209
IF ~~ THEN EXIT
END

IF ~~ CoKissL1.2
SAY @3210
IF ~~ THEN EXIT
END

IF ~~ CoKissL1.3
SAY @3211
IF ~~ THEN EXIT
END

IF ~~ CoKissL1.4
SAY @3212
IF ~~ THEN EXIT
END

IF ~~ CoKissL1.5
SAY @3213
IF ~~ THEN EXIT
END

IF ~~ CoKissL1.6
SAY @3214
IF ~~ THEN EXIT
END

IF ~~ CoKissL1.7
SAY @3215
IF ~~ THEN EXIT
END

IF ~~ CoKiss1
SAY @3216
+ ~RandomNum(3,1)~ + @3217 + CoKiss1.1
+ ~RandomNum(3,2)~ + @3217 + CoKiss1.2
+ ~RandomNum(3,3)~ + @3217 + CoKiss1.3
++ @3218 + CoKiss1.4
+ ~RandomNum(3,1)~ + @3219 + CoKiss1.1
+ ~RandomNum(3,2)~ + @3219 + CoKiss1.5
+ ~RandomNum(3,3)~ + @3220 + CoKiss1.6
END

IF ~~ CoKiss1.1
SAY @3221
IF ~~ THEN EXIT
END

IF ~~ CoKiss1.2
SAY @3222
IF ~~ THEN EXIT
END

IF ~~ CoKiss1.3
SAY @3223
IF ~~ THEN EXIT
END

IF ~~ CoKiss1.4
SAY @3224
= @3225
IF ~~ THEN EXIT
END

IF ~~ CoKiss1.5
SAY @3226
IF ~~ THEN EXIT
END

IF ~~ CoKiss1.6
SAY @3227
IF ~~ THEN EXIT
END


IF ~~ CHFEMALE
SAY @3228

++ @3070 EXIT
+ ~Global("P#CoCHdone","GLOBAL",1) Gender(Player1, MALE)~ + @3071 + COCHMFailure
+ ~Global("P#CoCHdone","GLOBAL",1) Gender(Player1,FEMALE)~ + @3071 + COCHFFailure_1

+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(4,1)~ + @3072 + COCHSuccess
+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(4,2)~ + @3072 + COCHMFailure
+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(4,3)~ + @3072 + COCHMFailure
+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1, MALE) RandomNum(4,4)~ + @3072 + COCHMFailure

+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(4,1)~ + @3072 + COCHSuccess
+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(4,2)~ + @3072 + COCHFFailure_1
+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(4,3)~ + @3072 + COCHFFailure_1
+ ~!Global("P#CoCHdone","GLOBAL",1) Gender(Player1,FEMALE) RandomNum(4,4)~ + @3072 + COCHFFailure_2

+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3073 + COCHSuccess
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3073 + COCHMFailure

+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,1)~ + @3073 + COCHSuccess
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,2)~ + @3073 + COCHMFailure
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,3)~ + @3073 + COCHMFailure
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,4)~ + @3073 + COCHMFailure

+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3074 + COCHSuccess
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3074 + COCHMFailure

+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,1)~ + @3074 + COCHSuccess
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,2)~ + @3074 + COCHMFailure
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,3)~ + @3074 + COCHMFailure
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,4)~ + @3074 + COCHMFailure

+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3075 + COCHSuccess
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3075 + COCHMFailure

+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,1)~ + @3075 + COCHSuccess
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,2)~ + @3075 + COCHMFailure
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,3)~ + @3075 + COCHMFailure
+ ~Gender(Player1, MALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,4)~ + @3075 + COCHMFailure

+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3073 + COCHSuccess
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3073 + COCHFFailure_1

+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,1)~ + @3073 + COCHSuccess
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,2)~ + @3073 + COCHFFailure_1
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,3)~ + @3073 + COCHFFailure_2
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(4,4)~ + @3073 + COCHFFailure_1

+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3076 + COCHSuccess
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3076 + COCHFFailure_1

+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,1)~ + @3076 + COCHSuccess
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,2)~ + @3076 + COCHFFailure_1
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,3)~ + @3076 + COCHFFailure_1
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(4,4)~ + @3076 + COCHFFailure_2

+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3075 + COCHSuccess
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3075 + COCHFFailure_2

+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,1)~ + @3075 + COCHSuccess
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,2)~ + @3075 + COCHFFailure_1
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,3)~ + @3075 + COCHFFailure_1
+ ~Gender(Player1,FEMALE) !Global("P#CoCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(4,4)~ + @3075 + COCHFFailure_1
END

IF ~~ THEN BEGIN Stars
SAY @3229
+ ~RandomNum(4,1)~ + @3230 + Star1
+ ~RandomNum(4,2)~ + @3230 + Star2
+ ~RandomNum(4,3)~ + @3230 + Star3
+ ~RandomNum(4,4)~ + @3230 + Star4
+ ~RandomNum(3,1)~ + @3231 + Star5
+ ~RandomNum(3,2)~ + @3231 + Star6
+ ~RandomNum(3,3)~ + @3231 + Star7
+ ~RandomNum(3,1)~ + @3232 + Star8
+ ~RandomNum(3,2)~ + @3232 + Star9
+ ~RandomNum(3,3)~ + @3232 + Star10
END

IF ~~ THEN BEGIN Star1
SAY @3233
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Star2
SAY @3234
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Star3
SAY @3235
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Star4
SAY @3236
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Star5
SAY @3237
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Star6
SAY @3238
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Star7
SAY @3239
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Star8
SAY @3240
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Star9
SAY @3241
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Star10
SAY @3242
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Sad
SAY @3243
+ ~RandomNum(3,1)~ + @3244 + Sad1
+ ~RandomNum(3,2)~ + @3244 + Sad2
+ ~RandomNum(3,3)~ + @3244 + Sad3
+ ~RandomNum(3,1)~ + @3245 + Sad4
+ ~RandomNum(3,2)~ + @3245 + Sad5
+ ~RandomNum(3,3)~ + @3245 + Sad6
+ ~RandomNum(2,1)~ + @3246 + Sad7
+ ~RandomNum(2,2)~ + @3246 + Sad8
END

IF ~~ THEN BEGIN Sad1
SAY @3247
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Sad2
SAY @3248
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Sad3
SAY @3249
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Sad4
SAY @3250
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Sad5
SAY @3251
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Sad6
SAY @3252
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Sad7
SAY @3253
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Sad8
SAY @3253
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer
SAY @3254
++ @3255 + Summer1
END

IF ~~ THEN BEGIN Summer1
SAY @3256
+ ~RandomNum(3,1)~ + @3257 + Summer2
+ ~RandomNum(3,2)~ + @3257 + Summer3
+ ~RandomNum(3,3)~ + @3257 + Summer4
+ ~RandomNum(4,1)~ + @3258 + Summer5
+ ~RandomNum(4,2)~ + @3258 + Summer6
+ ~RandomNum(4,3)~ + @3258 + Summer7
+ ~RandomNum(4,4)~ + @3258 + Summer8
+ ~RandomNum(3,1)~ + @3259 + Summer9
+ ~RandomNum(3,2)~ + @3259 + Summer10
+ ~RandomNum(3,3)~ + @3259 + Summer11
+ ~RandomNum(3,1)~ + @3260 + Summer12
+ ~RandomNum(3,2)~ + @3260 + Summer13
+ ~RandomNum(3,3)~ + @3260 + Summer14
END

IF ~~ THEN BEGIN Summer2
SAY @3261
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer3
SAY @3262
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer4
SAY @3263
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer5
SAY @3264
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer6
SAY @3265
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer7
SAY @3266
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer8
SAY @3267
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer9
SAY @3268
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer10
SAY @3269
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer11
SAY @3270
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer12
SAY @3271
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer13
SAY @3272
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Summer14
SAY @3273
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Flo1
SAY @3274
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Flo2
SAY @3275
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Flo3
SAY @3276
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Cheek1
SAY @3277
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Cheek2
SAY @3278
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Cheek3
SAY @3279
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN Cheek4
SAY @3280
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left1
SAY @3281
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left2
SAY @3282
+ ~RandomNum(2,1)~ + @3283 + Left3
+ ~RandomNum(2,2)~ + @3283 + Left4
+ ~RandomNum(3,1)~ + @3284 + Left5
+ ~RandomNum(3,2)~ + @3284 + Left6
+ ~RandomNum(3,3)~ + @3284 + Left7
+ ~RandomNum(2,1)~ + @3285 + Left8
+ ~RandomNum(2,2)~ + @3285 + Left9
END

IF ~~ THEN BEGIN Left3
SAY @3286
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left4
SAY @3287
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left5
SAY @3288
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left6
SAY @3289
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left7
SAY @3290
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left8
SAY @3291
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left9
SAY @3292
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left10
SAY @3293
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left11
SAY @3294
+ ~RandomNum(2,1)~ + @3295 + Left13
+ ~RandomNum(2,2)~ + @3295 + Left14
+ ~RandomNum(3,1)~ + @3296 + Left15
+ ~RandomNum(3,2)~ + @3296 + Left16
+ ~RandomNum(3,3)~ + @3296 + Left17
+ ~RandomNum(4,1)~ + @3297 + Left18
+ ~RandomNum(4,2)~ + @3297 + Left19
+ ~RandomNum(4,3)~ + @3297 + Left20
+ ~RandomNum(4,4)~ + @3297 + Left21
END

IF ~~ THEN BEGIN Left13
SAY @3298
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left14
SAY @3299
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left15
SAY @3300
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left16
SAY @3301
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left17
SAY @3302
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left18
SAY @3303
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left19
SAY @3304
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left20
SAY @3301
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Left21
SAY @3302
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Theq1
SAY @3305
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Theq2
SAY @3306
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN Theq3
SAY @3307
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHandEarly1
SAY @3308
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHandEarly2
SAY @3309
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHandEarly3
SAY @3310
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHandEarly4
SAY @3311
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoElfCompliment1
SAY @3312
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoElfCompliment2
SAY @3313
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoElfCompliment3
SAY @3314
IF ~~ THEN EXIT
END
IF ~~ THEN BEGIN CoElfCompliment4
SAY @3315
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoNElfCompliment1
SAY @3316
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoNElfCompliment2
SAY @3317
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoNElfCompliment3
SAY @3318
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoNElfCompliment4
SAY @3319
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoTorch1
SAY @3320
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoTorch2
SAY @3321
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoCold
SAY @3322
+ ~RandomNum(3,1)~ + @3323 + CoCold1.1
+ ~RandomNum(3,2)~ + @3323 + CoCold1.2
+ ~RandomNum(3,3)~ + @3323 + CoCold1.3
+ ~RandomNum(3,1)~ + @3324 + CoCold2.1
+ ~RandomNum(3,2)~ + @3324 + CoCold2.2
+ ~RandomNum(3,3)~ + @3324 + CoCold2.3
+ ~RandomNum(2,1)~ + @3325 + CoCold3.1
+ ~RandomNum(2,2)~ + @3325 + CoCold3.2
END

IF ~~ THEN BEGIN CoCold1.1
SAY @3326
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoCold1.2
SAY @3327
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoCold1.3
SAY @3328
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoCold2.1
SAY @3329
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoCold2.2
SAY @3330
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoCold2.3
SAY @3331
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoCold3.1
SAY @3332
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoCold3.2
SAY @3333
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoBerry
SAY @3334
+ ~RandomNum(3,1)~ + @3335 + CoBerry1.1
+ ~RandomNum(3,2)~ + @3335 + CoBerry1.2
+ ~RandomNum(3,3)~ + @3335 + CoBerry1.3
+ ~RandomNum(2,1)~ + @3336 + CoBerry2.1
+ ~RandomNum(2,2)~ + @3336 + CoBerry2.2
END

IF ~~ THEN BEGIN CoBerry1.1
SAY @3337
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoBerry1.2
SAY @3338
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoBerry1.3
SAY @3339
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoBerry2.1
SAY @3340
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoBerry2.2
SAY @3341
++ @3342 EXIT
+ ~RandomNum(2,1)~ + @3343 + CoBerry3.1
+ ~RandomNum(2,2)~ + @3343 + CoBerry3.2
END

IF ~~ THEN BEGIN CoBerry3.1
SAY @3344
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoBerry3.2
SAY @3345
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoPalm1.1
SAY @3346
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoPalm1.2
SAY @3347
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoPalm1.3
SAY @3348
+ ~RandomNum(2,1)~ + @3349 + CoPalm1.4
+ ~RandomNum(2,2)~ + @3349 + CoPalm1.5
+ ~RandomNum(3,1)~ + @3350 + CoPalm1.6
+ ~RandomNum(3,2)~ + @3350 + CoPalm1.7
+ ~RandomNum(3,3)~ + @3350 + CoPalm1.8
END

IF ~~ THEN BEGIN CoPalm1.4
SAY @3351
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoPalm1.5
SAY @3352
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoPalm1.6
SAY @3353
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN CoPalm1.7
SAY @3354
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoPalm1.8
SAY @3355
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AskHair
SAY @3356
++ @3357 DO ~SetGlobal("X#BlondHair","GLOBAL",1) SetGlobal("X#HairColor","GLOBAL",1)~ + CoBlond
++ @3358 DO ~SetGlobal("X#RedHair","GLOBAL",1) SetGlobal("X#HairColor","GLOBAL",1)~ + CoRed
++ @3359 DO ~SetGlobal("X#BlackHair","GLOBAL",1) SetGlobal("X#HairColor","GLOBAL",1)~ + CoBlack
++ @3360 DO ~SetGlobal("X#WhiteHair","GLOBAL",1) SetGlobal("X#HairColor","GLOBAL",1)~ + CoWhite
++ @3361 DO ~SetGlobal("X#BrownHair","GLOBAL",1) SetGlobal("X#HairColor","GLOBAL",1)~ + CoBrown
++ @3362 EXIT
++ @3363 DO ~SetGlobal("X#UnusHair","GLOBAL",1) SetGlobal("X#HairColor","GLOBAL",1)~ + CoUnus
END

IF ~~ THEN BEGIN CoBlond
SAY @3364
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoRed
SAY @3365
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoBlack
SAY @3366
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoWhite
SAY @3367
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoBrown
SAY @3368
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoUnus
SAY @3369
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AskEye
SAY @3370
++ @3371 DO ~SetGlobal("X#BlueEye","GLOBAL",1) SetGlobal("X#EyeColor","GLOBAL",1)~ + CoBlue
++ @3372 DO ~SetGlobal("X#GreenEye","GLOBAL",1) SetGlobal("X#EyeColor","GLOBAL",1)~ + CoGreen
++ @3373 DO ~SetGlobal("X#BlackEye","GLOBAL",1) SetGlobal("X#EyeColor","GLOBAL",1)~ + CoBlackEye
++ @3374 DO ~SetGlobal("X#GreyEye","GLOBAL",1) SetGlobal("X#EyeColor","GLOBAL",1)~ + CoGrey
++ @3375 DO ~SetGlobal("X#HazelEye","GLOBAL",1) SetGlobal("X#EyeColor","GLOBAL",1)~ + CoHazel
++ @3357 DO ~SetGlobal("X#GoldEye","GLOBAL",1) SetGlobal("X#EyeColor","GLOBAL",1)~ + CoGold
++ @3362 EXIT
++ @3376 DO~ SetGlobal("X#UnEye","GLOBAL",1) SetGlobal("X#EyeColor","GLOBAL",1)~ + CoUnEye
END

IF ~~ THEN BEGIN CoBlue
SAY @3377
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoGreen
SAY @3378
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoBlackEye
SAY @3379
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoGrey
SAY @3380
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHazel
SAY @3381
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoGold
SAY @3382
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoUnEye
SAY @3383
IF ~~ THEN EXIT
END

 IF ~~ THEN BEGIN AskNot
SAY @3384
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoStory1.1
SAY @3385
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoStory1.2
SAY @3386
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoStory1.3
SAY @3387
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoStory1.4
SAY @3388
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoStory1.5
SAY @3389
IF ~~ THEN EXIT
END



IF ~~ THEN BEGIN CoHip
SAY @3390
++ @3391 EXIT
+ ~RandomNum(3,1)~ + @3392 + CoHip1.1
+ ~RandomNum(3,2)~ + @3392 + CoHip1.2
+ ~RandomNum(3,3)~ + @3392 + CoHip1.3
++ @3393 EXIT
END

IF ~~ THEN BEGIN CoHip1.1
SAY @3394
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHip1.2
SAY @3395
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHip1.3
SAY @3396
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHood
SAY @3397
++ @3398 EXIT
+ ~RandomNum(3,1)~ + @3399 + CoHood1.1
+ ~RandomNum(3,2)~ + @3399 + CoHood1.2
+ ~RandomNum(3,3)~ + @3399 + CoHood1.3
+ ~RandomNum(4,1)~ + @3400 + CoHood2.1
+ ~RandomNum(4,2)~ + @3400 + CoHood2.2
+ ~RandomNum(4,3)~ + @3400 + CoHood2.3
+ ~RandomNum(4,4)~ + @3400 + CoHood2.4
END

IF ~~ THEN BEGIN CoHood2.1
SAY @3401
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHood2.2
SAY @3402
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHood2.3
SAY @3403
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHood2.4
SAY @3404
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHood1.1
SAY @3405
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHood1.2
SAY @3406
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHood1.3
SAY @3407
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN CoShine
SAY @3408
+ ~RandomNum(2,1)~ + @3409 + CoShine1.1
+ ~RandomNum(2,2)~ + @3409 + CoShine1.2
+ ~RandomNum(3,1)~ + @3410 + CoShine2.1
+ ~RandomNum(3,2)~ + @3410 + CoShine2.2
+ ~RandomNum(3,3)~ + @3410 + CoShine2.3
+ ~RandomNum(3,1)~ + @3411 + CoShine3.1
+ ~RandomNum(3,2)~ + @3411 + CoShine3.2
+ ~RandomNum(3,3)~ + @3411 + CoShine3.3
END

IF ~~ THEN BEGIN CoShine1.1
SAY @3412
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoShine1.2
SAY @3413
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoShine2.1
SAY @3414
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoShine2.2
SAY @3415
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoShine2.3
SAY @3416

IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoShine3.1
SAY @3417
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoShine3.2
SAY @3418
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoShine3.3
SAY @3419
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoEar1
SAY @3420
++ @3421 DO ~RestParty()~ EXIT
++ @3422 EXIT
++ @3423 DO ~SetGlobal("P#CoEar","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN CoEar2
SAY @3424
IF ~~ THEN DO ~RestParty()~ EXIT
END

IF ~~ THEN BEGIN CoHealth2
SAY @3425
++ @3426 + CoHeal1
++ @3427 + CoHeal2
++ @3428 + CoHeal3
END

IF ~~ THEN BEGIN CoHeal1
SAY @3429
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHeal2
SAY @3430
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHeal3
SAY @3431
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHealth1
SAY @3432
+ ~RandomNum(3,1)~ + @3433 + CoHealth1.1
+ ~RandomNum(3,2)~ + @3433 + CoHealth1.2
+ ~RandomNum(3,3)~ + @3433 + CoHealth1.3
+ ~RandomNum(3,1)~ + @3434 + CoHealth2.1
+ ~RandomNum(3,2)~ + @3434 + CoHealth2.2
+ ~RandomNum(3,3)~ + @3434 + CoHealth2.3
++ @3435 EXIT
END

IF ~~ THEN BEGIN CoHealth2.1
SAY @3436
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHealth2.2
SAY @3437
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHealth2.3
SAY @3438
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHealth1.1
SAY @3439
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHealth1.2
SAY @3440
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoHealth1.3
SAY @3441
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoLean
SAY @3442
+ ~RandomNum(3,1)~ + @3443 + CoLean1.1
+ ~RandomNum(3,2)~ + @3443 + CoLean1.2
+ ~RandomNum(3,3)~ + @3443 + CoLean1.3
+ ~RandomNum(3,1)~ + @3444 + CoLean2.1
+ ~RandomNum(3,2)~ + @3444 + CoLean2.2
+ ~RandomNum(3,3)~ + @3444 + CoLean2.3
+ ~RandomNum(3,1)~ + @3445 + CoLean3.1
+ ~RandomNum(3,2)~ + @3445 + CoLean3.2
+ ~RandomNum(3,3)~ + @3445 + CoLean3.3
END

IF ~~ THEN BEGIN CoLean1.1
SAY @3446
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoLean1.2
SAY @3447
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoLean1.3
SAY @3448
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoLean2.1
SAY @3449
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoLean2.2
SAY @3450
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoLean2.3
SAY @3451
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoLean3.1
SAY @3452
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoLean3.2
SAY @3453
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CoLean3.3
SAY @3454
IF ~~ THEN EXIT
END

END

APPEND ~%EDWIN_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN EDCH
SAY @3455
++ @3456 EXIT

+ ~Global("X#EDCHdone","GLOBAL",1) RandomNum(4,1)~ + @3457 + EDCHFailure1
+ ~Global("X#EDCHdone","GLOBAL",1) RandomNum(4,2)~ + @3457 + EDCHFailure2
+ ~Global("X#EDCHdone","GLOBAL",1) RandomNum(4,3)~ + @3457 + EDCHFailure3
+ ~Global("X#EDCHdone","GLOBAL",1) RandomNum(4,4)~ + @3457 + EDCHFailure4

+ ~!Global("X#EDCHdone","GLOBAL",1) RandomNum(5,1)~ + @3458 + EDCHSuccess
+ ~!Global("X#EDCHdone","GLOBAL",1) RandomNum(5,2)~ + @3458 + EDCHFailure1
+ ~!Global("X#EDCHdone","GLOBAL",1) RandomNum(5,3)~ + @3458 + EDCHFailure2
+ ~!Global("X#EDCHdone","GLOBAL",1) RandomNum(5,4)~ + @3458 + EDCHFailure3
+ ~!Global("X#EDCHdone","GLOBAL",1) RandomNum(5,5)~ + @3458 + EDCHFailure4

+ ~!Global("X#EDCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3459 + EDCHSuccess
+ ~!Global("X#EDCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3459 + EDCHFailure1

+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3459 + EDCHSuccess
+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3459 + EDCHFailure1
+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3459 + EDCHFailure2
+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3459 + EDCHFailure3
+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3459 + EDCHFailure4

+ ~!Global("X#EDCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3460 + EDCHSuccess
+ ~!Global("X#EDCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3460 + EDCHFailure2

+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3460 + EDCHSuccess
+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3460 + EDCHFailure1
+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3460 + EDCHFailure2
+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3460 + EDCHFailure3
+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3460 + EDCHFailure4

+ ~!Global("X#EDCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3461 + EDCHSuccess
+ ~!Global("X#EDCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3461 + EDCHFailure3

+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3461 + EDCHSuccess
+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3461 + EDCHFailure1
+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3461 + EDCHFailure3
+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3461 + EDCHFailure2
+ ~!Global("X#EDCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3461 + EDCHFailure4

+ ~RandomNum(8,1)~ + @3462 + EdwinPID1.1
+ ~RandomNum(8,2)~ + @3462 + EdwinPID1.2
+ ~RandomNum(8,3)~ + @3462 + EdwinPID1.3
+ ~RandomNum(8,4)~ + @3462 + EdwinPID1.4
+ ~RandomNum(8,5)~ + @3462 + EdwinPID1.5
+ ~RandomNum(8,6)~ + @3462 + EdwinPID1.6
+ ~RandomNum(8,7)~ + @3462 + EdwinPID1.7
+ ~RandomNum(8,8)~ + @3462 + EdwinPID1.8

+ ~RandomNum(8,1)~ + @3463 + EdwinPID2.1
+ ~RandomNum(8,2)~ + @3463 + EdwinPID2.2
+ ~RandomNum(8,3)~ + @3463 + EdwinPID2.3
+ ~RandomNum(8,4)~ + @3463 + EdwinPID2.4
+ ~RandomNum(8,5)~ + @3463 + EdwinPID2.5
+ ~RandomNum(8,6)~ + @3463 + EdwinPID2.6
+ ~RandomNum(8,7)~ + @3463 + EdwinPID2.7
+ ~RandomNum(8,8)~ + @3463 + EdwinPID2.8

+ ~RandomNum(8,1)~ + @3464 + EdwinPID3.1
+ ~RandomNum(8,2)~ + @3464 + EdwinPID3.2
+ ~RandomNum(8,3)~ + @3464 + EdwinPID3.3
+ ~RandomNum(8,4)~ + @3464 + EdwinPID3.4
+ ~RandomNum(8,5)~ + @3464 + EdwinPID3.5
+ ~RandomNum(8,6)~ + @3464 + EdwinPID3.6
+ ~RandomNum(8,7)~ + @3464 + EdwinPID3.7
+ ~RandomNum(8,8)~ + @3464 + EdwinPID3.8

+ ~RandomNum(8,1) InParty("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#EDAL1","LOCALS",1)~ + @3465 + EdwinPID4.1
+ ~RandomNum(8,2) InParty("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#EDAL1","LOCALS",1)~ + @3465 + EdwinPID4.2
+ ~RandomNum(8,3) InParty("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#EDAL1","LOCALS",1)~ + @3465 + EdwinPID4.3
+ ~RandomNum(8,4) InParty("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#EDAL1","LOCALS",1)~ + @3465 + EdwinPID4.4
+ ~RandomNum(8,5) InParty("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#EDAL1","LOCALS",1)~ + @3465 + EdwinPID4.5
+ ~RandomNum(8,6) InParty("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#EDAL1","LOCALS",1)~ + @3465 + EdwinPID4.6
+ ~RandomNum(8,7) InParty("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#EDAL1","LOCALS",1)~ + @3465 + EdwinPID4.7
+ ~RandomNum(8,8) InParty("alora") !StateCheck("alora",CD_STATE_NOTVALID) Global("X#EDAL1","LOCALS",1)~ + @3465 + EdwinPID4.8

+ ~%VoiceStrange%~ + @3466 + EdwinVoice
END

IF ~~ EdwinVoice
SAY @11
IF ~~ THEN DO ~SetName(@3467)
SetPlayerSound(Myself,@3468,0)
SetPlayerSound(Myself,@3469,1)
SetPlayerSound(Myself,@3470,2)
SetPlayerSound(Myself,@3471,3)
SetPlayerSound(Myself,@3472,4)
SetPlayerSound(Myself,@3473,5)
SetPlayerSound(Myself,@3474,6)
SetPlayerSound(Myself,@3475,7)
SetPlayerSound(Myself,@3476,8)
SetPlayerSound(Myself,@3477,9)
SetPlayerSound(Myself,@3477,10)
SetPlayerSound(Myself,@3477,11)
SetPlayerSound(Myself,@3477,12)
SetPlayerSound(Myself,@3477,13)
SetPlayerSound(Myself,@3478,18)
SetPlayerSound(Myself,@3479,19)
SetPlayerSound(Myself,@3480,20)
SetPlayerSound(Myself,@3481,21)
SetPlayerSound(Myself,@3482,22)
SetPlayerSound(Myself,@3483,23)
SetPlayerSound(Myself,@3484,24)
SetPlayerSound(Myself,@3485,25)
SetPlayerSound(Myself,@3486,26)
SetPlayerSound(Myself,@3487,27)
SetPlayerSound(Myself,@3488,28)
SetPlayerSound(Myself,@3486,29)
SetPlayerSound(Myself,@3487,30)
SetPlayerSound(Myself,@3488,31)
SetPlayerSound(Myself,@3489,32)
SetPlayerSound(Myself,@3490,33)
SetPlayerSound(Myself,@3491,34)
SetPlayerSound(Myself,@3489,35)
SetPlayerSound(Myself,@3490,36)
SetPlayerSound(Myself,@3491,37)
SetPlayerSound(Myself,@3489,38)
SetPlayerSound(Myself,@3492,39)
SetPlayerSound(Myself,@3493,40)
SetPlayerSound(Myself,@3494,41)
SetPlayerSound(Myself,@3495,42)
SetPlayerSound(Myself,@3496,43)
SetPlayerSound(Myself,@3497,44)
SetPlayerSound(Myself,@3498,45)
SetPlayerSound(Myself,@3499,46)
SetPlayerSound(Myself,@3500,53)
SetPlayerSound(Myself,@3501,54)
SetPlayerSound(Myself,@3502,55)
SetPlayerSound(Myself,@3503,58)
SetPlayerSound(Myself,@3486,62)
SetPlayerSound(Myself,@3486,63)
SetPlayerSound(Myself,@3487,64)
SetPlayerSound(Myself,@3504,74)~ EXIT
END

IF ~~ EdwinPID1.1
SAY @3505
IF ~~ EXIT
END

IF ~~ EdwinPID1.2
SAY @3506
IF ~~ EXIT
END

IF ~~ EdwinPID1.3
SAY @3507
IF ~~ EXIT
END

IF ~~ EdwinPID1.4
SAY @3508
IF ~~ EXIT
END

IF ~~ EdwinPID1.5
SAY @3509
IF ~~ EXIT
END

IF ~~ EdwinPID1.6
SAY @3510
IF ~~ EXIT
END

IF ~~ EdwinPID1.7
SAY @3511
IF ~~ EXIT
END

IF ~~ EdwinPID1.8
SAY @3512
IF ~~ EXIT
END

IF ~~ EdwinPID2.1
SAY @3513
IF ~~ EXIT
END

IF ~~ EdwinPID2.2
SAY @3514
IF ~~ EXIT
END

IF ~~ EdwinPID2.3
SAY @3515
IF ~~ EXIT
END

IF ~~ EdwinPID2.4
SAY @3516
IF ~~ EXIT
END

IF ~~ EdwinPID2.5
SAY @3517
IF ~~ EXIT
END

IF ~~ EdwinPID2.6
SAY @3518
IF ~~ EXIT
END

IF ~~ EdwinPID2.7
SAY @3519
IF ~~ EXIT
END

IF ~~ EdwinPID2.8
SAY @3520
IF ~~ EXIT
END

IF ~~ EdwinPID3.1
SAY @3521
IF ~~ EXIT
END

IF ~~ EdwinPID3.2
SAY @3522
IF ~~ EXIT
END

IF ~~ EdwinPID3.3
SAY @3523
IF ~~ EXIT
END

IF ~~ EdwinPID3.4
SAY @3524
IF ~~ EXIT
END

IF ~~ EdwinPID3.5
SAY @3525
IF ~~ EXIT
END

IF ~~ EdwinPID3.6
SAY @3526
IF ~~ EXIT
END

IF ~~ EdwinPID3.7
SAY @3527
IF ~~ EXIT
END

IF ~~ EdwinPID3.8
SAY @3528
IF ~~ EXIT
END

IF ~~ EdwinPID4.1
SAY @3529
IF ~~ EXIT
END

IF ~~ EdwinPID4.2
SAY @3530
IF ~~ EXIT
END

IF ~~ EdwinPID4.3
SAY @3531
IF ~~ EXIT
END

IF ~~ EdwinPID4.4
SAY @3532
IF ~~ EXIT
END

IF ~~ EdwinPID4.5
SAY @3533
IF ~~ EXIT
END

IF ~~ EdwinPID4.6
SAY @3534
IF ~~ EXIT
END

IF ~~ EdwinPID4.7
SAY @3535
IF ~~ EXIT
END

IF ~~ EdwinPID4.8
SAY @3536
IF ~~ EXIT
END

IF ~~ EDCHSuccess
SAY @3537
IF ~~ THEN DO ~SetGlobal("X#EDCHdone","GLOBAL",1)~ EXIT
END

IF ~~ EDCHFailure1
SAY @3538
IF ~~ THEN EXIT
END

IF ~~ EDCHFailure2
SAY @3539
IF ~~ THEN EXIT
END

IF ~~ EDCHFailure3
SAY @3540
IF ~~ THEN EXIT
END

IF ~~ EDCHFailure4
SAY @3541
IF ~~ THEN EXIT
END

END

APPEND ~%ELDOTH_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN ELCH
SAY @3542
++ @3543 EXIT

+ ~Global("X#ELCHdone","GLOBAL",1) RandomNum(4,1)~ + @3544 + ELCHFailure1
+ ~Global("X#ELCHdone","GLOBAL",1) RandomNum(4,2)~ + @3544 + ELCHFailure2
+ ~Global("X#ELCHdone","GLOBAL",1) RandomNum(4,3)~ + @3544 + ELCHFailure3
+ ~Global("X#ELCHdone","GLOBAL",1) RandomNum(4,4)~ + @3544 + ELCHFailure4

+ ~!Global("X#ELCHdone","GLOBAL",1) RandomNum(5,1)~ + @3545 + ELCHSuccess
+ ~!Global("X#ELCHdone","GLOBAL",1) RandomNum(5,2)~ + @3545 + ELCHFailure1
+ ~!Global("X#ELCHdone","GLOBAL",1) RandomNum(5,3)~ + @3545 + ELCHFailure2
+ ~!Global("X#ELCHdone","GLOBAL",1) RandomNum(5,4)~ + @3545 + ELCHFailure3
+ ~!Global("X#ELCHdone","GLOBAL",1) RandomNum(5,5)~ + @3545 + ELCHFailure4

+ ~!Global("X#ELCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3546 + ELCHSuccess
+ ~!Global("X#ELCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3546 + ELCHFailure1

+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3546 + ELCHSuccess
+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3546 + ELCHFailure1
+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3546 + ELCHFailure2
+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3546 + ELCHFailure3
+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3546 + ELCHFailure4

+ ~!Global("X#ELCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3547 + ELCHSuccess
+ ~!Global("X#ELCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3547 + ELCHFailure2

+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3547 + ELCHSuccess
+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3547 + ELCHFailure1
+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3547 + ELCHFailure2
+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3547 + ELCHFailure3
+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3547 + ELCHFailure4

+ ~!Global("X#ELCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3548 + ELCHSuccess
+ ~!Global("X#ELCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3548 + ELCHFailure3

+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3548 + ELCHSuccess
+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3548 + ELCHFailure1
+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3548 + ELCHFailure3
+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3548 + ELCHFailure2
+ ~!Global("X#ELCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3548 + ELCHFailure4

+ ~!Dead("skie") !InParty("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,1) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale1
+ ~!Dead("skie") !InParty("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,2) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale2
+ ~!Dead("skie") !InParty("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,3) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale3
+ ~!Dead("skie") !InParty("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,4) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale4
+ ~!Dead("skie") !InParty("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,5) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale5

+ ~!Dead("skie") InParty("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,1) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale1
+ ~!Dead("skie") InParty("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,2) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale2
+ ~!Dead("skie") InParty("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,3) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale3
+ ~!Dead("skie") InParty("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,4) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale4
+ ~!Dead("skie") InParty("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,5) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale6

+ ~Dead("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,1) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale1
+ ~Dead("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,2) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale2
+ ~Dead("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,3) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale3
+ ~Dead("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,4) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale4
+ ~Dead("skie") !GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,5) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale7

+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,1) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale1
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,2) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale2
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,3) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale3
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,4) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale4
+ ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) !Dead("sarevok") RandomNum(5,5) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale8

+ ~!AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale9
+ ~OR(2) AreaCheck("%IsleofBalduranS%") AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3549 + X#ElMorale10

+ ~!Dead("skie") InParty("skie") RandomNum(7,1)~ + @3550 + X#ElSuggestion1
+ ~!Dead("skie") InParty("skie") RandomNum(7,2)~ + @3550 + X#ElSuggestion2
+ ~!Dead("skie") InParty("skie") RandomNum(7,3)~ + @3550 + X#ElSuggestion3
+ ~!Dead("skie") InParty("skie") RandomNum(7,4)~ + @3550 + X#ElSuggestion4
+ ~!Dead("skie") InParty("skie") RandomNum(7,5)~ + @3550 + X#ElSuggestion5
+ ~!Dead("skie") InParty("skie") RandomNum(7,6)~ + @3550 + X#ElSuggestion6
+ ~!Dead("skie") InParty("skie") RandomNum(7,7)~ + @3550 + X#ElSuggestion7

+ ~Dead("skie") RandomNum(5,1)~ + @3550 + X#ElSuggestion1
+ ~Dead("skie") RandomNum(5,2)~ + @3550 + X#ElSuggestion2
+ ~Dead("skie") RandomNum(5,3)~ + @3550 + X#ElSuggestion3
+ ~Dead("skie") RandomNum(5,4)~ + @3550 + X#ElSuggestion4
+ ~Dead("skie") RandomNum(5,5)~ + @3550 + X#ElSuggestion5

+ ~!Dead("skie") !InParty("skie") RandomNum(6,1)~ + @3550 + X#ElSuggestion1
+ ~!Dead("skie") !InParty("skie") RandomNum(6,2)~ + @3550 + X#ElSuggestion2
+ ~!Dead("skie") !InParty("skie") RandomNum(6,3)~ + @3550 + X#ElSuggestion3
+ ~!Dead("skie") !InParty("skie") RandomNum(6,4)~ + @3550 + X#ElSuggestion4
+ ~!Dead("skie") !InParty("skie") RandomNum(6,5)~ + @3550 + X#ElSuggestion5
+ ~!Dead("skie") !InParty("skie") RandomNum(6,6)~ + @3550 + X#ElSuggestion8

+ ~%VoiceStrange%~ + @3551 + EldothVoice
END

IF ~~ EldothVoice
SAY @11
IF ~~ THEN DO ~SetName(@3552)
SetPlayerSound(Myself,@3553,0)
SetPlayerSound(Myself,@3554,1)
SetPlayerSound(Myself,@3555,2)
SetPlayerSound(Myself,@3556,3)
SetPlayerSound(Myself,@3557,4)
SetPlayerSound(Myself,@3558,5)
SetPlayerSound(Myself,@3559,6)
SetPlayerSound(Myself,@3560,7)
SetPlayerSound(Myself,@3561,8)
SetPlayerSound(Myself,@3562,9)
SetPlayerSound(Myself,@3562,10)
SetPlayerSound(Myself,@3562,11)
SetPlayerSound(Myself,@3562,12)
SetPlayerSound(Myself,@3562,13)
SetPlayerSound(Myself,@3563,18)
SetPlayerSound(Myself,@3564,19)
SetPlayerSound(Myself,@3565,20)
SetPlayerSound(Myself,@3566,21)
SetPlayerSound(Myself,@3567,22)
SetPlayerSound(Myself,@3568,23)
SetPlayerSound(Myself,@3569,24)
SetPlayerSound(Myself,@3570,25)
SetPlayerSound(Myself,@3571,26)
SetPlayerSound(Myself,@3572,27)
SetPlayerSound(Myself,@3573,28)
SetPlayerSound(Myself,@3571,29)
SetPlayerSound(Myself,@3572,30)
SetPlayerSound(Myself,@3573,31)
SetPlayerSound(Myself,@3574,32)
SetPlayerSound(Myself,@3575,33)
SetPlayerSound(Myself,@3576,34)
SetPlayerSound(Myself,@3574,35)
SetPlayerSound(Myself,@3575,36)
SetPlayerSound(Myself,@3576,37)
SetPlayerSound(Myself,@3574,38)
SetPlayerSound(Myself,@3577,39)
SetPlayerSound(Myself,@3578,40)
SetPlayerSound(Myself,@3579,41)
SetPlayerSound(Myself,@3580,42)
SetPlayerSound(Myself,@3581,43)
SetPlayerSound(Myself,@3582,44)
SetPlayerSound(Myself,@3583,45)
SetPlayerSound(Myself,@3584,47)
SetPlayerSound(Myself,@3585,53)
SetPlayerSound(Myself,@3586,54)
SetPlayerSound(Myself,@3587,55)
SetPlayerSound(Myself,@3588,58)
SetPlayerSound(Myself,@3589,59)
SetPlayerSound(Myself,@3571,62)
SetPlayerSound(Myself,@3571,63)
SetPlayerSound(Myself,@3572,64)
SetPlayerSound(Myself,@3590,74)~ EXIT
END

IF ~~ ELCHSuccess
SAY @3591
= @3592
IF ~~ THEN DO ~SetGlobal("X#ELCHdone","GLOBAL",1)~ EXIT
END

IF ~~ X#ElSuggestion1
SAY @3593
IF ~~ THEN EXIT
END

IF ~~ X#ElSuggestion2
SAY @3594
IF ~~ THEN EXIT
END

IF ~~ X#ElSuggestion3
SAY @3595
IF ~~ THEN EXIT
END

IF ~~ X#ElSuggestion4
SAY @3596
IF ~~ THEN EXIT
END

IF ~~ X#ElSuggestion5
SAY @3597
IF ~~ THEN EXIT
END

IF ~~ X#ElSuggestion6
SAY @3598
IF ~~ THEN EXIT
END

IF ~~ X#ElSuggestion7
SAY @3599
IF ~~ THEN EXIT
END

IF ~~ X#ElSuggestion8
SAY @3600
IF ~~ THEN EXIT
END

IF ~~ X#ElMorale1
SAY @3601
IF ~~ THEN EXIT
END

IF ~~ X#ElMorale2
SAY @3602
IF ~~ THEN EXIT
END

IF ~~ X#ElMorale3
SAY @3603
IF ~~ THEN EXIT
END

IF ~~ X#ElMorale4
SAY @3604
IF ~~ THEN EXIT
END

IF ~~ X#ElMorale5
SAY @3605
IF ~~ THEN EXIT
END

IF ~~ X#ElMorale6
SAY @3606
IF ~~ THEN EXIT
END

IF ~~ X#ElMorale7
SAY @3607
IF ~~ THEN EXIT
END

IF ~~ X#ElMorale8
SAY @3608
IF ~~ THEN EXIT
END

IF ~~ X#ElMorale9
SAY @3609
IF ~~ THEN EXIT
END

IF ~~ X#ElMorale10
SAY @3610
IF ~~ THEN EXIT
END

IF ~~ ELCHFailure1
SAY @3611
IF ~~ THEN EXIT
END

IF ~~ ELCHFailure2
SAY @3612
IF ~~ THEN EXIT
END

IF ~~ ELCHFailure3
SAY @3613
IF ~~ THEN EXIT
END

IF ~~ ELCHFailure4
SAY @3611
IF ~~ THEN EXIT
END

END

APPEND ~%GARRICK_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN GACH
	SAY @3614
	++ @3615 EXIT
	+ ~Global("X#GACHdone","GLOBAL",1) RandomNum(4,1)~ + @3616 + GACHFailure1
	+ ~Global("X#GACHdone","GLOBAL",1) RandomNum(4,2)~ + @3616 + GACHFailure2
	+ ~Global("X#GACHdone","GLOBAL",1) RandomNum(4,3)~ + @3616 + GACHFailure3
	+ ~Global("X#GACHdone","GLOBAL",1) RandomNum(4,4)~ + @3616 + GACHFailure4
	+ ~!Global("X#GACHdone","GLOBAL",1) RandomNum(5,1)~ + @3617 + GACHSuccess
	+ ~!Global("X#GACHdone","GLOBAL",1) RandomNum(5,2)~ + @3617 + GACHFailure1
	+ ~!Global("X#GACHdone","GLOBAL",1) RandomNum(5,3)~ + @3617 + GACHFailure2
	+ ~!Global("X#GACHdone","GLOBAL",1) RandomNum(5,4)~ + @3617 + GACHFailure3
	+ ~!Global("X#GACHdone","GLOBAL",1) RandomNum(5,5)~ + @3617 + GACHFailure4
	+ ~!Global("X#GACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3618 + GACHSuccess
	+ ~!Global("X#GACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3618 + GACHFailure1
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3618 + GACHSuccess
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3618 + GACHFailure1
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3618 + GACHFailure2
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3618 + GACHFailure3
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3618 + GACHFailure4
	+ ~!Global("X#GACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3619 + GACHSuccess
	+ ~!Global("X#GACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3619 + GACHFailure2
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3619 + GACHSuccess
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3619 + GACHFailure1
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3619 + GACHFailure2
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3619 + GACHFailure3
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3619 + GACHFailure4
	+ ~!Global("X#GACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3620 + GACHSuccess
	+ ~!Global("X#GACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3620 + GACHFailure3
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3620 + GACHSuccess
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3620 + GACHFailure1
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3620 + GACHFailure3
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3620 + GACHFailure2
	+ ~!Global("X#GACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3620 + GACHFailure4
	+ ~RandomNum(8,1)~ + @3621 + GarrickPID1.1
	+ ~RandomNum(8,2)~ + @3621 + GarrickPID1.2
	+ ~RandomNum(8,3)~ + @3621 + GarrickPID1.3
	+ ~RandomNum(8,4)~ + @3621 + GarrickPID1.4
	+ ~RandomNum(8,5)~ + @3621 + GarrickPID1.5
	+ ~RandomNum(8,6)~ + @3621 + GarrickPID1.6
	+ ~RandomNum(8,7)~ + @3621 + GarrickPID1.7
	+ ~RandomNum(8,8)~ + @3621 + GarrickPID1.8
	+ ~RandomNum(8,1)~ + @3622 + GarrickPID2.1
	+ ~RandomNum(8,2)~ + @3622 + GarrickPID2.2
	+ ~RandomNum(8,3)~ + @3622 + GarrickPID2.3
	+ ~RandomNum(8,4)~ + @3622 + GarrickPID2.4
	+ ~RandomNum(8,5)~ + @3622 + GarrickPID2.5
	+ ~RandomNum(8,6)~ + @3622 + GarrickPID2.6
	+ ~RandomNum(8,7)~ + @3622 + GarrickPID2.7
	+ ~RandomNum(8,8)~ + @3622 + GarrickPID2.8
	+ ~%VoiceStrange%~ + @3623 + GarrickVoice
END

IF ~~ GarrickVoice
	SAY @11
	IF ~~ THEN DO ~SetName(@3624)
	SetPlayerSound(Myself,@3625,0)
	SetPlayerSound(Myself,@3626,1)
	SetPlayerSound(Myself,@3627,2)
	SetPlayerSound(Myself,@3628,3)
	SetPlayerSound(Myself,@3629,4)
	SetPlayerSound(Myself,@3630,5)
	SetPlayerSound(Myself,@3631,6)
	SetPlayerSound(Myself,@3632,7)
	SetPlayerSound(Myself,@3633,8)
	SetPlayerSound(Myself,@3634,9)
	SetPlayerSound(Myself,@3634,10)
	SetPlayerSound(Myself,@3634,11)
	SetPlayerSound(Myself,@3634,12)
	SetPlayerSound(Myself,@3634,13)
	SetPlayerSound(Myself,@3635,18)
	SetPlayerSound(Myself,@3636,19)
	SetPlayerSound(Myself,@3637,20)
	SetPlayerSound(Myself,@3638,21)
	SetPlayerSound(Myself,@3639,22)
	SetPlayerSound(Myself,@3640,23)
	SetPlayerSound(Myself,@3641,24)
	SetPlayerSound(Myself,@3642,25)
	SetPlayerSound(Myself,@3643,26)
	SetPlayerSound(Myself,@3644,27)
	SetPlayerSound(Myself,@3645,28)
	SetPlayerSound(Myself,@3643,29)
	SetPlayerSound(Myself,@3644,30)
	SetPlayerSound(Myself,@3645,31)
	SetPlayerSound(Myself,@3646,32)
	SetPlayerSound(Myself,@3647,33)
	SetPlayerSound(Myself,@3648,34)
	SetPlayerSound(Myself,@3646,35)
	SetPlayerSound(Myself,@3647,36)
	SetPlayerSound(Myself,@3648,37)
	SetPlayerSound(Myself,@3646,38)
	SetPlayerSound(Myself,@3649,39)
	SetPlayerSound(Myself,@3650,40)
	SetPlayerSound(Myself,@3651,41)
	SetPlayerSound(Myself,@3652,42)
	SetPlayerSound(Myself,@3653,43)
	SetPlayerSound(Myself,@3654,44)
	SetPlayerSound(Myself,@3655,47)
	SetPlayerSound(Myself,@3656,50)
	SetPlayerSound(Myself,@3657,53)
	SetPlayerSound(Myself,@3658,54)
	SetPlayerSound(Myself,@3659,55)
	SetPlayerSound(Myself,@3660,58)
	SetPlayerSound(Myself,@3661,59)
	SetPlayerSound(Myself,@3643,62)
	SetPlayerSound(Myself,@3643,63)
	SetPlayerSound(Myself,@3644,64)
	SetPlayerSound(Myself,@3662,74)~ EXIT
END

IF ~~ GarrickPID1.1
	SAY @3663
	IF ~~ EXIT
END

IF ~~ GarrickPID1.2
	SAY @3664
	IF ~~ EXIT
END

IF ~~ GarrickPID1.3
	SAY @3665
	IF ~~ EXIT
END

IF ~~ GarrickPID1.4
	SAY @3666
	IF ~~ EXIT
END

IF ~~ GarrickPID1.5
	SAY @3667
	IF ~~ EXIT
END

IF ~~ GarrickPID1.6
	SAY @3668
	IF ~~ EXIT
END

IF ~~ GarrickPID1.7
	SAY @3669
	IF ~~ EXIT
END

IF ~~ GarrickPID1.8
	SAY @3670
	IF ~~ EXIT
END

IF ~~ GarrickPID2.1
	SAY @3671
	IF ~~ EXIT
END

IF ~~ GarrickPID2.2
	SAY @3672
	IF ~~ EXIT
END

IF ~~ GarrickPID2.3
	SAY @3673
	IF ~~ EXIT
END

IF ~~ GarrickPID2.4
	SAY @3674
	IF ~~ EXIT
END

IF ~~ GarrickPID2.5
	SAY @3675
	IF ~~ EXIT
END

IF ~~ GarrickPID2.6
	SAY @3676
	IF ~~ EXIT
END

IF ~~ GarrickPID2.7
	SAY @3677
	IF ~~ EXIT
END

IF ~~ GarrickPID2.8
	SAY @3678
	IF ~~ EXIT
END

IF ~~ GACHSuccess
	SAY @3679
	= @3680
	= @3681
	= @3682
	= @3683
	IF ~~ THEN DO ~SetGlobal("X#GACHdone","GLOBAL",1)~ EXIT
END

IF ~~ GACHFailure1
	SAY @3684
	IF ~~ THEN EXIT
END

IF ~~ GACHFailure2
	SAY @3685
	IF ~~ THEN EXIT
END

IF ~~ GACHFailure3
	SAY @3686
	IF ~~ THEN EXIT
END

IF ~~ GACHFailure4
	SAY @3686
	IF ~~ THEN EXIT
END

END

APPEND ~%KHALID_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN KHCH
SAY @3687
++ @3688 EXIT

+ ~Global("X#KHCHdone","GLOBAL",1) RandomNum(4,1)~ + @3689 + KHCHFailure1
+ ~Global("X#KHCHdone","GLOBAL",1) RandomNum(4,2)~ + @3689 + KHCHFailure2
+ ~Global("X#KHCHdone","GLOBAL",1) RandomNum(4,3)~ + @3689 + KHCHFailure3
+ ~Global("X#KHCHdone","GLOBAL",1) RandomNum(4,4)~ + @3689 + KHCHFailure4

+ ~!Global("X#KHCHdone","GLOBAL",1) RandomNum(5,1)~ + @3690 + KHCHSuccess
+ ~!Global("X#KHCHdone","GLOBAL",1) RandomNum(5,2)~ + @3690 + KHCHFailure1
+ ~!Global("X#KHCHdone","GLOBAL",1) RandomNum(5,3)~ + @3690 + KHCHFailure2
+ ~!Global("X#KHCHdone","GLOBAL",1) RandomNum(5,4)~ + @3690 + KHCHFailure3
+ ~!Global("X#KHCHdone","GLOBAL",1) RandomNum(5,5)~ + @3690 + KHCHFailure4

+ ~!Global("X#KHCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3691 + KHCHSuccess
+ ~!Global("X#KHCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3691 + KHCHFailure1

+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3691 + KHCHSuccess
+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3691 + KHCHFailure1
+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3691 + KHCHFailure2
+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3691 + KHCHFailure3
+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3691 + KHCHFailure4

+ ~!Global("X#KHCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3692 + KHCHSuccess
+ ~!Global("X#KHCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3692 + KHCHFailure2

+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3692 + KHCHSuccess
+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3692 + KHCHFailure1
+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3692 + KHCHFailure2
+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3692 + KHCHFailure3
+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3692 + KHCHFailure4

+ ~!Global("X#KHCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3693 + KHCHSuccess
 + ~!Global("X#KHCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3693 + KHCHFailure3

+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3693 + KHCHSuccess
+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3693 + KHCHFailure1
+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3693 + KHCHFailure3
+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3693 + KHCHFailure2
+ ~!Global("X#KHCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3693 + KHCHFailure4

+ ~InParty("jaheira") ReputationGT(Player1,10) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,1)~ + @3694 + X#KhJourney1
+ ~InParty("jaheira") ReputationGT(Player1,10) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,2)~ + @3694 + X#KhJourney2
+ ~InParty("jaheira") ReputationGT(Player1,10) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,3)~ + @3694 + X#KhJourney3
+ ~InParty("jaheira") ReputationGT(Player1,10) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,4)~ + @3694 + X#KhJourney4

+ ~InParty("jaheira") ReputationGT(Player1,10) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,1)~ + @3694 + X#KhJourney1
+ ~InParty("jaheira") ReputationGT(Player1,10) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,2)~ + @3694 + X#KhJourney2
+ ~InParty("jaheira") ReputationGT(Player1,10) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,3)~ + @3694 + X#KhJourney3
+ ~InParty("jaheira") ReputationGT(Player1,10) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,4)~ + @3694 + X#KhJourney5

+ ~InParty("jaheira") ReputationGT(Player1,10) GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,1)~ + @3694 + X#KhJourney1
+ ~InParty("jaheira") ReputationGT(Player1,10) GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,2)~ + @3694 + X#KhJourney2
+ ~InParty("jaheira") ReputationGT(Player1,10) GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,3)~ + @3694 + X#KhJourney3
+ ~InParty("jaheira") ReputationGT(Player1,10) GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,4)~ + @3694 + X#KhJourney6

+ ~!InParty("jaheira") ReputationGT(Player1,10) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,1)~ + @3694 + X#KhJourney1
+ ~!InParty("jaheira") ReputationGT(Player1,10) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,2)~ + @3694 + X#KhJourney2
+ ~!InParty("jaheira") ReputationGT(Player1,10) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,3)~ + @3694 + X#KhJourney4
+ ~!InParty("jaheira") ReputationGT(Player1,10) GlobalLT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,4)~ + @3694 + X#KhJourney4

+ ~!InParty("jaheira") ReputationGT(Player1,10) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,1)~ + @3694 + X#KhJourney1
+ ~!InParty("jaheira") ReputationGT(Player1,10) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,2)~ + @3694 + X#KhJourney2
+ ~!InParty("jaheira") ReputationGT(Player1,10) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,3)~ + @3694 + X#KhJourney5
+ ~!InParty("jaheira") ReputationGT(Player1,10) Global("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,4)~ + @3694 + X#KhJourney5

+ ~!InParty("jaheira") ReputationGT(Player1,10) GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,1)~ + @3694 + X#KhJourney1
+ ~!InParty("jaheira") ReputationGT(Player1,10) GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,2)~ + @3694 + X#KhJourney2
+ ~!InParty("jaheira") ReputationGT(Player1,10) GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,3)~ + @3694 + X#KhJourney6
+ ~!InParty("jaheira") ReputationGT(Player1,10) GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(4,4)~ + @3694 + X#KhJourney6

+ ~!ReputationGT(Player1,10)~ + @3694 + X#KhJourney7

+ ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) RandomNum(5,1)~ + @3695 + X#KhWince1
+ ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) RandomNum(5,2)~ + @3695 + X#KhWince2
+ ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) RandomNum(5,3)~ + @3695 + X#KhWince3
+ ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) RandomNum(5,4)~ + @3695 + X#KhWince4
+ ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID) RandomNum(5,5)~ + @3695 + X#KhWince5

+ ~!InParty("jaheira") !Dead("jaheira") RandomNum(4,1)~ + @3695 + X#KhWince1
+ ~!InParty("jaheira") !Dead("jaheira") RandomNum(4,2)~ + @3695 + X#KhWince2
+ ~!InParty("jaheira") !Dead("jaheira") RandomNum(4,3)~ + @3695 + X#KhWince3
+ ~!InParty("jaheira") !Dead("jaheira") RandomNum(4,4)~ + @3695 + X#KhWince4

+ ~!InParty("jaheira") Dead("jaheira") RandomNum(5,1)~ + @3695 + X#KhWince1
+ ~!InParty("jaheira") Dead("jaheira") RandomNum(5,2)~ + @3695 + X#KhWince2
+ ~!InParty("jaheira") Dead("jaheira") RandomNum(5,3)~ + @3695 + X#KhWince3
+ ~!InParty("jaheira") Dead("jaheira") RandomNum(5,4)~ + @3695 + X#KhWince4
+ ~!InParty("jaheira") Dead("jaheira") RandomNum(5,5)~ + @3695 + X#KhWince6

+ ~%VoiceStrange%~ + @3696 + KhalidVoice
END

IF ~~ KhalidVoice
SAY @11
IF ~~ THEN DO ~SetName(@3697)
SetPlayerSound(Myself,@3698,0)
SetPlayerSound(Myself,@3699,1)
SetPlayerSound(Myself,@3700,2)
SetPlayerSound(Myself,@3701,3)
SetPlayerSound(Myself,@3702,4)
SetPlayerSound(Myself,@3703,5)
SetPlayerSound(Myself,@3704,6)
SetPlayerSound(Myself,@3705,7)
SetPlayerSound(Myself,@3706,8)
SetPlayerSound(Myself,@3707,9)
SetPlayerSound(Myself,@3707,10)
SetPlayerSound(Myself,@3707,11)
SetPlayerSound(Myself,@3707,12)
SetPlayerSound(Myself,@3707,13)
SetPlayerSound(Myself,@3708,18)
SetPlayerSound(Myself,@3709,19)
SetPlayerSound(Myself,@3710,20)
SetPlayerSound(Myself,@3711,21)
SetPlayerSound(Myself,@3712,22)
SetPlayerSound(Myself,@3713,23)
SetPlayerSound(Myself,@3714,24)
SetPlayerSound(Myself,@3715,25)
SetPlayerSound(Myself,@3716,26)
SetPlayerSound(Myself,@3717,27)
SetPlayerSound(Myself,@3718,28)
SetPlayerSound(Myself,@3716,29)
SetPlayerSound(Myself,@3717,30)
SetPlayerSound(Myself,@3718,31)
SetPlayerSound(Myself,@3719,32)
SetPlayerSound(Myself,@3720,33)
SetPlayerSound(Myself,@3721,34)
SetPlayerSound(Myself,@3719,35)
SetPlayerSound(Myself,@3720,36)
SetPlayerSound(Myself,@3721,37)
SetPlayerSound(Myself,@3719,38)
SetPlayerSound(Myself,@3722,39)
SetPlayerSound(Myself,@3723,40)
SetPlayerSound(Myself,@3724,41)
SetPlayerSound(Myself,@3725,42)
SetPlayerSound(Myself,@3726,43)
SetPlayerSound(Myself,@3727,44)
SetPlayerSound(Myself,@3728,47)
SetPlayerSound(Myself,@3729,50)
SetPlayerSound(Myself,@3730,53)
SetPlayerSound(Myself,@3731,54)
SetPlayerSound(Myself,@3732,55)
SetPlayerSound(Myself,@3733,58)
SetPlayerSound(Myself,@3734,59)
SetPlayerSound(Myself,@3716,62)
SetPlayerSound(Myself,@3716,63)
SetPlayerSound(Myself,@3717,64)
SetPlayerSound(Myself,@3735,74)~ EXIT
END

IF ~~ X#KhWince1
SAY @3736
IF ~~ THEN EXIT
END

IF ~~ X#KhWince2
SAY @3737
IF ~~ THEN EXIT
END

IF ~~ X#KhWince3
SAY @3738
IF ~~ THEN EXIT
END

IF ~~ X#KhWince4
SAY @3739
IF ~~ THEN EXIT
END

IF ~~ X#KhWince5
SAY @3740
IF ~~ THEN EXIT
END

IF ~~ X#KhWince6
SAY @3741
IF ~~ THEN EXIT
END

IF ~~ X#KhJourney1
SAY @3742
IF ~~ THEN EXIT
END

IF ~~ X#KhJourney2
SAY @3743
IF ~~ THEN EXIT
END

IF ~~ X#KhJourney3
SAY @3744
IF ~~ THEN EXIT
END

IF ~~ X#KhJourney4
SAY @3745
IF ~~ THEN EXIT
END

IF ~~ X#KhJourney5
SAY @3746
IF ~~ THEN EXIT
END

IF ~~ X#KhJourney6
SAY @3747
IF ~~ THEN EXIT
END

IF ~~ X#KhJourney7
SAY @3748
IF ~~ THEN EXIT
END

IF ~~ KHCHSuccess
SAY @3749
IF ~~ THEN DO ~SetGlobal("X#KHCHdone","GLOBAL",1)~ EXIT
END

IF ~~ KHCHFailure1
SAY @3750
IF ~~ THEN EXIT
END

IF ~~ KHCHFailure2
SAY @3751
IF ~~ THEN EXIT
END

IF ~~ KHCHFailure3
SAY @3750
IF ~~ THEN EXIT
END

IF ~~ KHCHFailure4
SAY @3752
IF ~~ THEN EXIT
END

END

APPEND ~%KAGAIN_JOINED%~

IF ~IsGabber(Player1) %BGT_VAR%~ THEN BEGIN KACH
SAY @3753
++ @3754 EXIT

+ ~Global("X#KACHdone","GLOBAL",1) RandomNum(4,1)~ + @3755 + KACHFailure1
+ ~Global("X#KACHdone","GLOBAL",1) RandomNum(4,2)~ + @3755 + KACHFailure2
+ ~Global("X#KACHdone","GLOBAL",1) RandomNum(4,3)~ + @3755 + KACHFailure3
+ ~Global("X#KACHdone","GLOBAL",1) RandomNum(4,4)~ + @3755 + KACHFailure4

+ ~!Global("X#KACHdone","GLOBAL",1) RandomNum(5,1)~ + @3756 + KACHSuccess
+ ~!Global("X#KACHdone","GLOBAL",1) RandomNum(5,2)~ + @3756 + KACHFailure1
+ ~!Global("X#KACHdone","GLOBAL",1) RandomNum(5,3)~ + @3756 + KACHFailure2
+ ~!Global("X#KACHdone","GLOBAL",1) RandomNum(5,4)~ + @3756 + KACHFailure3
+ ~!Global("X#KACHdone","GLOBAL",1) RandomNum(5,5)~ + @3756 + KACHFailure4

+ ~!Global("X#KACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3757 + KACHSuccess
+ ~!Global("X#KACHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3757 + KACHFailure1

+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3757 + KACHSuccess
+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3757 + KACHFailure1
+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3757 + KACHFailure2
+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3757 + KACHFailure3
+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3757 + KACHFailure4

+ ~!Global("X#KACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3758 + KACHSuccess
+ ~!Global("X#KACHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3758 + KACHFailure2

+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3758 + KACHSuccess
+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3758 + KACHFailure1
+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3758 + KACHFailure2
+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3758 + KACHFailure3
+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3758 + KACHFailure4

+ ~!Global("X#KACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3759 + KACHSuccess
+ ~!Global("X#KACHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3759 + KACHFailure3

+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3759 + KACHSuccess
+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3759 + KACHFailure1
+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3759 + KACHFailure3
+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3759 + KACHFailure2
+ ~!Global("X#KACHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3759 + KACHFailure4

+ ~AreaType(FOREST) !HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(5,1) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3760 + X#KaThings1
+ ~AreaType(FOREST) !HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(5,2) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3760 + X#KaThings2
+ ~AreaType(FOREST) !HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(5,3) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3760 + X#KaThings3
+ ~AreaType(FOREST) !HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(5,4) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3760 + X#KaThings4
+ ~AreaType(FOREST) !HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(5,5) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3760 + X#KaThings5

+ ~!AreaType(FOREST) !HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(5,1) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3760 + X#KaThings1
+ ~!AreaType(FOREST) !HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(5,2) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3760 + X#KaThings2
+ ~!AreaType(FOREST) !HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(5,3) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3760 + X#KaThings3
+ ~!AreaType(FOREST) !HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(5,4) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3760 + X#KaThings4
+ ~!AreaType(FOREST) !HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(5,5) !AreaCheck("%Undercity_TempleofBhaal%") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3760 + X#KaThings1

+ ~!HPPercentLT("kagain",75) !Dead("sarevok") !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3760 + X#KaThings6

+ ~!HPPercentLT("kagain",75) !Dead("sarevok") OR(2) AreaCheck("%IsleofBalduranS%") AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3760 + X#KaThings7

+ ~!HPPercentLT("kagain",75) Dead("sarevok")~ + @3760 + X#KaThings8

+ ~HPPercentLT("kagain",75)~ + @3760 + X#KaThings9

+ ~!HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(4,1) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3761 + X#KaFront1
+ ~!HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(4,2) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3761 + X#KaFront2
+ ~!HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(4,3) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3761 + X#KaFront3
+ ~!HPPercentLT("kagain",75) !Dead("sarevok") RandomNum(4,4) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3761 + X#KaFront4

+ ~!HPPercentLT("kagain",75) !AreaCheck("%IsleofBalduranS%") !AreaCheck("%IsleofBalduranN%") OR(17) AreaCheck("%DurlagsTower%") AreaCheck("%DurlagsTower_Cellar%") AreaCheck("%DurlagsTower_L1%") AreaCheck("%DurlagsTower_L2%") AreaCheck("%DurlagsTower_L3%") AreaCheck("%DurlagsTower_L4%") AreaCheck("%DurlagsTower_Chessboard%") AreaCheck("%DurlagsTower_IceChamber%") AreaCheck("%DurlagsTower_FireChamber%") AreaCheck("%DurlagsTower_AirChamber%") AreaCheck("%DurlagsTower_EarthChamber%") AreaCheck("%DurlagsTower_D1%") AreaCheck("%DurlagsTower_D2%") AreaCheck("%DurlagsTower_D3%") AreaCheck("%DurlagsTower_D4%") AreaCheck("%DurlagsTower_CompassRoom%") AreaCheck("%DurlagsTower_DemonknightsChamber%")
!AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3761 + X#KaFront5

+ ~!HPPercentLT("kagain",75) OR(2) AreaCheck("%IsleofBalduranS%") AreaCheck("%IsleofBalduranN%") !AreaCheck("%DurlagsTower%") !AreaCheck("%DurlagsTower_Cellar%") !AreaCheck("%DurlagsTower_L1%") !AreaCheck("%DurlagsTower_L2%") !AreaCheck("%DurlagsTower_L3%") !AreaCheck("%DurlagsTower_L4%") !AreaCheck("%DurlagsTower_Chessboard%") !AreaCheck("%DurlagsTower_IceChamber%") !AreaCheck("%DurlagsTower_FireChamber%") !AreaCheck("%DurlagsTower_AirChamber%") !AreaCheck("%DurlagsTower_EarthChamber%") !AreaCheck("%DurlagsTower_D1%") !AreaCheck("%DurlagsTower_D2%") !AreaCheck("%DurlagsTower_D3%") !AreaCheck("%DurlagsTower_D4%") !AreaCheck("%DurlagsTower_CompassRoom%") !AreaCheck("%DurlagsTower_DemonknightsChamber%")~ + @3761 + X#KaFront6

+ ~HPPercentLT("kagain",75)~ + @3761 + X#KaFront7

+ ~%VoiceStrange%~ + @3762 + KagainVoice
END

IF ~~ KagainVoice
SAY @11
IF ~~ THEN DO ~SetName(@3763)
SetPlayerSound(Myself,@3764,0)
SetPlayerSound(Myself,@3765,1)
SetPlayerSound(Myself,@3766,2)
SetPlayerSound(Myself,@3767,3)
SetPlayerSound(Myself,@3768,4)
SetPlayerSound(Myself,@3769,5)
SetPlayerSound(Myself,@3770,6)
SetPlayerSound(Myself,@3771,7)
SetPlayerSound(Myself,@3772,8)
SetPlayerSound(Myself,@3773,9)
SetPlayerSound(Myself,@3773,10)
SetPlayerSound(Myself,@3773,11)
SetPlayerSound(Myself,@3773,12)
SetPlayerSound(Myself,@3773,13)
SetPlayerSound(Myself,@3774,18)
SetPlayerSound(Myself,@3775,19)
SetPlayerSound(Myself,@3776,20)
SetPlayerSound(Myself,@3777,21)
SetPlayerSound(Myself,@3778,22)
SetPlayerSound(Myself,@3779,23)
SetPlayerSound(Myself,@3780,24)
SetPlayerSound(Myself,@3781,25)
SetPlayerSound(Myself,@3782,26)
SetPlayerSound(Myself,@3783,27)
SetPlayerSound(Myself,@3784,28)
SetPlayerSound(Myself,@3782,29)
SetPlayerSound(Myself,@3783,30)
SetPlayerSound(Myself,@3784,31)
SetPlayerSound(Myself,@3785,32)
SetPlayerSound(Myself,@3786,33)
SetPlayerSound(Myself,@3787,34)
SetPlayerSound(Myself,@3785,35)
SetPlayerSound(Myself,@3786,36)
SetPlayerSound(Myself,@3787,37)
SetPlayerSound(Myself,@3785,38)
SetPlayerSound(Myself,@3788,39)
SetPlayerSound(Myself,@3789,40)
SetPlayerSound(Myself,@3790,41)
SetPlayerSound(Myself,@3791,42)
SetPlayerSound(Myself,@3792,43)
SetPlayerSound(Myself,@3793,44)
SetPlayerSound(Myself,@3794,45)
SetPlayerSound(Myself,@3795,50)
SetPlayerSound(Myself,@3796,53)
SetPlayerSound(Myself,@3797,54)
SetPlayerSound(Myself,@3798,58)
SetPlayerSound(Myself,@3799,59)
SetPlayerSound(Myself,@3800,60)
SetPlayerSound(Myself,@3782,62)
SetPlayerSound(Myself,@3782,63)
SetPlayerSound(Myself,@3783,64)
SetPlayerSound(Myself,@3801,74)~ EXIT
END

IF ~~ X#KaFront1
SAY @3802
IF ~~ THEN EXIT
END

IF ~~ X#KaFront2
SAY @3803
IF ~~ THEN EXIT
END

IF ~~ X#KaFront3
SAY @3804
IF ~~ THEN EXIT
END

IF ~~ X#KaFront4
SAY @3805
IF ~~ THEN EXIT
END

IF ~~ X#KaFront5
SAY @3806
IF ~~ THEN EXIT
END

IF ~~ X#KaFront6
SAY @3807
IF ~~ THEN EXIT
END

IF ~~ X#KaFront7
SAY @3808
IF ~~ THEN EXIT
END


IF ~~ X#KaThings1
SAY @3809
IF ~~ THEN EXIT
END

IF ~~ X#KaThings2
SAY @240
IF ~~ THEN EXIT
END

IF ~~ X#KaThings4
SAY @3810
IF ~~ THEN EXIT
END

IF ~~ X#KaThings3
SAY @3811
IF ~~ THEN EXIT
END

IF ~~ X#KaThings5
SAY @3812
IF ~~ THEN EXIT
END

IF ~~ X#KaThings6
SAY @3813
IF ~~ THEN EXIT
END

IF ~~ X#KaThings7
SAY @3814
IF ~~ THEN EXIT
END

IF ~~ X#KaThings8
SAY @3815
IF ~~ THEN EXIT
END

IF ~~ X#KaThings9
SAY @3816
IF ~~ THEN EXIT
END

IF ~~ KACHSuccess
SAY @3817
IF ~~ THEN DO ~SetGlobal("X#KACHdone","GLOBAL",1)~ EXIT
END

IF ~~ KACHFailure1
SAY @3818
IF ~~ THEN EXIT
END

IF ~~ KACHFailure2
SAY @3819
IF ~~ THEN EXIT
END

IF ~~ KACHFailure3
SAY @3820
IF ~~ THEN EXIT
END

IF ~~ KACHFailure4
SAY @3821
IF ~~ THEN EXIT
END

END

/* Ajantis PID */

APPEND ~%AJANTIS_JOINED%~

//detect enemy
IF ~IsGabber(Player1) %BGT_VAR% Detect([ENEMY])~ THEN BEGIN ajantis_PID_enemy
SAY @3822
IF ~~ THEN EXIT
END

//-----------Ajantis PID
IF ~IsGabber(Player1) %BGT_VAR% OR(3) GlobalLT("X#AjantisLoveTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",0) !Detect([ENEMY]) !Alignment(Player1,MASK_EVIL) !TimeOfDay(Night) !Alignment(Player2,MASK_EVIL) !Alignment(Player3,MASK_EVIL) !Alignment(Player4,MASK_EVIL) !Alignment(Player5,MASK_EVIL) !Alignment(Player6,MASK_EVIL) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN AJCH_01
SAY @3823

+ ~Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",3) OR(2) Global("X#XARomanceInactive","GLOBAL",1) Global("X#XARomanceActive","GLOBAL",0) OR(2) Global("P#CoranRomanceInactive","GLOBAL",1) Global("P#CoranMatch","GLOBAL",0) Global("X#AjantisRomanceInactiveOtherRom","GLOBAL",1)~ + @3824 DO ~SetGlobal("X#AjantisRomanceInactiveOtherRom","GLOBAL",0) SetGlobal("X#AjantisRomanceActive","GLOBAL",1) RealSetGlobalTimer("X#AjantisRomance","GLOBAL",500)~ + ajantis_happy

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned
+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell
+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_01
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_02
+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_too_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_too_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_too_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_24
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_25

/* chapter 3 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_25

/* chapter 4 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_25

/* chapter 5 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_25

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25

/* after being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25

/* chapter 7 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_25

+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

+ ~%VoiceStrange%~ + @3841 + AjantisVoice
END

//-----------------------------------------------

IF ~IsGabber(Player1) %BGT_VAR% OR(3) GlobalLT("X#AjantisLoveTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",0) !Detect([ENEMY]) !Alignment(Player1,MASK_EVIL) TimeOfDay(Night) !Alignment(Player2,MASK_EVIL) !Alignment(Player3,MASK_EVIL) !Alignment(Player4,MASK_EVIL) !Alignment(Player5,MASK_EVIL) !Alignment(Player6,MASK_EVIL) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN AJCH_02
SAY @3823

+ ~Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",3) OR(2) Global("X#XARomanceInactive","GLOBAL",1) Global("X#XARomanceActive","GLOBAL",0) OR(2) Global("P#CoranRomanceInactive","GLOBAL",1) Global("P#CoranMatch","GLOBAL",0) Global("X#AjantisRomanceInactiveOtherRom","GLOBAL",1)~ + @3824 DO ~SetGlobal("X#AjantisRomanceInactiveOtherRom","GLOBAL",0) SetGlobal("X#AjantisRomanceActive","GLOBAL",1) RealSetGlobalTimer("X#AjantisRomance","GLOBAL",500)~ + ajantis_happy

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_03
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_04

+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_too_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_too_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_too_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_24
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_25
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_27

/* chapter 3 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_27

/* chapter 4 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_27

/* chapter 5 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_27

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27

/* after being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27

/* chapter 7 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_27

+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4
 
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

+ ~%VoiceStrange%~ + @3841 + AjantisVoice
END

//-----------------------------------------------------

IF ~IsGabber(Player1) %BGT_VAR% OR(3) GlobalLT("X#AjantisLoveTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",0) !Detect([ENEMY]) !Alignment(Player1,MASK_EVIL) !TimeOfDay(Night) OR(5) Alignment(Player2,MASK_EVIL) Alignment(Player3,MASK_EVIL) Alignment(Player4,MASK_EVIL) Alignment(Player5,MASK_EVIL) Alignment(Player6,MASK_EVIL) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN AJCH_03
SAY @3823

+ ~Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",3) OR(2) Global("X#XARomanceInactive","GLOBAL",1) Global("X#XARomanceActive","GLOBAL",0) OR(2) Global("P#CoranRomanceInactive","GLOBAL",1) Global("P#CoranMatch","GLOBAL",0) Global("X#AjantisRomanceInactiveOtherRom","GLOBAL",1)~ + @3824 DO ~SetGlobal("X#AjantisRomanceInactiveOtherRom","GLOBAL",0) SetGlobal("X#AjantisRomanceActive","GLOBAL",1) RealSetGlobalTimer("X#AjantisRomance","GLOBAL",500)~ + ajantis_happy

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_01
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_02

+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_31

/* chapter 3 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_31

/* chapter 4 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_31

/* chapter 5 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_31

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31

/* after being arrested */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31

/* chapter 7 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_31

+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

+ ~%VoiceStrange%~ + @3841 + AjantisVoice
END
//-----------------------------------------------

IF ~IsGabber(Player1) %BGT_VAR% OR(3) GlobalLT("X#AjantisLoveTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",0) !Detect([ENEMY]) !Alignment(Player1,MASK_EVIL) TimeOfDay(Night) OR(5) Alignment(Player2,MASK_EVIL) Alignment(Player3,MASK_EVIL) Alignment(Player4,MASK_EVIL) Alignment(Player5,MASK_EVIL) Alignment(Player6,MASK_EVIL) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN AJCH_04
SAY @3823

+ ~Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",3) OR(2) Global("X#XARomanceInactive","GLOBAL",1) Global("X#XARomanceActive","GLOBAL",0) OR(2) Global("P#CoranRomanceInactive","GLOBAL",1) Global("P#CoranMatch","GLOBAL",0) Global("X#AjantisRomanceInactiveOtherRom","GLOBAL",1)~ + @3824 DO ~SetGlobal("X#AjantisRomanceInactiveOtherRom","GLOBAL",0) SetGlobal("X#AjantisRomanceActive","GLOBAL",1) RealSetGlobalTimer("X#AjantisRomance","GLOBAL",500)~ + ajantis_happy

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_03
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_04

+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_31
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_27

/* chapter 3 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_27

/* chapter 4 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_27

/* chapter 5 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_27

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27

/* after being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27

/* chapter 7 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_27

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

+ ~%VoiceStrange%~ + @3841 + AjantisVoice
END

//-----------------------------------------------

IF ~IsGabber(Player1) %BGT_VAR% OR(3) GlobalLT("X#AjantisLoveTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",0) !Detect([ENEMY]) !Alignment(Player1,MASK_EVIL) !TimeOfDay(Night) !Alignment(Player2,MASK_EVIL) !Alignment(Player3,MASK_EVIL) !Alignment(Player4,MASK_EVIL) !Alignment(Player5,MASK_EVIL) !Alignment(Player6,MASK_EVIL) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN AJCH_05
SAY @3823

+ ~Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",3) OR(2) Global("X#XARomanceInactive","GLOBAL",1) Global("X#XARomanceActive","GLOBAL",0) OR(2) Global("P#CoranRomanceInactive","GLOBAL",1) Global("P#CoranMatch","GLOBAL",0) Global("X#AjantisRomanceInactiveOtherRom","GLOBAL",1)~ + @3824 DO ~SetGlobal("X#AjantisRomanceInactiveOtherRom","GLOBAL",0) SetGlobal("X#AjantisRomanceActive","GLOBAL",1) RealSetGlobalTimer("X#AjantisRomance","GLOBAL",500)~ + ajantis_happy

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_01
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_02

+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_too_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_too_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_too_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_24
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_25
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_32

/* chapter 3 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_32

/* chapter 4 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_32

/* chapter 5 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* after being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* chapter 7 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_32

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

+ ~%VoiceStrange%~ + @3841 + AjantisVoice
END

//-----------------------------------------------

IF ~IsGabber(Player1) %BGT_VAR% OR(3) GlobalLT("X#AjantisLoveTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",0) !Detect([ENEMY]) !Alignment(Player1,MASK_EVIL) TimeOfDay(Night) !Alignment(Player2,MASK_EVIL) !Alignment(Player3,MASK_EVIL) !Alignment(Player4,MASK_EVIL) !Alignment(Player5,MASK_EVIL) !Alignment(Player6,MASK_EVIL) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN AJCH_06
SAY @3823

+ ~Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",3) OR(2) Global("X#XARomanceInactive","GLOBAL",1) Global("X#XARomanceActive","GLOBAL",0) OR(2) Global("P#CoranRomanceInactive","GLOBAL",1) Global("P#CoranMatch","GLOBAL",0) Global("X#AjantisRomanceInactiveOtherRom","GLOBAL",1)~ + @3824 DO ~SetGlobal("X#AjantisRomanceInactiveOtherRom","GLOBAL",0) SetGlobal("X#AjantisRomanceActive","GLOBAL",1) RealSetGlobalTimer("X#AjantisRomance","GLOBAL",500)~ + ajantis_happy

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_03
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_04

+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_too_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_too_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_too_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_no_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_24
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_25
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_32

/* chapter 3 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_32

/* chapter 4 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_32

/* chapter 5 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* after being arrested */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* chapter 7 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_32

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

+ ~%VoiceStrange%~ + @3841 + AjantisVoice
END

//-----------------------------------------------

IF ~IsGabber(Player1) %BGT_VAR% OR(3) GlobalLT("X#AjantisLoveTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",0) !Detect([ENEMY]) !Alignment(Player1,MASK_EVIL) !TimeOfDay(Night) OR(5) Alignment(Player2,MASK_EVIL) Alignment(Player3,MASK_EVIL) Alignment(Player4,MASK_EVIL) Alignment(Player5,MASK_EVIL) Alignment(Player6,MASK_EVIL) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN AJCH_07
SAY @3823

+ ~Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",3) OR(2) Global("X#XARomanceInactive","GLOBAL",1) Global("X#XARomanceActive","GLOBAL",0) OR(2) Global("P#CoranRomanceInactive","GLOBAL",1) Global("P#CoranMatch","GLOBAL",0) Global("X#AjantisRomanceInactiveOtherRom","GLOBAL",1)~ + @3824 DO ~SetGlobal("X#AjantisRomanceInactiveOtherRom","GLOBAL",0) SetGlobal("X#AjantisRomanceActive","GLOBAL",1) RealSetGlobalTimer("X#AjantisRomance","GLOBAL",500)~ + ajantis_happy

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_01
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_02

+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_31
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_32

/* chapter 3 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_32

/* chapter 4 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_32

/* chapter 5 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* after being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* chapter 7 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_32

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

+ ~%VoiceStrange%~ + @3841 + AjantisVoice
END

//-----------------------------------------------

IF ~IsGabber(Player1) %BGT_VAR% OR(3) GlobalLT("X#AjantisLoveTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",0) !Detect([ENEMY]) !Alignment(Player1,MASK_EVIL) TimeOfDay(Night) OR(5) Alignment(Player2,MASK_EVIL) Alignment(Player3,MASK_EVIL) Alignment(Player4,MASK_EVIL) Alignment(Player5,MASK_EVIL) Alignment(Player6,MASK_EVIL) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN AJCH_08
SAY @3823

+ ~Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",3) OR(2) Global("X#XARomanceInactive","GLOBAL",1) Global("X#XARomanceActive","GLOBAL",0) OR(2) Global("P#CoranRomanceInactive","GLOBAL",1) Global("P#CoranMatch","GLOBAL",0) Global("X#AjantisRomanceInactiveOtherRom","GLOBAL",1)~ + @3824 DO ~SetGlobal("X#AjantisRomanceInactiveOtherRom","GLOBAL",0) SetGlobal("X#AjantisRomanceActive","GLOBAL",1) RealSetGlobalTimer("X#AjantisRomance","GLOBAL",500)~ + ajantis_happy

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_03
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_04

+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3826

+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @3826 + paladin_evil_in_group_03

//@3827

+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @3827 + paladin_evil_03

/* @3828 */

+ ~RandomNum(4,1)~ + @3828 + safer_01
+ ~RandomNum(4,2)~ + @3828 + safer_02
+ ~RandomNum(4,3)~ + @3828 + safer_03
+ ~RandomNum(4,4)~ + @3828 + safer_04

/* @3829 */
/* chapter 2 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_31
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_32

/* chapter 3 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_32

/* chapter 4 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_32

/* chapter 5 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* after being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_32

/* chapter 7 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_32

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

+ ~%VoiceStrange%~ + @3841 + AjantisVoice
END


//---------------------------------------------------------------------
//Player1 MASK_EVIL ///////////////////////


IF ~IsGabber(Player1) %BGT_VAR% OR(3) GlobalLT("X#AjantisLoveTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",0) !Detect([ENEMY]) Alignment(Player1,MASK_EVIL) !TimeOfDay(Night) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN AJCH_01
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_01
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_02

+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3827

+ ~RandomNum(2,1)~ + @3827 + paladin_player1_evil_01
+ ~RandomNum(2,2)~ + @3827 + paladin_player1_evil_02




/* @3829 */
/* chapter 2 */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_28
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_29
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_30

/* chapter 3 */

+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_28
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_29
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_30

/* chapter 4 */

+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)
!TimeOfDay(Night)~ + @3829 + suggestions_28
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_29
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_30

/* chapter 5 */

+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_28
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_29
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_30

/* chapter 6 */
/* before being arrested */

+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30

/* after being arrested */

+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30

/* chapter 7 */

+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_28
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_29
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_30

+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer


++ @3840 EXIT

+ ~%VoiceStrange%~ + @3841 + AjantisVoice
END

//-----------------------------------------------

IF ~IsGabber(Player1) %BGT_VAR% OR(3) GlobalLT("X#AjantisLoveTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",0) !Detect([ENEMY]) Alignment(Player1,MASK_EVIL) TimeOfDay(Night) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN AJCH_02
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_03
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_04

+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3827

+ ~RandomNum(2,1)~ + @3827 + paladin_player1_evil_01
+ ~RandomNum(2,2)~ + @3827 + paladin_player1_evil_02


/* @3829 */
/* chapter 2 */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_28
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_29
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_30
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_26
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_27

/* chapter 3 */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_28
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_29
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_30
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_27

/* chapter 4 */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_28
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_29
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_30
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_27

/* chapter 5 */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_28
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_29
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_30
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_27

/* chapter 6 */
/* before being arrested */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27

/* after being arrested */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27

/* chapter 7 */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_28
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_29
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_30
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_27

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

+ ~%VoiceStrange%~ + @3841 + AjantisVoice
END

//-----------------------------------------------------


IF ~IsGabber(Player1) %BGT_VAR% OR(3) GlobalLT("X#AjantisLoveTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",0) !Detect([ENEMY]) Alignment(Player1,MASK_EVIL) !TimeOfDay(Night) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN AJCH_05
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_01
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_02

+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3827

+ ~RandomNum(2,1)~ + @3827 + paladin_player1_evil_01
+ ~RandomNum(2,2)~ + @3827 + paladin_player1_evil_02

/* @3829 */
/* chapter 2 */

+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_28
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_29
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_30
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_33

/* chapter 3 */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_28
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_29
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_30
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_33

/* chapter 4 */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_28
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_29
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_30
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_33

/* chapter 5 */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_28
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_29
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_30
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_33

/* chapter 6 */
/* before being arrested */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_33

/* after being arrested */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_33

/* chapter 7 */

+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_28
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_29
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_30
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_33

 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3


 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
 + ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer

++ @3840 EXIT

+ ~%VoiceStrange%~ + @3841 + AjantisVoice
END

//-----------------------------------------------

IF ~IsGabber(Player1) %BGT_VAR% OR(3) GlobalLT("X#AjantisLoveTalk","GLOBAL",7) Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceActive","GLOBAL",0) !Detect([ENEMY]) Alignment(Player1,MASK_EVIL) TimeOfDay(Night) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN AJCH_06
SAY @3823

//@3825

+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3825 + wounded_70
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50

+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3825 + wounded_poisoned
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3825 + wounded_50_poisoned

+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + state_spell

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_03
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3825 + tired_04

+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_01
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_02
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_03
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3825 + how_04

//@3827

+ ~RandomNum(2,1)~ + @3827 + paladin_player1_evil_01
+ ~RandomNum(2,2)~ + @3827 + paladin_player1_evil_02

/* @3829 */
/* chapter 2 */

+ ~RandomNum(10,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_01
+ ~RandomNum(10,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_02
+ ~RandomNum(10,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_03
+ ~RandomNum(10,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_04
+ ~RandomNum(10,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_28
+ ~RandomNum(10,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_29
+ ~RandomNum(10,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_30
+ ~RandomNum(10,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_26
+ ~RandomNum(10,9) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_27
+ ~RandomNum(10,10) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @3829 + suggestions_33

/* chapter 3 */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_05
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_06
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_07
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_28
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_29
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_30
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @3829 + suggestions_33

/* chapter 4 */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_08
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_09
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_10
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_28
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_29
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_30
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @3829 + suggestions_33

/* chapter 5 */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_13
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_14
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_15
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_28
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_29
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_30
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @3829 + suggestions_33

/* chapter 6 */
/* before being arrested */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_18
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_33


/* after being arrested */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_19
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_20
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_28
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_29
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_30
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @3829 + suggestions_33

/* chapter 7 */

+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_21
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_22
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_23
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_28
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_29
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_30
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @3829 + suggestions_33

+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,1)~ + @3830 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,2)~ + @3830 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,3)~ + @3830 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,4)~ + @3830 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) RandomNum(5,5)~ + @3830 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,1)~ + @3831 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,INT) RandomNum(2,2)~ + @3831 + AJCHFailure1

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,1)~ + @3831 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,2)~ + @3831 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,3)~ + @3831 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,4)~ + @3831 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,INT) RandomNum(5,5)~ + @3831 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,1)~ + @3832 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,WIS) RandomNum(2,2)~ + @3832 + AJCHFailure2

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,1)~ + @3833 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,2)~ + @3833 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,3)~ + @3833 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,4)~ + @3833 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,WIS) RandomNum(5,5)~ + @3833 + AJCHFailure4

+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,1)~ + @3834 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) CheckStatGT(Player1,15,CHR) RandomNum(2,2)~ + @3834 + AJCHFailure3

+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,1)~ + @3834 + AJCHSuccess
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,2)~ + @3834 + AJCHFailure1
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,3)~ + @3834 + AJCHFailure3
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,4)~ + @3834 + AJCHFailure2
+ ~!Global("X#AjCHdone","GLOBAL",1) !CheckStatGT(Player1,15,CHR) RandomNum(5,5)~ + @3834 + AJCHFailure4

+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_01
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_02
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_03
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_04
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_05
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_06
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + ajantis_07
+ ~Global("X#AjCHdone","GLOBAL",1) RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3835 + no_answer

+ ~RandomNum(7,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_01
+ ~RandomNum(7,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_02
+ ~RandomNum(7,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_03
+ ~RandomNum(7,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_04
+ ~RandomNum(7,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_05
+ ~RandomNum(7,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + helm_06
+ ~RandomNum(7,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3836 + no_answer

+ ~RandomNum(8,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_01
+ ~RandomNum(8,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_02
+ ~RandomNum(8,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_03
+ ~RandomNum(8,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_04
+ ~RandomNum(8,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_05
+ ~RandomNum(8,6) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_06
+ ~RandomNum(8,7) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + waterdeep_07
+ ~RandomNum(8,8) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3837 + no_answer

+ ~RandomNum(5,1) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_01
+ ~RandomNum(5,2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_02
+ ~RandomNum(5,3) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_03
+ ~RandomNum(5,4) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + order_04
+ ~RandomNum(5,5) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @3838 + no_answer

+ ~RandomNum(5,1)~ + @3839 + here_01
+ ~RandomNum(5,2)~ + @3839 + here_02
+ ~RandomNum(5,3)~ + @3839 + here_03
+ ~RandomNum(5,4)~ + @3839 + here_04
+ ~RandomNum(5,5)~ + @3839 + no_answer


++ @3840 EXIT

+ ~%VoiceStrange%~ + @3841 + AjantisVoice
END


/* SetPlayerSound entries for _AJANTI.CRE... */
IF ~~ AjantisVoice
SAY @11
IF ~~ THEN DO ~SetName(@3842)
SetPlayerSound(Myself,@3843,0)
SetPlayerSound(Myself,@3844,1)
SetPlayerSound(Myself,@3845,2)
SetPlayerSound(Myself,@3846,3)
SetPlayerSound(Myself,@3847,4)
SetPlayerSound(Myself,@3848,5)
SetPlayerSound(Myself,@3849,6)
SetPlayerSound(Myself,@3850,7)
SetPlayerSound(Myself,@3851,8)
SetPlayerSound(Myself,@3852,9)
SetPlayerSound(Myself,@3852,10)
SetPlayerSound(Myself,@3852,11)
SetPlayerSound(Myself,@3852,12)
SetPlayerSound(Myself,@3852,13)
SetPlayerSound(Myself,@3853,18)
SetPlayerSound(Myself,@3854,19)
SetPlayerSound(Myself,@3855,20)
SetPlayerSound(Myself,@3856,21)
SetPlayerSound(Myself,@3857,22)
SetPlayerSound(Myself,@3858,23)
SetPlayerSound(Myself,@3859,24)
SetPlayerSound(Myself,@3860,25)
SetPlayerSound(Myself,@3861,26)
SetPlayerSound(Myself,@3862,27)
SetPlayerSound(Myself,@3863,28)
SetPlayerSound(Myself,@3861,29)
SetPlayerSound(Myself,@3862,30)
SetPlayerSound(Myself,@3863,31)
SetPlayerSound(Myself,@3864,32)
SetPlayerSound(Myself,@3865,33)
SetPlayerSound(Myself,@3866,34)
SetPlayerSound(Myself,@3864,35)
SetPlayerSound(Myself,@3865,36)
SetPlayerSound(Myself,@3866,37)
SetPlayerSound(Myself,@3864,38)
SetPlayerSound(Myself,@3867,39)
SetPlayerSound(Myself,@3868,40)
SetPlayerSound(Myself,@3869,41)
SetPlayerSound(Myself,@3870,42)
SetPlayerSound(Myself,@3871,43)
SetPlayerSound(Myself,@3872,44)
SetPlayerSound(Myself,@3873,47)
SetPlayerSound(Myself,@3874,50)
SetPlayerSound(Myself,@3875,53)
SetPlayerSound(Myself,@3876,54)
SetPlayerSound(Myself,@3877,55)
SetPlayerSound(Myself,@3878,58)
SetPlayerSound(Myself,@3879,59)
SetPlayerSound(Myself,@3861,62)
SetPlayerSound(Myself,@3861,63)
SetPlayerSound(Myself,@3862,64)
SetPlayerSound(Myself,@3880,74)~ EXIT
END

IF ~~ THEN wounded_70
SAY @3881
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50
SAY @3882
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_poisoned
SAY @3883
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50_poisoned
SAY @3884
IF ~~ THEN EXIT
END

IF ~~ THEN state_spell
SAY @3885
IF ~~ THEN EXIT
END

/* day */
IF ~~ THEN tired_01
SAY @3886
IF ~~ THEN EXIT
END

IF ~~ THEN tired_02
SAY @3887
IF ~~ THEN EXIT
END

/* night */
IF ~~ THEN tired_03
SAY @3888
IF ~~ THEN EXIT
END

IF ~~ THEN tired_04
SAY @3889
IF ~~ THEN EXIT
END

IF ~~ THEN how_01
SAY @3890
IF ~~ THEN EXIT
END

IF ~~ THEN how_02
SAY @3891
IF ~~ THEN EXIT
END

IF ~~ THEN how_03
SAY @3892
IF ~~ THEN EXIT
END

IF ~~ THEN how_04
SAY @3893
IF ~~ THEN EXIT
END


IF ~~ THEN paladin_evil_in_group_01
SAY @3894
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_in_group_02
SAY @3895
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_in_group_03
SAY @3896
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_too_01
SAY @3897
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_too_02
SAY @3898
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_too_03
SAY @3899
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_player1_evil_01
SAY @3900
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_player1_evil_02
SAY @3901
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_no_evil_01
SAY @3902
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_no_evil_02
SAY @3903
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_no_evil_03
SAY @3904
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_01
SAY @3905
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_02
SAY @3906
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_03
SAY @3907
IF ~~ THEN EXIT
END

/* @3828 (non-evil PC)*/

IF ~~ THEN safer_01
SAY @3908
IF ~~ THEN EXIT
END

IF ~~ THEN safer_02
SAY @3909
IF ~~ THEN EXIT
END

IF ~~ THEN safer_03
SAY @3910
IF ~~ THEN EXIT
END

IF ~~ THEN safer_04
SAY @3909
IF ~~ THEN EXIT
END

/* chapter 2 */
IF ~~ THEN suggestions_01
SAY @3911
IF ~~ THEN EXIT
END

//(chapter 2)
IF ~~ THEN suggestions_02
SAY @3912
IF ~~ THEN EXIT
END

//chapter 2
IF ~~ THEN suggestions_03
SAY @3913
IF ~~ THEN EXIT
END

//chapter 2
IF ~~ THEN suggestions_04
SAY @3914
IF ~~ THEN EXIT
END

//chapter 3
IF ~~ THEN suggestions_05
SAY @3915
IF ~~ THEN EXIT
END

//chapter 3
IF ~~ THEN suggestions_06
SAY @3916
IF ~~ THEN EXIT
END

//chapter 3
IF ~~ THEN suggestions_07
SAY @3917
IF ~~ THEN EXIT
END

//chapter 4
IF ~~ THEN suggestions_08
SAY @3918
IF ~~ THEN EXIT
END

//chapter 4
IF ~~ THEN suggestions_09
SAY @3919
IF ~~ THEN EXIT
END

//chapter 4
IF ~~ THEN suggestions_10
SAY @3920
IF ~~ THEN EXIT
END

//chapter 5
IF ~~ THEN suggestions_13
SAY @3921
IF ~~ THEN EXIT
END

//chapter 5
IF ~~ THEN suggestions_14
SAY @3922
IF ~~ THEN EXIT
END

//chapter 5
IF ~~ THEN suggestions_15
SAY @3923
IF ~~ THEN EXIT
END

//(chapter 6 before being imprisoned)
IF ~~ THEN suggestions_18
SAY @3924
IF ~~ THEN EXIT
END

//(chapter 6, after being imprisoned)
IF ~~ THEN suggestions_19
SAY @3925
IF ~~ THEN EXIT
END

//(chapter 6) (2x)
IF ~~ THEN suggestions_20
SAY @3926
IF ~~ THEN EXIT
END

//(chapter 7)
IF ~~ THEN suggestions_21
SAY @3927
IF ~~ THEN EXIT
END

//(chapter 7)
IF ~~ THEN suggestions_22
SAY @3928
IF ~~ THEN EXIT
END

//(chapter 7)
IF ~~ THEN suggestions_23
SAY @3929
IF ~~ THEN EXIT
END

//other random answers, in combination with the above:

//(!Alignment(Player1,MASK_EVIL))
IF ~~ THEN suggestions_24
SAY @3930
IF ~~ THEN EXIT
END

//(!Alignment(Player1,MASK_EVIL))
IF ~~ THEN suggestions_25
SAY @3931
IF ~~ THEN EXIT
END

//(night)
IF ~~ THEN suggestions_26
SAY @3932
IF ~~ THEN EXIT
END

//(night)
IF ~~ THEN suggestions_27
SAY @3933
IF ~~ THEN EXIT
END

//(Alignment(Player1,MASK_EVIL))
IF ~~ THEN suggestions_28
SAY @3934
IF ~~ THEN EXIT
END

//(Alignment(Player1,MASK_EVIL))
IF ~~ THEN suggestions_29
SAY @3935
IF ~~ THEN EXIT
END

//(Alignment(Player1,MASK_EVIL))
IF ~~ THEN suggestions_30
SAY @3936
IF ~~ THEN EXIT
END

//(OR(5)
//Alignment(Player2,MASK_EVIL)
//Alignment(Player3,MASK_EVIL)
//Alignment(Player4,MASK_EVIL)
//Alignment(Player5,MASK_EVIL)

//Alignment(Player6,MASK_EVIL))
IF ~~ THEN suggestions_31
SAY @3937
IF ~~ THEN EXIT
END

//(!Alignment(Player1,MASK_EVIL) //GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4))
IF ~~ THEN suggestions_32
SAY @3938
IF ~~ THEN EXIT
END

//(Alignment(Player1,MASK_EVIL) //GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4))
IF ~~ THEN suggestions_33
SAY @3939
IF ~~ THEN EXIT
END


IF ~~ AJCHSuccess
SAY @3940
IF ~~ THEN DO ~SetGlobal("X#AjCHdone","GLOBAL",1)~ EXIT
END

IF ~~ AJCHFailure1
SAY @3941
IF ~~ THEN EXIT
END

IF ~~ AJCHFailure2
SAY @3942
IF ~~ THEN EXIT
END

IF ~~ AJCHFailure3
SAY @3943
IF ~~ THEN EXIT
END

IF ~~ AJCHFailure4
SAY @3941
IF ~~ THEN EXIT
END


IF ~~ THEN ajantis_01
SAY @3944
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_02
SAY @3945
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_03
SAY @3946
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_04
SAY @3947
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_05
SAY @3948
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_06
SAY @3949
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_07
SAY @3950
IF ~~ THEN EXIT
END


IF ~~ THEN helm_01
SAY @3951
IF ~~ THEN EXIT
END

IF ~~ THEN helm_02
SAY @3952
IF ~~ THEN EXIT
END

IF ~~ THEN helm_03
SAY @3953
IF ~~ THEN EXIT
END

IF ~~ THEN helm_04
SAY @3954
IF ~~ THEN EXIT
END

IF ~~ THEN helm_05
SAY @3955
IF ~~ THEN EXIT
END

IF ~~ THEN helm_06
SAY @3956
IF ~~ THEN EXIT
END


IF ~~ THEN waterdeep_01
SAY @3957
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_02
SAY @3958
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_03
SAY @3959
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_04
SAY @3960
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_05
SAY @3961
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_06
SAY @3962
IF ~~ THEN EXIT
END

IF ~~ THEN waterdeep_07
SAY @3963
IF ~~ THEN EXIT
END


IF ~~ THEN order_01
SAY @3964
IF ~~ THEN EXIT
END

IF ~~ THEN order_02
SAY @3965
IF ~~ THEN EXIT
END

IF ~~ THEN order_03
SAY @3966
IF ~~ THEN EXIT
END

IF ~~ THEN order_04
SAY @3967
IF ~~ THEN EXIT
END


IF ~~ THEN here_01
SAY @3968
IF ~~ THEN EXIT
END

IF ~~ THEN here_02
SAY @3969
IF ~~ THEN EXIT
END

IF ~~ THEN here_03
SAY @3970
IF ~~ THEN EXIT
END

IF ~~ THEN here_04
SAY @3971
IF ~~ THEN EXIT
END


IF ~~ THEN no_answer
SAY @3972
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_happy
SAY @3973
IF ~~ THEN EXIT
END

END