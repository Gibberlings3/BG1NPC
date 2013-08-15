BEGIN ~X#RUMOR~

APPEND ~X#RUMOR~

IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(8,1)~ THEN BEGIN 0
SAY @0
IF ~~ THEN JOURNAL @1 EXIT
END

IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(8,2)~ THEN BEGIN 1
SAY @2
IF ~OR(4) !InParty("skie") Dead("skie") !InMyArea("skie") StateCheck("skie",CD_STATE_NOTVALID)~ THEN JOURNAL @3 EXIT
IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ EXTERN ~%SKIE_JOINED%~ SkieRBalduChain4
END

IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(8,3)~ THEN BEGIN 2
SAY @4
IF ~~ THEN JOURNAL @5 EXIT
END

IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(8,4)~ THEN BEGIN 3
SAY @6
IF ~OR(4) !InParty("xan") Dead("xan") !InMyArea("xan") StateCheck("xan",CD_STATE_NOTVALID)~ THEN JOURNAL @7 EXIT
IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN EXTERN ~%XAN_JOINED%~ XanRBaldurChain1
END

IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(8,5)~ THEN BEGIN 4
SAY @8
IF ~OR(4) !InParty("skie") Dead("skie") !InMyArea("skie") StateCheck("skie",CD_STATE_NOTVALID)~ THEN JOURNAL @9 EXIT
IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN EXTERN ~%SKIE_JOINED%~ SkieRBaldurChain1
END

IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(8,6)~ THEN BEGIN 5
SAY @10
IF ~OR(4) !InParty("skie") Dead("skie") !InMyArea("skie") StateCheck("skie",CD_STATE_NOTVALID)~ THEN JOURNAL @11 EXIT
IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN EXTERN ~%SKIE_JOINED%~ SkieRBaldurChain2
END

IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(8,7)~ THEN BEGIN 6
SAY @12
IF ~~ THEN JOURNAL @13 EXIT
END

IF ~GlobalGT("Chapter","GLOBAL",%tutu_chapter_5%) RandomNum(8,8)~ THEN BEGIN 7
SAY @14
IF ~OR(4) !InParty("skie") Dead("skie") !InMyArea("skie") StateCheck("skie",CD_STATE_NOTVALID)~ THEN JOURNAL @15 EXIT
IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN EXTERN ~%SKIE_JOINED%~ SkieRBaldurChain3
END

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(11,1)~ THEN BEGIN 8
SAY @16
IF ~~ THEN JOURNAL @17 EXIT
END

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(11,2)~ THEN BEGIN 9
SAY @18
IF ~~ THEN JOURNAL @19 EXIT
END

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(11,3)~ THEN BEGIN 10
SAY @20
IF ~~ THEN JOURNAL @21 EXIT
END

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(11,4)~ THEN BEGIN 11
SAY @22
IF ~~ THEN JOURNAL @23 EXIT
END

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(11,5)~ THEN BEGIN 12
SAY @24
IF ~~ THEN JOURNAL @25 EXIT
END

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(11,6)~ THEN BEGIN 13
SAY @26
IF ~OR(4) !InParty("skie") Dead("skie") !InMyArea("skie") StateCheck("skie",CD_STATE_NOTVALID)~ THEN JOURNAL @27 EXIT
IF ~InParty("skie") InMyArea("skie") !StateCheck("skie",CD_STATE_NOTVALID)~ THEN EXTERN ~%SKIE_JOINED%~ SkieRBalduChain5
END

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(11,7)~ THEN BEGIN 14
SAY @28
IF ~~ THEN JOURNAL @29 EXIT
END

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(11,8)~ THEN BEGIN 16
SAY @30
IF ~~ THEN JOURNAL @31 EXIT
END

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(11,9)~ THEN BEGIN 17
SAY @32
IF ~~ THEN JOURNAL @21 EXIT
END

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(11,10)~ THEN BEGIN 18
SAY @33
IF ~~ THEN EXIT
END

IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_6%) RandomNum(11,11)~ THEN BEGIN 15
SAY @34
IF ~~ THEN JOURNAL @35 EXIT
END

END

CHAIN ~%SKIE_JOINED%~ SkieRBalduChain5
@36
END
IF ~~ THEN JOURNAL @27 EXIT

CHAIN ~%SKIE_JOINED%~ SkieRBaldurChain3
@37
END
IF ~~ THEN JOURNAL @38 EXIT

CHAIN ~%SKIE_JOINED%~ SkieRBalduChain4
@39
END
IF ~~ THEN JOURNAL @3 EXIT

CHAIN ~%SKIE_JOINED%~ SkieRBaldurChain2
@40
END
IF ~~ THEN JOURNAL @11 EXIT

CHAIN ~%XAN_JOINED%~ XanRBaldurChain1
@41
== ~X#RUMOR~ @42
== ~%XAN_JOINED%~ @43
END
IF ~~ THEN JOURNAL @7 EXIT

CHAIN ~%SKIE_JOINED%~ SkieRBaldurChain1
@44
== ~X#RUMOR~ @45
END
IF ~~ THEN JOURNAL @9 EXIT
