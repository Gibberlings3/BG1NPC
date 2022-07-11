ADD_TRANS_ACTION ~%tutu_var%JENKAL~ BEGIN 3 END BEGIN END ~SetGlobal("X#HalflingsHateKobolds","GLOBAL",1)~

EXTEND_BOTTOM ~%tutu_var%KEEPER~ 2 
IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%tutu_chapter_2%) Global("X#IMPCTalkKeeperStart","GLOBAL",0)~ THEN EXTERN ~%IMOEN_JOINED%~ X#ImoenKeeper1
END

CHAIN ~%IMOEN_JOINED%~ X#ImoenKeeper1
@0
= @1
== ~%tutu_var%KEEPER~ IF ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_4%) InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @2 DO ~SetGlobal("X#IMPCTalkKeeperStart","GLOBAL",1)~
END
IF ~Global("EnteredArmInn","GLOBAL",0)~ THEN REPLY @3 EXTERN ~%tutu_var%KEEPER~ X#ImoenKeeper1A
IF ~~ THEN REPLY @4 EXTERN ~%tutu_var%KEEPER~ X#ImoenKeeper1A
IF ~~ THEN REPLY @5 EXTERN ~%tutu_var%KEEPER~ X#ImoenKeeper1A
IF ~Global("X#GorionBuried","GLOBAL",0)~ THEN REPLY @6 EXTERN ~%tutu_var%KEEPER~ X#KeeperBuryGorion
IF ~Global("X#GorionBuried","GLOBAL",0)~ THEN REPLY @7 DO ~SetGlobal("X#PCBuryGorion","GLOBAL",1)~ EXTERN ~%tutu_var%KEEPER~ X#ImoenKeeper1A

APPEND ~%tutu_var%KEEPER~
IF ~~ X#KeeperBuryGorion
SAY @8
IF ~~ THEN DO ~SetGlobal("X#KeepBuryGorion","GLOBAL",1)~ GOTO X#ImoenKeeper1A
END
END

CHAIN ~%tutu_var%KEEPER~ X#ImoenKeeper1A
@9
DO ~GiveGoldForce(100)~
== ~%tutu_var%KEEPER~ @10
== ~%IMOEN_JOINED%~ @11
= @12
== ~%tutu_var%KEEPER~ @13 EXIT

/* Interjections */

//I_C_T2 ~%tutu_var%LIIA~ 8 X#ImoenLiia
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @14
//END

//I_C_T2 ~%tutu_var%GALLOR~ 2 X#ImoenGallor1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @15
//END

//I_C_T2 ~%tutu_var%ANGELO~ 0 X#ImoenAngelo1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @16
//END

//I_C_T2 ~%tutu_var%VARCI~ 5 X#ImoenVarci1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @17
//END

//I_C_T2 ~%tutu_var%ARDROU~ 2 X#ImoenArdrouine1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @18
//END

//I_C_T2 ~%tutu_var%SPENGIL~ 2 X#ImoenSpen1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @19
//END

I_C_T ~%tutu_var%FIREBE~ %firebeadstate1% X#FirebeardImoen1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @20
== ~%tutu_var%FIREBE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @21
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @22
= @23
= @24
END

I_C_T ~%tutu_var%RALEO~ 0 X#RaleoImoen
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @25
END

I_C_T ~%tutu_var%SILKE~ 2 X#SilkeImoen2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @26
== ~%tutu_var%SILKE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @27
END

//I_C_T2 ~%tutu_var%SILKE~ 1 X#SilkeImoen1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @28
//END

I_C_T ~%tutu_var%GARRIC~ 7 X#ImoenGarrick2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @29
= @30
== ~%tutu_var%GARRIC~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @31
END

//I_C_T ~%tutu_var%GARRIC~ 6 X#ImoenGarrick1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @32
//= @33
//= @34
//== ~%tutu_var%GARRIC~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @31
//END

I_C_T ~%tutu_var%JAHEIR~ 5 X#JaheiraImoenJoin
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @35
= @36
== ~%tutu_var%JAHEIR~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @37
END

I_C_T ~%tutu_var%FRIEND~ 0 X#ImoenFAIGuard
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @38
END

I_C_T ~%tutu_var%JOIA~ 1 X#ImoenJoia1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @39
END

I_C_T ~%tutu_var%JOIA~ 3 X#ImoenJoia2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @40
END

//I_C_T2 ~%tutu_var%CHASE~ 0 X#ImoenChase1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @41
//END

I_C_T ~%tutu_var%CHASE~ 1 X#ImoenChase2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @42
== ~%tutu_var%CHASE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1001
END

I_C_T ~%tutu_var%CHASE~ 2 X#ImoenChase3
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @43
== ~%tutu_var%CHASE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1001
END

I_C_T ~%tutu_var%CHASE~ 3 X#ImoenChase4
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @44
== ~%tutu_var%CHASE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1002
END

I_C_T ~%tutu_var%BINKOS~ 0 X#ImoenBinkos
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @45
= @46
== ~%tutu_var%BINKOS~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1003
END

I_C_T ~%tutu_var%DESSLO~ 0 X#ImoenKolssed1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @47
END

I_C_T ~%tutu_var%DESSLO~ 2 X#ImoenKolssed2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @48
END

I_C_T ~%tutu_var%ELMIN1~ 0 X#ImoenElmin1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @49
== ~%tutu_var%ELMIN1~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @50
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @51
== ~%tutu_var%ELMIN1~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @52
END

I_C_T ~%tutu_var%XZAR~ 3 X#ImoenXzar1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @53
END

I_C_T ~%tutu_var%XZAR~ 10 X#ImoenXzar2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @54
END

I_C_T ~%tutu_var%XZAR~ 12 X#ImoenXzar3
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @55
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @56
END

I_C_T ~%tutu_var%AOLN~ 0 X#ImoenAoln
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @57
END

I_C_T ~%tutu_var%WINTHR2~ 0 X#ImoenWinth1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @58
== ~%tutu_var%WINTHR2~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @59
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @60
END

I_C_T ~%tutu_var%WINTHR2~ 1 X#ImoenWinth2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @61
== ~%tutu_var%WINTHR2~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @62
END

I_C_T ~%tutu_var%WINTHR2~ 6 X#ImoenWinth3
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @63
== ~%tutu_var%WINTHR2~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1004
END

I_C_T ~%tutu_var%HULL2~ 0 X#ImoenHull
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @64
END

I_C_T ~%tutu_var%FULLER2~ 0 X#ImoenFuller1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @65
END

I_C_T ~%tutu_var%FULLER2~ 3 X#ImoenFuller2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @66
END

/* New Interjections */

//I_C_T ~%tutu_var%ARDROU~ 0 X#ImoenArdrouine
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @67 DO ~SetGlobal("J#ArdTalk","GLOBAL",1)~
//END

I_C_T ~%tutu_var%ARKUSH~ 5 X#ImoenArkushule1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @68
== ~%tutu_var%ARKUSH~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1005
END

I_C_T ~%tutu_var%ARKUSH~ 8 X#ImoenArkushule2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @69
== ~%tutu_var%ARKUSH~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1006
END

//I_C_T2 ~%tutu_var%BENTAN~ 4 X#ImoenBentan
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @70
//END

I_C_T ~%tutu_var%BORDA~ 2 X#ImoenBorda1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class(Player1,THIEF_ALL)~ THEN @71
== ~%tutu_var%BORDA~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class(Player1,THIEF_ALL)~ THEN @1007
END

I_C_T ~%tutu_var%BORDA~ 3 X#ImoenBorda1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class(Player1,THIEF_ALL)~ THEN @71
== ~%tutu_var%BORDA~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class(Player1,THIEF_ALL)~ THEN @1007
END

I_C_T ~%tutu_var%BORDA~ 4 X#ImoenBorda1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class(Player1,THIEF_ALL)~ THEN @71
== ~%tutu_var%BORDA~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class(Player1,THIEF_ALL)~ THEN @1007
END

I_C_T ~%tutu_var%BORDA~ 2 X#ImoenBorda2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Class(Player1,THIEF_ALL)~ THEN @72
== ~%tutu_var%BORDA~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Class(Player1,THIEF_ALL)~ THEN @1007
END

I_C_T ~%tutu_var%BORDA~ 3 X#ImoenBorda2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Class(Player1,THIEF_ALL)~ THEN @72
== ~%tutu_var%BORDA~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Class(Player1,THIEF_ALL)~ THEN @1007
END

I_C_T ~%tutu_var%BORDA~ 4 X#ImoenBorda2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Class(Player1,THIEF_ALL)~ THEN @72
== ~%tutu_var%BORDA~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Class(Player1,THIEF_ALL)~ THEN @1007
END

I_C_T ~%tutu_var%CARSA~ 1 X#ImoenCarsa1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @73
== ~%tutu_var%CARSA~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1006
END

//I_C_T2 ~%tutu_var%CARSA~ 8 X#ImoenCarsa2
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @74
//END

//I_C_T ~%tutu_var%CHARLE~ 19 X#ImoenCharleston1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @75
//== ~%tutu_var%CHARLE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @76
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @77
//== ~%tutu_var%CHARLE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @78
//END

//I_C_T ~%tutu_var%CHARLE~ 20 X#ImoenCharleston1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @75
//== ~%tutu_var%CHARLE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @76
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @79
//== ~%tutu_var%CHARLE~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @78
//END

I_C_T ~%tutu_var%CHLOE~ 2 X#ImoenChloe
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @80
END

//I_C_T2 ~%tutu_var%DAVAEO~ 0 X#ImoenDavaeorn
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class("%IMOEN_DV%",MAGE_ALL)~ THEN @81
//END

//I_C_T2 ~%tutu_var%DESTUS~ 2 X#ImoenDestus
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @82
//END

INTERJECT ~%tutu_var%DRATAN~ 4 X#ImoenDratan
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @83
END
++ @84 EXTERN ~%IMOEN_JOINED%~ IMDRAT1
++ @85 EXTERN ~%IMOEN_JOINED%~ IMDRAT1
++ @86 EXTERN ~%IMOEN_JOINED%~ IMDRAT2

CHAIN ~%IMOEN_JOINED%~ IMDRAT1
@87
COPY_TRANS ~%tutu_var%DRATAN~ 4

CHAIN ~%IMOEN_JOINED%~ IMDRAT2
@88
END
++ @89 + IMDRAT3
++ @90 + IMDRAT4

CHAIN ~%IMOEN_JOINED%~ IMDRAT3
@91
COPY_TRANS ~%tutu_var%DRATAN~ 4

CHAIN ~%IMOEN_JOINED%~ IMDRAT4
@92
COPY_TRANS ~%tutu_var%DRATAN~ 4

//I_C_T ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState8% X#EdwinImoenJoin
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @93
//== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @94
//END

//I_C_T2 ~%tutu_var%ELDOTH~ 7 X#ImoenEldoth
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @95
//END

//I_C_T ~%tutu_var%EMERSO~ 1 X#ImoenEmerson
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @96
//END

ADD_TRANS_ACTION ~%tutu_var%FORESH~ BEGIN 1 3 END BEGIN END
~SetGlobal("X#TalkedToForeshadow","GLOBAL",1)~

I_C_T ~%tutu_var%HALFGU~ 3 X#ImoenHalflingGullikin
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @97
END

//I_C_T2 ~%tutu_var%INGOT~ 1 X#ImoenIngot1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !InParty("minsc")~ THEN @98
//END

//I_C_T2 ~%tutu_var%INGOT~ 1 X#ImoenIngot2
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) InParty("minsc") !Global("HelpMinsc","GLOBAL",2)~ THEN @99
//== ~%MINSC_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) InParty("minsc") !Global("HelpMinsc","GLOBAL",2)~ THEN @100
//END

//I_C_T ~%tutu_var%JAHEIR~ 6 X#JaheiraImoenJoin1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @101
//== ~%tutu_var%JAHEIR~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @102
//END

//I_C_T ~%tutu_var%JAHEIR~ 8 X#JaheiraImoenJoin1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @101
//== ~%tutu_var%JAHEIR~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @102
//END

//I_C_T ~%tutu_var%JAHEIR~ 14 X#JaheiraImoenJoin1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @101
//== ~%tutu_var%JAHEIR~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @102
//END

INTERJECT ~%tutu_var%JAHEIR~ 7 X#JaheiraImoenJoin2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @103
END
++ @104 EXTERN ~%IMOEN_JOINED%~ ImJa3
++ @105 EXTERN ~%IMOEN_JOINED%~ ImJa1

I_C_T3 ~%tutu_var%JENKAL~ 2 X#ImoenJenkal1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @106
== ~%ALORA_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_var%JENKAL~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1008
END

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#ImoenJenkal2","GLOBAL",1)~ THEN ~%IMOEN_JOINED%~ ImoenJenkal2
@108
DO ~SetGlobal("X#ImoenJenkal2","GLOBAL",2)~
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @109
== ~%ALORA_BANTER%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @110
== ~%IMOEN_BANTER%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @111
== ~%ALORA_BANTER%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @112
EXIT

I_C_T ~%tutu_var%KIRIAN~ 1 X#ImoenKirian1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @113
END

I_C_T ~%tutu_var%KIRIAN~ 1 X#ImoenKirian2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,MALE)~ THEN @114
END

//I_C_T ~%tutu_var%KIRIAN~ 4 X#ImoenKirian3
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @115
//END

//I_C_T2 ~%tutu_var%KISSIQ~ 1 X#ImoenKissiq1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Global("TalkedToChicken","GLOBAL",0)~ THEN @116
//END

I_C_T ~%tutu_var%KISSIQ~ 2 X#ImoenKissiq2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @116
== ~%tutu_var%KISSIQ~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1009
END

INTERJECT ~%tutu_var%KERRAC~ 2 X#ImoenKerruch
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @117
END
++ @118 EXTERN ~%IMOEN_JOINED%~ IMKER1
++ @119 EXTERN ~%IMOEN_JOINED%~ IMKER2
++ @120 EXTERN ~%IMOEN_JOINED%~ IMKER3
++ @121 EXTERN ~%IMOEN_JOINED%~ IMKER5

CHAIN ~%IMOEN_JOINED%~ IMKER1
@122
END
++ @123 EXTERN ~%IMOEN_JOINED%~ IMKER6
++ @124 EXTERN ~%IMOEN_JOINED%~ IMKER2
++ @125 EXTERN ~%IMOEN_JOINED%~ IMKER2

CHAIN ~%IMOEN_JOINED%~ IMKER2
@126
COPY_TRANS ~%tutu_var%KERRAC~ 2

CHAIN ~%IMOEN_JOINED%~ IMKER3
@127
END ~%IMOEN_JOINED%~ IMKER4

CHAIN ~%IMOEN_JOINED%~ IMKER4
@128
COPY_TRANS ~%tutu_var%KERRAC~ 2

CHAIN ~%IMOEN_JOINED%~ IMKER5
@129
= @130
= @131
END ~%IMOEN_JOINED%~ IMKER4

CHAIN ~%IMOEN_JOINED%~ IMKER6
@132
= @133
COPY_TRANS ~%tutu_var%KERRAC~ 2

I_C_T ~%tutu_var%KYLEE~ 0 X#ImoenKylee1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @134
END

//I_C_T2 ~%tutu_scripts%LAVLEAD~ 4 X#ImoenRill1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) PartyGoldGT(999)~ THEN @135
//END

//I_C_T2 ~%tutu_scripts%LAVLEAD~ 4 X#ImoenRill2
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) PartyGoldLT(1000)~ THEN @136
//= @137
//END

I_C_T ~%tutu_scripts%LAVLEAD~ 1 X#ImoenRill3
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @138
END

I_C_T ~%tutu_scripts%LAVLEAD~ 3 X#ImoenRill4
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) PartyGoldGT(5000)~ THEN @139
END

//I_C_T2 ~%tutu_var%LARYSS~ 1 X#ImoenLaryssa1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @140
//END


CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#ImoenLaryssa2","GLOBAL",1)~ THEN ~%IMOEN_JOINED%~ ImoenLaryssa2
@141
DO ~SetGlobal("X#ImoenLaryssa2","GLOBAL",2)~
EXIT


//I_C_T ~%tutu_var%MINSC~ 5 X#MinscImoenJoin1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,MALE) OR(4) Class(Player1,MAGE_ALL) Class(Player1,CLERIC_ALL) Class(Player1,BARD_ALL) Class(Player1,DRUID_ALL)~ THEN @142
//= @143
//== ~%tutu_var%MINSC~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,MALE) OR(4) Class(Player1,MAGE_ALL) Class(Player1,CLERIC_ALL) Class(Player1,BARD_ALL) Class(Player1,DRUID_ALL)~ THEN @144
//END

//I_C_T ~%tutu_var%MINSC~ 5 X#MinscImoenJoin2
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @142
//= @143
//== ~%tutu_var%MINSC~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @144
//END

INTERJECT ~%tutu_var%MINSC~ 5 X#MinscImoenJoin3
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,MALE) !Class(Player1,MAGE_ALL) !Class(Player1,CLERIC_ALL) !Class(Player1,BARD_ALL) !Class(Player1,DRUID_ALL)~ THEN @142
= @143
END
++ @145 EXTERN ~%IMOEN_JOINED%~ ImMi2
++ @146 EXTERN ~%IMOEN_JOINED%~ ImMi1

CHAIN ~%IMOEN_JOINED%~ ImMi1
@147
== ~%tutu_var%MINSC~ @144
COPY_TRANS ~%tutu_var%MINSC~ 5

CHAIN ~%IMOEN_JOINED%~ ImMi2
@148
== ~%tutu_var%MINSC~ @144
COPY_TRANS ~%tutu_var%MINSC~ 5

INTERJECT ~%tutu_var%NALIN~ 4 X#ImoenNalin
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @149
END
++ @150 EXTERN ~%IMOEN_JOINED%~ ImNalin1
++ @151 EXTERN ~%IMOEN_JOINED%~ ImNalin2
++ @152 EXTERN ~%IMOEN_JOINED%~ ImNalin3

CHAIN ~%IMOEN_JOINED%~ ImNalin1
@153
== ~%tutu_var%NALIN~ @154
COPY_TRANS ~%tutu_var%NALIN~ 4

CHAIN ~%IMOEN_JOINED%~ ImNalin2
@155
== ~%tutu_var%NALIN~ @154
COPY_TRANS ~%tutu_var%NALIN~ 4

CHAIN ~%IMOEN_JOINED%~ ImNalin3
@156
= @157
== ~%tutu_var%NALIN~ @154
COPY_TRANS ~%tutu_var%NALIN~ 4

//I_C_T ~%tutu_var%NARCIL~ 0 X#ImoenNarcillius1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @158
//END

//I_C_T ~%tutu_var%NARCIL~ 2 X#ImoenNarcillius2
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class("%IMOEN_DV%",MAGE_ALL)~ THEN @159
//END

I_C_T ~%tutu_var%NIKOLA~ 8 X#ImoenNikolai
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class("%IMOEN_DV%",MAGE_ALL)~ THEN @160
== ~%tutu_var%NIKOLA~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class("%IMOEN_DV%",MAGE_ALL)~ THEN @1010
END

I_C_T ~%tutu_var%NOOBER~ 5 X#NooberImoen1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @161
END

//I_C_T ~%tutu_var%NOOBER~ 10 X#NooberImoen2
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @162
//END

//I_C_T ~%tutu_var%NOOBER~ 11 X#NooberImoen3
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @163
//== ~%tutu_var%NOOBER~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @164
//END

//I_C_T ~%tutu_var%OGRMA2~ 0 X#ImoenOgre1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @165
//END

I_C_T ~%tutu_var%OSMADI~ 2 X#ImoenOsmadi1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @166
== ~%tutu_var%OSMADI~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1011
END

I_C_T ~%tutu_var%PALLON~ 1 X#ImoenPallon2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @167
= @168
= @169
== ~%tutu_var%PALLON~ @1012
END

//I_C_T2 ~%tutu_var%PALLON~ 2 X#ImoenPallon2
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @167
//= @170
//= @169
//END

//I_C_T2 ~%tutu_var%PALLON~ 4 X#ImoenPallon1
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @171
//= @168

//= @169
//END

I_C_T ~%tutu_var%PALLON~ 5 X#ImoenPallon1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @171
= @168
= @169
== ~%tutu_var%PALLON~ @1012
END

I_C_T ~%tutu_var%PERMID~ 0 X#ImoenPermidon
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @172
END

I_C_T ~%tutu_var%PRISM~ 1 X#ImoenPrism
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @173
END

I_C_T ~%tutu_var%RAIKEN~ 2 X#ImoenRaiken
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @174
== ~%tutu_var%RAIKEN~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1013
END

I_C_T ~%tutu_var%TETHTO2~ 2 X#ImoenTethoril1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @175
END

I_C_T ~%tutu_var%TEVEN~ 2 X#ImoenTeven
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @174
== ~%tutu_var%TEVEN~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1014
END

I_C_T ~%tutu_var%VITIAR~ 0 X#ImoenVitiar1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Class(Player1,THIEF_ALL) OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @176
== ~%tutu_var%VITIAR~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Class(Player1,THIEF_ALL) OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @1007
END

I_C_T ~%tutu_var%VITIAR~ 0 X#ImoenVitiar2
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class(Player1,THIEF_ALL) OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @177
== ~%tutu_var%VITIAR~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) !Class(Player1,THIEF_ALL) OR(3) !InParty("minsc") !InMyArea("minsc") StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @1007
END

I_C_T ~%tutu_var%ULCAST~ 5 X#ImoenUlcaster
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @178
= @179
== ~%tutu_var%ULCAST~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1015
END

//I_C_T ~%tutu_var%ULRAUN~ 3 X#ImoenUlraunt
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @180
//END

I_C_T ~%tutu_var%ZHURLO~ 0 X#ImoenZhurlong
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @181
= @182
== ~%tutu_var%ZHURLO~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1016
END

I_C_T ~%tutu_var%ZHURLO~ 4 X#ImoenZhurlong1
== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @183
== ~%tutu_var%ZHURLO~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID)~ THEN @1016
END

APPEND ~%IMOEN_JOINED%~

/* Jaheira rejected */

IF ~~ ImJa3
SAY @184
COPY_TRANS ~%tutu_var%JAHEIR~ 7
END

IF ~~ ImJa1
SAY @185
++ @186 + ImJa4
++ @187 + ImJa2
END

IF ~~ ImJa2
SAY @188
COPY_TRANS ~%tutu_var%JAHEIR~ 7
END

IF ~~ ImJa4
SAY @189
COPY_TRANS ~%tutu_var%JAHEIR~ 7
END

/* Talked to Foreshadow */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#IMForeshadow","GLOBAL",1)~ THEN BEGIN ImForeshadow
SAY @190
++ @191 DO ~SetGlobal("X#IMForeshadow","GLOBAL",2)~ + ImForsh1
++ @192 DO ~SetGlobal("X#IMForeshadow","GLOBAL",2)~ + ImForsh2
++ @193 DO ~SetGlobal("X#IMForeshadow","GLOBAL",2)~ + ImForsh2
END

IF ~~ ImForsh1
SAY @194
IF ~~ THEN EXIT
END

IF ~~ ImForsh2
SAY @195
IF ~~ THEN EXIT
END

/* Found diamond */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#IMDiamond","GLOBAL",1)~ THEN BEGIN ImDiamond
SAY @196
IF ~~ THEN DO ~SetGlobal("X#IMDiamond","GLOBAL",2)~ EXIT
END

/* Found Gorion's Body 1 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#IMGBody","GLOBAL",1)~ THEN BEGIN ImoenGorionBody
SAY @197
++ @198 DO ~SetGlobal("X#IMGBody","GLOBAL",2)~ + IMINT1.1
++ @199 DO ~SetGlobal("X#IMGBody","GLOBAL",2)~ + IMINT1.1
++ @200 DO ~SetGlobal("X#IMGBody","GLOBAL",2)~ + IMINT1.1A
END

IF ~~ IMINT1.1A
SAY @201
IF ~~ THEN GOTO IMINT1.1
END

IF ~~ IMINT1.1
SAY @202
++ @203 GOTO IMINT1.2
++ @204 GOTO IMINT1.3
++ @205 GOTO IMINT1.4
++ @206 GOTO IMINT1.3
END

IF ~~ IMINT1.2
SAY @207
IF ~~ THEN EXIT
END

IF ~~ IMINT1.3
SAY @208
IF ~~ THEN GOTO IMINT1.5
END

IF ~~ IMINT1.4
SAY @209
++ @210 GOTO IMINT1.6
++ @211 GOTO IMINT1.7
END

IF ~~ IMINT1.5
SAY @212
++ @213 GOTO IMINT1.8
++ @214 GOTO IMINT1.9
++ @215 + IMINT1.10
++ @216 GOTO IMINT1.11
++ @217 + IMINT1.5A
END

IF ~~ IMINT1.5A
SAY @218
IF ~~ THEN EXIT
END

IF ~~ IMINT1.6
SAY @219
= @220
IF ~~ THEN EXIT
END

IF ~~ IMINT1.7
SAY @221
= @222
++ @223 EXIT
++ @224 GOTO IMINT1.12
+ ~Class(Player1,THIEF_ALL)~ + @225 GOTO IMINT1.13Thief
+ ~!Class(Player1,THIEF_ALL) Gender(Player1,MALE)~ + @225 GOTO IMINT1.13Male
+ ~!Class(Player1,THIEF_ALL) Gender(Player1,FEMALE)~ + @225 GOTO IMINT1.13Female
++ @226 GOTO IMINT1.9A
END

IF ~~ IMINT1.8
SAY @227
= @228
IF ~~ THEN EXIT
END

IF ~~ IMINT1.9
SAY @229
++ @230 GOTO IMINT1.14
++ @231 EXIT
++ @232 EXIT
END

IF ~~ IMINT1.9A
SAY @233
++ @230 GOTO IMINT1.14
++ @231 EXIT
++ @232 EXIT
END

IF ~~ IMINT1.10
SAY @234
= @235
++ @230 GOTO IMINT1.14
++ @231 EXIT
++ @232 EXIT
END

IF ~~ IMINT1.11
SAY @236
++ @237 + IMINT1.14A
++ @238 GOTO IMINT1.14
++ @239 + IMINT1.14B
++ @231 EXIT
++ @232 EXIT
END

IF ~~ IMINT1.12
SAY @240
= @241
IF ~~ THEN EXIT
END

IF ~~ IMINT1.13Female
SAY @242
= @243
++ @244 + IMINT1.15
++ @245 GOTO IMINT1.16
++ @246 GOTO IMINT1.15
++ @247 GOTO IMINT1.15
END

IF ~~ IMINT1.13Male
SAY @248
= @243
++ @244 + IMINT1.15
++ @245 GOTO IMINT1.16
++ @246 GOTO IMINT1.15
++ @247 GOTO IMINT1.15
END

IF ~~ IMINT1.13Thief
SAY @249
++ @250 GOTO IMINT1.17
++ @251 GOTO IMINT1.18
++ @252 GOTO IMINT1.18
END

IF ~~ IMINT1.14A
SAY @253
IF ~~ THEN GOTO IMINT1.14
END

IF ~~ IMINT1.14B
SAY @254
IF ~~ THEN GOTO IMINT1.14
END

IF ~~ IMINT1.15
SAY @255
IF ~~ THEN EXIT
END

IF ~~ IMINT1.16
SAY @256
IF ~~ THEN DO ~SetGlobal("X#IMORUN","GLOBAL",1) ActionOverride("%IMOEN_DV%",JumpToPoint([3498.3684])) MoveViewPoint([3498.3684],INSTANT)~ EXIT
END

IF ~%BGT_VAR% Global("X#IMORUN","GLOBAL",2)~ THEN BEGIN IMINT1.20
SAY @257
IF ~~ THEN DO ~SetGlobal("X#IMORUN","GLOBAL",3)~
EXIT
END

IF ~~ IMINT1.17
SAY @258
IF ~~ THEN EXIT
END

IF ~~ IMINT1.18

SAY @259
++ @260 EXIT
+ ~!Alignment(Player1,LAWFUL_GOOD)~ + @261 GOTO IMINT1.19
END

IF ~~ IMINT1.19
SAY @262
IF ~~ THEN EXIT
END

/* Found Scroll, but Gorion's Body Already Buried */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#IMGBodyFinal","GLOBAL",1)~ THEN BEGIN X#ImoenBodyBuriedScroll
SAY @263
++ @198 DO ~SetGlobal("X#IMGBodyFinal","GLOBAL",2) SetGlobal("X#KeepBuryGorion","GLOBAL",2) SetGlobal("X#PCBuryGorion","GLOBAL",2)~ + X#IMBodyBuried1.1
++ @264 DO ~SetGlobal("X#IMGBodyFinal","GLOBAL",2) SetGlobal("X#KeepBuryGorion","GLOBAL",2) SetGlobal("X#PCBuryGorion","GLOBAL",2)~ + X#IMBodyBuried1.1
++ @265 DO ~SetGlobal("X#IMGBodyFinal","GLOBAL",2) SetGlobal("X#KeepBuryGorion","GLOBAL",2) SetGlobal("X#PCBuryGorion","GLOBAL",2)~ + X#IMBodyBuried1.1A
END

IF ~~ X#IMBodyBuried1.1A
SAY @266
IF ~~ THEN GOTO X#IMBodyBuried1.1
END

IF ~~ X#IMBodyBuried1.1
SAY @267
++ @203 GOTO X#IMBodyBuried1.2
++ @204 GOTO X#IMBodyBuried1.3
++ @205 GOTO X#IMBodyBuried1.4
++ @206 GOTO X#IMBodyBuried1.3
END

IF ~~ X#IMBodyBuried1.2
SAY @207
IF ~~ THEN EXIT
END

IF ~~ X#IMBodyBuried1.3
SAY @208
IF ~~ THEN GOTO X#IMBodyBuried1.5
END

IF ~~ X#IMBodyBuried1.4
SAY @209
++ @210 GOTO X#IMBodyBuried1.6
++ @211 GOTO X#IMBodyBuried1.7
END

IF ~~ X#IMBodyBuried1.5
SAY @212
++ @213 GOTO X#IMBodyBuried1.8
++ @268 GOTO X#IMBodyBuried1.9
++ @215 + X#IMBodyBuried1.9
++ @216 GOTO X#IMBodyBuried1.9
++ @217 + X#IMBodyBuried1.5A
END

IF ~~ X#IMBodyBuried1.5A
SAY @218
IF ~~ THEN EXIT
END

IF ~~ X#IMBodyBuried1.6
SAY @219
= @220
IF ~~ THEN GOTO X#IMBodyBuried1.9
END

IF ~~ X#IMBodyBuried1.7
SAY @221
= @222
++ @223 GOTO X#IMBodyBuried1.9
++ @224 GOTO X#IMBodyBuried1.12
+ ~Class(Player1,THIEF_ALL)~ + @225 GOTO X#IMBodyBuried1.13Thief
+ ~!Class(Player1,THIEF_ALL) Gender(Player1,MALE)~ + @225 GOTO X#IMBodyBuried1.13Male
+ ~!Class(Player1,THIEF_ALL) Gender(Player1,FEMALE)~ + @225 GOTO X#IMBodyBuried1.13Female
END

IF ~~ X#IMBodyBuried1.8
SAY @227
= @228
IF ~~ THEN GOTO X#IMBodyBuried1.9
END

IF ~~ X#IMBodyBuried1.9
SAY @269
++ @270 + X#IMBodyBuried1.14A
++ @271 GOTO X#IMBodyBuried1.14
++ @239 + X#IMBodyBuried1.14B
++ @272 EXIT
++ @273 EXIT
END

IF ~~ X#IMBodyBuried1.12
SAY @240
IF ~~ THEN REPLY @274 GOTO X#IMBodyBuried1.9
END

IF ~~ X#IMBodyBuried1.13Female
SAY @242
= @243
++ @244 + X#IMBodyBuried1.15
++ @245 GOTO X#IMBodyBuried1.16
++ @246 GOTO X#IMBodyBuried1.15
++ @247 GOTO X#IMBodyBuried1.15
END

IF ~~ X#IMBodyBuried1.13Male
SAY @248
= @243
++ @244 + X#IMBodyBuried1.15
++ @245 GOTO X#IMBodyBuried1.16
++ @246 GOTO X#IMBodyBuried1.15
++ @247 GOTO X#IMBodyBuried1.15
END

IF ~~ X#IMBodyBuried1.13Thief
SAY @249
++ @250 GOTO X#IMBodyBuried1.17
++ @251 GOTO X#IMBodyBuried1.18
++ @252 GOTO X#IMBodyBuried1.18
END

IF ~~ X#IMBodyBuried1.14A
SAY @253
IF ~~ THEN GOTO X#IMBodyBuried1.14
END

IF ~~ X#IMBodyBuried1.14B
SAY @275
IF ~~ THEN GOTO X#IMBodyBuried1.14
END

IF ~~ X#IMBodyBuried1.14
SAY @276
IF ~~ THEN EXIT
END

IF ~~ X#IMBodyBuried1.15
SAY @255
IF ~~ THEN EXIT
END

IF ~~ X#IMBodyBuried1.16
SAY @256
IF ~~ THEN DO ~SetGlobal("X#IMORUN","GLOBAL",1) ActionOverride("%IMOEN_DV%",JumpToPoint([3498.3684])) MoveViewPoint([3498.3684],INSTANT)~ EXIT
END

IF ~Global("X#IMORUN","GLOBAL",2)~ THEN BEGIN X#IMBodyBuried1.20
SAY @257
IF ~~ THEN DO ~SetGlobal("X#IMORUN","GLOBAL",3)~
EXIT
END

IF ~~ X#IMBodyBuried1.17
SAY @258
IF ~~ THEN EXIT
END

IF ~~ X#IMBodyBuried1.18
SAY @259
++ @260 EXIT
+ ~!Alignment(Player1,LAWFUL_GOOD)~ + @261 GOTO X#IMBodyBuried1.19
END

IF ~~ X#IMBodyBuried1.19
SAY @262
IF ~~ THEN EXIT
END

/* Assassin 2 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#IMNeira","GLOBAL",1)~ THEN BEGIN IMINT2
SAY @277
++ @278 DO ~SetGlobal("X#IMNeira","GLOBAL",2)~ GOTO IMINT2.1
+ ~!Dead("Karlat") !Dead("tarnesh")~ + @279 DO ~SetGlobal("X#IMNeira","GLOBAL",2)~ GOTO IMINT2.2
+ ~Dead("Karlat") !Dead("tarnesh")~ + @280 DO ~SetGlobal("X#IMNeira","GLOBAL",2)~ GOTO IMINT2.2
+ ~!Dead("Karlat") Dead("tarnesh")~ + @281 DO ~SetGlobal("X#IMNeira","GLOBAL",2)~ GOTO IMINT2.2
+ ~Dead("karlat") Dead("tarnesh")~ + @282 DO ~SetGlobal("X#IMNeira","GLOBAL",2)~ GOTO IMINT2.2
END

IF ~~ IMINT2.2
SAY @283
++ @284 GOTO IMINT2.5
+ ~Gender(Player1,MALE)~ + @285 GOTO IMINT2.6Male
+ ~Gender(Player1,FEMALE)~ + @285 GOTO IMINT2.6Female
END

IF ~~ IMINT2.4
SAY @286
++ @287 GOTO IMINT2.7
++ @288 GOTO IMINT2.8
END

IF ~~ IMINT2.5
SAY @289
IF ~~ THEN EXIT
END

IF ~~ IMINT2.6Female
SAY @290
++ @291 EXIT
++ @292 GOTO IMINT2.9
++ @293 GOTO IMINT2.9
END

IF ~~ IMINT2.6Male
SAY @294
++ @291 EXIT
++ @295 GOTO IMINT2.10
++ @296 GOTO IMINT2.11
END

IF ~~ IMINT2.7
SAY @297
IF ~~ THEN EXIT
END

IF ~~ IMINT2.8
SAY @298
++ @299 GOTO IMINT2.8A
++ @300 EXIT
++ @301 EXIT
END

IF ~~ IMINT2.8A
SAY @302
+ ~OR(2) CheckStatGT(Player1,12,INT) CheckStatGT(Player1,12,WIS)~ + @303 GOTO IMINT2.8B
++ @304 EXIT
END

IF ~~ IMINT2.8B
SAY @305
IF ~~ THEN EXIT
END

IF ~~ IMINT2.9
SAY @306
++ @307 GOTO IMINT2.12
++ @308 EXIT
END

IF ~~ IMINT2.10
SAY @309
IF ~~ THEN EXIT
END

IF ~~ IMINT2.11
SAY @310
++ @311 GOTO IMINT2.13
++ @312 GOTO IMINT2.14
END

IF ~~ IMINT2.12
SAY @313
++ @314 GOTO IMINT2.15
++ @315 GOTO IMINT2.15
END

IF ~~ IMINT2.13
SAY @316
++ @317 + IMINT2.16
END

IF ~~ IMINT2.16
SAY @318
IF ~~ THEN EXIT
END

IF ~~ IMINT2.14
SAY @319
++ @317 + IMINT2.17
END

IF ~~ IMINT2.17
SAY @320
IF ~~ THEN DO ~IncrementGlobal("X#ImoenLove","GLOBAL",1)~ EXIT
END

IF ~~ IMINT2.15
SAY @321 
IF ~~ THEN EXIT
END

/* 3: Return to Candlekeep */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#IMinCK","GLOBAL",1) AreaCheck("%Candlekeep_Inn_L1%")~ THEN BEGIN IMINT3
SAY @322
++ @323 DO ~SetGlobal("X#IMinCK","GLOBAL",2)~ GOTO IMINT3.1
++ @324 DO ~SetGlobal("X#IMinCK","GLOBAL",2)~ GOTO IMINT3.2
++ @325 DO ~SetGlobal("X#IMinCK","GLOBAL",2)~ GOTO IMINT3.3
++ @326 DO ~SetGlobal("X#IMinCK","GLOBAL",2)~ GOTO IMINT3.4
END

IF ~~ IMINT3.1
SAY @327
IF ~~ THEN EXIT
END

IF ~~ IMINT3.2
SAY @328
++ @329 EXIT
++ @330 EXIT
++ @331 EXIT
END

IF ~~ IMINT3.3
SAY @332
++ @333 EXIT
END

IF ~~ IMINT3.4
SAY @334
IF ~~ THEN EXIT
END

/* #4: Malar */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#IMMALAR","GLOBAL",1)~ THEN BEGIN IMINT4
SAY @335
+ ~CheckStatGT(Player1,7,INT)~ + @336 DO ~SetGlobal("X#IMMALAR","GLOBAL",2)~ GOTO IMINT4.1
+ ~CheckStatLT(Player1,8,INT)~ + @337 DO ~SetGlobal("X#IMMALAR","GLOBAL",2)~ GOTO IMINT4.2
+ ~CheckStatGT(Player1,12,INT)~ + @338 DO ~SetGlobal("X#IMMALAR","GLOBAL",2)~ GOTO IMINT4.3
++ @339 DO ~SetGlobal("X#IMMALAR","GLOBAL",2)~ GOTO IMINT4.2
END

IF ~~ IMINT4.1
SAY @340
+ ~CheckStatGT(Player1,12,INT)~ + @341 GOTO IMINT4.3
+ ~CheckStatLT(Player1,13,INT)~ + @342 GOTO IMINT4.2
++ @339 GOTO IMINT4.2
END

IF ~~ IMINT4.2
SAY @343
IF ~~ THEN EXIT
END

IF ~~ IMINT4.3
SAY @344
++ @345 GOTO IMINT4.4
++ @346 GOTO IMINT4.5
++ @347 GOTO IMINT4.6
END

IF ~~ IMINT4.4
SAY @348
IF ~~ THEN EXIT
END

IF ~~ IMINT4.5
SAY @349
++ @350 GOTO IMINT4.6
++ @351 GOTO IMINT4.4
END

IF ~~ IMINT4.6
SAY @352
++ @353 + IMINT4.6A
END

IF ~~ IMINT4.6A
SAY @354
+ ~CheckStatLT(Player1,17,INT)~ + @355 EXTERN PLAYER1 IMINT4.7A
+ ~CheckStatGT(Player1,16,INT)~ + @355 EXTERN PLAYER1 IMINT4.7B
++ @356 EXIT
END

END

CHAIN ~PLAYER1~ IMINT4.7A
@357
= @358
== ~%IMOEN_JOINED%~ @359
= @360
DO ~ActionOverride(Player1,SetDialogue(""))~
EXIT

CHAIN ~PLAYER1~ IMINT4.7B
@361
= @362
= @363
= @364
= @365
== ~%IMOEN_JOINED%~ @366
DO ~ActionOverride(Player1,SetDialogue(""))~
EXIT

CHAIN ~%IMOEN_JOINED%~ IMINT1.14
@367
== ~%JAHEIRA_BANTER%~ IF ~InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @368
== ~%KHALID_BANTER%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID)~ THEN @369
== ~%GARRICK_BANTER%~ IF ~InParty("garrick") InMyArea("garrick") !StateCheck("garrick",CD_STATE_NOTVALID)~ THEN @370
== ~%DYNAHEIR_BANTER%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @371
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @372
== ~%XAN_JOINED%~ IF ~InParty("xan") InMyArea("xan") !StateCheck("xan",CD_STATE_NOTVALID)~ THEN @373
== ~%YESLICK_BANTER%~ IF ~InParty("yeslick") InMyArea("yeslick") !StateCheck("yeslick",CD_STATE_NOTVALID)~ THEN @374
== ~%KAGAIN_BANTER%~ IF ~InParty("kagain") InMyArea("kagain") !StateCheck("kagain",CD_STATE_NOTVALID)~ THEN @375
== ~%XZAR_BANTER%~ IF ~InParty("xzar") InMyArea("xzar") !StateCheck("xzar",CD_STATE_NOTVALID)~ THEN @376
== ~%MONTARON_BANTER%~ IF ~InParty("montaron") InMyArea("montaron") !StateCheck("montaron",CD_STATE_NOTVALID)~ THEN @377
== ~%IMOEN_JOINED%~ @378
END
++ @379 DO ~SetGlobal("X#PCBuryGorion","GLOBAL",1)~ EXIT
++ @380 DO ~SetGlobal("X#PCBuryGorion","GLOBAL",1)~ EXIT


CHAIN3 ~%IMOEN_JOINED%~ IMINT2.1
@381
== ~%KHALID_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @382
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @383
END
++ @384 EXTERN ~%IMOEN_JOINED%~ IMINT2.3
++ @385 EXTERN ~%IMOEN_JOINED%~ IMINT2.4

CHAIN3 ~%IMOEN_JOINED%~ IMINT2.3
@386
== ~%IMOEN_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @387
== ~%JAHEIRA_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @388
== ~%IMOEN_JOINED%~ IF ~InParty("khalid") InMyArea("khalid") !StateCheck("khalid",CD_STATE_NOTVALID) InParty("jaheira") InMyArea("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @389
== ~%IMOEN_JOINED%~ @390
EXIT

//I_C_T2 ~%tutu_scriptbg%WILLIA~ 10 X#ManyInt14
//== ~%IMOEN_JOINED%~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @391
//== ~%tutu_scriptbg%WILLIA~ IF ~InParty("%IMOEN_DV%") InMyArea("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @392
//END
