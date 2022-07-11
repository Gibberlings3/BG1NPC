/* Kivan Interjections */

REPLACE_STATE_TRIGGER ~%tutu_var%BELDIN~ 0 ~Global("X#KivanBeldin","GLOBAL",0)~

APPEND ~%tutu_var%BELDIN~
IF ~%BGT_VAR% Global("X#KivanBeldin","GLOBAL",1)~ THEN BEGIN X#BeldinSpeaksAgain
SAY @6
++ @7 DO ~SetGlobal("X#KivanBeldin","GLOBAL",2)~ EXTERN ~%KIVAN_JOINED%~ Beldin1Chain
++ @8 DO ~SetGlobal("X#KivanBeldin","GLOBAL",3) GiveItemCreate("%tutu_var%MISC18",Player1,1,0,0) ActionOverride("beldin", EscapeArea())~ EXIT
++ @9 DO ~SetGlobal("X#KivanBeldin","GLOBAL",3) ActionOverride("beldin", EscapeArea())~ EXIT
END

END

CHAIN IF ~%BGT_VAR% Global("X#KivanBeldin","GLOBAL",2)~ THEN ~%KIVAN_JOINED%~ Beldin1Chain
@10
DO ~SetGlobal("X#KivanBeldin","GLOBAL",3)~
== ~%tutu_var%BELDIN~ @11
DO ~ReputationInc(1) ActionOverride("beldin", EscapeArea())~
EXIT

I_C_T ~%tutu_var%DINK~ 1 X#KivanDink
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @12
== ~%tutu_var%DINK~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @1002
END

EXTEND_BOTTOM ~%tutu_var%BELDIN~ 1
IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("X#KivanBeldin","GLOBAL",0)~ THEN EXTERN ~%KIVAN_JOINED%~ X#KivanBeldin
END

//I_C_T ~%tutu_scriptbg%FTOWN2%eet_var%~ 6 X#KivanJoseph1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @13
//== ~%tutu_scriptbg%FTOWN2%eet_var%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @14
//END

//I_C_T2 ~%tutu_var%BARDOL~ 4 X#KivanBardol1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @15
//END

//I_C_T2 ~%tutu_var%BERRUN~ 15 X#KivanBerrun2
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @16
//END

//I_C_T2 ~%tutu_var%BERRUN~ 16 X#KivanBerrun3
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @16
//END

//I_C_T2 ~%tutu_var%BERRUN~ 17 X#KivanBerrun4
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @16
//END

//I_C_T2 ~%tutu_var%BERRUN~ 19 X#KivanBerrun1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @17
//END

//I_C_T2 ~%tutu_var%LIIA~ 8 X#KivanLiia1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @18
//END

//I_C_T2 ~%tutu_var%FARMBR~ 10 X#KivanBrun1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @19
//END

//I_C_T2 ~%tutu_var%GALLOR~ 6 X#KivanGallor1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @20
//DO ~ActionOverride("kivan",LeaveParty()) ActionOverride("kivan",Enemy())~
//END

//I_C_T2 ~%tutu_var%GALLOR~ 7 X#KivanGallor2
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @20
//DO ~ActionOverride("kivan",LeaveParty()) ActionOverride("kivan",Enemy())~
//END

//I_C_T2 ~%tutu_var%GALLOR~ 2 X#KivanGallor3
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @21
//END

//I_C_T2 ~%tutu_var%ANGELO~ 0 X#KivanAngelo1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @22
//END

I_C_T ~%tutu_var%ANGELO~ 1 X#KivanAngelo2
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @23
== ~%tutu_var%ANGELO~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @1003
END

//I_C_T ~%tutu_var%VARCI~ 1 X#KivanVarci1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @24
//END

I_C_T ~%tutu_var%VAIL~ 7 X#KivanVail4
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @25
= @26
== ~%tutu_var%VAIL~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @1004
END

I_C_T ~%tutu_var%VAIL~ 5 X#KivanVail3
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @27
DO ~ActionOverride("kivan",LeaveParty()) ActionOverride("kivan",Enemy())~
== ~%tutu_var%VAIL~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @1005
END

I_C_T ~%tutu_var%VAIL~ 4 X#KivanVail2
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @28
== ~%tutu_var%VAIL~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @1006
END

//I_C_T ~%tutu_var%VAIL~ 3 X#KivanVail1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @29
//END

//I_C_T ~%tutu_var%QUINN~ 1 X#KivanQuinn1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @30
//END

//I_C_T2 ~%tutu_var%ARDROU~ 2 X#KivanArdrouine2
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @31
//END

//I_C_T2 ~%tutu_var%ARDROU~ 0 X#KivanArdrouine1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @32 DO ~SetGlobal("J#ArdTalk","GLOBAL",1)~
//END

//I_C_T2 ~%tutu_var%DYNAHE~ 10 X#KivanDynaheir
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @33
//DO ~ActionOverride("kivan",LeaveParty()) ActionOverride("kivan",Enemy())~
//END

//I_C_T2 ~%tutu_var%SPENGIL~ 2 X#KivSpen
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @34
//END

I_C_T ~%tutu_var%MIRIAN~ 2 X#KivMirian3
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @35
== ~%tutu_var%MIRIAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @1007
END

I_C_T ~%tutu_var%MIRIAN~ 1 X#KivMirian2
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @35
== ~%tutu_var%MIRIAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @1007
END

//I_C_T ~%tutu_var%MIRIAN~ 0 X#KivMirian1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @36
//== ~%tutu_var%MIRIAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @37
//END

//I_C_T ~%tutu_var%BJORNI~ 1 X#KivanBjornin
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @38
//END

//I_C_T ~%tutu_scriptbg%NEB%eet_var%~ 8 X#KivanNeb
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @39
//== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @40
//END

//I_C_T ~%tutu_var%RAMAZI~ 15 X#KivanRamazi
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @41
//== ~%tutu_var%RAMAZI~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @1008
//END

//I_C_T ~%tutu_var%ABELA~ 9 X#KivanAbela
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @42
//== ~%tutu_var%ABELA~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @43
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @44
//== ~%tutu_var%ABELA~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @45
//END

//I_C_T2 ~%tutu_var%RAGEFA~ 6 X#KiRagefast
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @46
//END

//I_C_T2 ~%tutu_var%MINEC2~ 8 X#KiMinersCW
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") Global("FREESLAV","GLOBAL",0)~ THEN @47
//END

//I_C_T ~%tutu_scripts%LAVLEAD~ 2 X#KiRill
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @48
//END

//I_C_T2 ~%tutu_var%TENYA~ 0 X#KiTenyaTalk
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @49
//END

//I_C_T2 ~%tutu_var%THALAN~ 0 X#KivanThalantyr1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("P#KivWelcome","GLOBAL",0)~ THEN @50
//== ~%tutu_var%THALAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("P#KivWelcome","GLOBAL",0)~ THEN @51
//DO ~GiveItemCreate("x#kispr","kivan",1,0,0) SetGlobal("P#KivWelcome","GLOBAL",1)~
//END

I_C_T ~%tutu_var%THALAN~ 1 X#KivanThalantyr2
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("P#KivWelcome","GLOBAL",0)~ THEN @50
== ~%tutu_var%THALAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Global("P#KivWelcome","GLOBAL",0)~ THEN @51
DO ~GiveItemCreate("x#kispr","kivan",1,0,0) SetGlobal("P#KivWelcome","GLOBAL",1)~
END


I_C_T ~%tutu_var%KELDDA~ 0 X#KivanKeldath
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @52
== ~%tutu_var%KELDDA~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @53
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @54
== ~%tutu_var%KELDDA~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @55
END

I_C_T ~%tutu_var%DRIZZT~ 6 X#KivanDrizzt
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @56
== ~%tutu_var%DRIZZT~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @57
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @58
== ~%tutu_var%DRIZZT~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @59
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @60
END

I_C_T ~%tutu_var%FLAM4~ 9 X#KivanSamuel
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @61
END

//I_C_T ~%tutu_var%VAI~ 0 X#KivanVai
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @62
//== ~%tutu_var%VAI~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @63
//== ~%tutu_var%VAI~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Gender(Player1, MALE)~ THEN @64
//== ~%tutu_var%VAI~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) Gender(Player1, FEMALE)~ THEN @65
//== ~%tutu_var%VAI~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @66
//END

//I_C_T2 ~%tutu_var%GERDE~ 0 X#KivanGerdeTalk
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @67
//== ~%tutu_var%GERDE~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @68
//END

I_C_T ~%tutu_var%BRIELB~ 13 X#KivanBrielbaraTalk
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @69
== ~%CORAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID)~ THEN @70
END

I_C_T ~%tutu_var%CORSON~ 1 X#KivanCorsone
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @71
= @72
END

//I_C_T ~%tutu_var%NEXLIT~ 0 X#KivanNexlit
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @73
//== ~%tutu_var%NEXLIT~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @74
//END

//I_C_T ~%tutu_var%RAMAZI~ 6 X#KivanRamazi
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @75
//END

//I_C_T ~%tutu_var%LOTHAN~ 1 X#KivanLothander
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @76
//== ~%tutu_var%LOTHAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @77
//END

//I_C_T2 ~%tutu_var%MINSC~ 0 X#KivanMinsc1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @78
//END

I_C_T ~%tutu_var%MINSC~ 1 X#KivanMinsc2
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @78
END

/*  Kivan, Archeologists, Where They Find The Statue */
I_C_T ~%tutu_var%CHARLE~ 0 X#KAWTFTS
 == ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @79
END

//I_C_T2 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState0% X#KivanEdwin1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @80
//END

//I_C_T2 ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState1% X#KivanEdwin2
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @80
//END

//I_C_T ~%tutu_var%MULAHE~ 6 X#KivanMulahey
// == ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @81
//== ~%tutu_var%MULAHE~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @82
//END

//I_C_T2 ~%tutu_var%MUTAMI~ 0 X#KivanMutamin
// == ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @83
//END

INTERJECT ~%tutu_var%TEVEN~ 0 X#KivanTeven
 == ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !Dead("tazok")~ THEN @84
== ~%tutu_var%TEVEN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !Dead("tazok")~ THEN @85
END
IF ~~ THEN DO ~Shout(1) Enemy()~ JOURNAL @86
EXIT

//I_C_T ~%tutu_var%RAIKEN~ 0 X#KivanRaiken
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !Dead("tazok")~ THEN @87
//END

I_C_T ~%tutu_var%CREDUS~ 9 X#KivanCredus
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !Dead("tazok")~ THEN @88
== ~%tutu_var%CREDUS~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !Dead("tazok")~ THEN @89
END

I_C_T ~%tutu_var%RAEMON~ 0 X#KivanRaemon
 == ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !Dead("tazok")~ THEN @90
 == ~%tutu_var%RAEMON~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID) !Dead("tazok")~ THEN @1009
END

//I_C_T ~%tutu_var%GARKLA~ 0 X#KivanGarklax
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @91
//END

I_C_T ~%tutu_var%ENDER~ 6 X#KivanEnder1
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @92
== ~%tutu_var%ENDER~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @93
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @94
== ~%tutu_var%ENDER~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @95
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @96
== ~%tutu_var%ENDER~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @97
END

I_C_T ~%tutu_var%ENDER~ 13 X#KivanEnder2
 == ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @92
== ~%tutu_var%ENDER~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @93
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @94
== ~%tutu_var%ENDER~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @95
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @96
== ~%tutu_var%ENDER~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @97
END

/* Additional Interjections */

//I_C_T2 ~%tutu_var%PERMID~ 1 X#KivanPermidon
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @98
//END

INTERJECT ~%tutu_var%CATTAC~ 0 X#KivanCattack
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @99
== ~%tutu_var%CATTAC~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @100
END ~%tutu_var%CATTAC~ 2

//I_C_T2 ~%tutu_var%KIRIAN~ 5 X#KivanKirian
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @101
//END

//I_C_T2 ~%tutu_var%DAVAEO~ 0 X#KivanDavaeornTalk
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @102
//END

I_C_T ~%tutu_var%KARAN~ 3 X#KivanKaran1
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @103
== ~%tutu_var%KARAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @1010
END

I_C_T ~%tutu_var%KARAN~ 4 X#KivanKaran2
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @103
== ~%tutu_var%KARAN~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @1010
END

//I_C_T ~%tutu_var%GARRIC~ 1 X#KivanGarrick1
//== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @104
//END

I_C_T ~%tutu_var%MERSIL~ 4 X#KivanFaltis1
== ~%KIVAN_JOINED%~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @105
== ~%tutu_var%MERSIL~ IF ~InParty("kivan") InMyArea("kivan") !StateCheck("kivan",CD_STATE_NOTVALID)~ THEN @1011
END


APPEND ~%MONTARON_JOINED%~

IF ~~ THEN BEGIN X#MontEnderKicked1
SAY @106
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) LeaveParty() EscapeArea() ActionOverride("xzar",LeaveParty()) ActionOverride("xzar",EscapeArea())~
EXIT
END
END

APPEND ~%KIVAN_JOINED%~

/* Beldin */

IF ~~ X#KivanBeldin
SAY @107
IF ~~ THEN DO ~SetGlobal("X#KivanBeldin","GLOBAL",1) ActionOverride("beldin",JumpToPoint([2180.2739])) CreateCreature("%tutu_scriptk%OBOLDAB",[2227.2390],0)
CreateCreature("%tutu_scriptk%OBOLDAB",[2227.2390],0)
CreateCreature("%tutu_scriptk%OBOLDAB",[2227.2390],0)
CreateCreature("%tutu_scriptk%OBOLDAB",[2227.2390],0)~ EXIT
END

/* Kivan - montaron killed Ender */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#KivanMontEnder","GLOBAL",1)~ THEN BEGIN X#KiMoEnderstart
SAY @108
++ @109 DO ~SetGlobal("P#KivanMontEnder","GLOBAL",2)~ EXTERN ~%MONTARON_JOINED%~ X#MontEnderKicked1
++ @110 DO ~SetGlobal("P#KivanMontEnder","GLOBAL",2)~ + KiMoEnder1
END

IF ~~ KiMoEnder1
SAY @111
IF ~~ DO ~SetGlobal("%KICKED_OUT%","LOCALS",1) LeaveParty() EscapeArea()~ EXIT
END

/*  Kivan, Prism Dead (sculptor at Nashkel) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KPD","GLOBAL",1)~ THEN BEGIN X#KPD1start
SAY @112
IF ~~ THEN DO ~SetGlobal("X#KPD","GLOBAL",2)~ EXIT
END

/*  Kivan, Before the last Battle with Sarevok */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KBLBWS","GLOBAL",1)~ THEN BEGIN KBLBWS1
SAY @121
IF ~~ THEN DO ~SetGlobal("X#KBLBWS","GLOBAL",2)~ EXIT
END

/*  Kivan, Entry to Durlag s Tower */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KEDT","GLOBAL",1)~ THEN BEGIN KEDT1
SAY @122
IF ~~ THEN DO ~SetGlobal("X#KEDT","GLOBAL",2)~ EXIT
END

/* Kivan, Entry to Baldur s Gate */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KEBG","GLOBAL",1)~ THEN BEGIN KEBG1
SAY @123
IF ~~ THEN DO ~SetGlobal("X#KEBG","GLOBAL",2)~ EXIT
END

/* Kivan, Xvart Village You Slaughter Them A Number Of Them (AR4700) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#KXVYSANOT","GLOBAL",1)~ THEN BEGIN KXVYSANOT1
SAY @124
IF ~~ THEN DO ~SetGlobal("X#KXVYSANOT","GLOBAL",2)~ EXIT
END

/* Kivan Bassilus dead */

IF WEIGHT #-2 ~%BGT_VAR% Global("P#KivanBass","GLOBAL",1)~ THEN BEGIN KivanBassilus
SAY @125
= @126
IF ~~ THEN DO ~SetGlobal("P#KivanBass","GLOBAL",2)~ EXIT
END

/* Kivan 10 Ankhegs */
IF WEIGHT #-2 ~%BGT_VAR% Global("P#KivanAnkheg","GLOBAL",2)~ THEN BEGIN KivanAnkheg2
SAY @129
IF ~~ THEN DO ~SetGlobal("P#KivanAnkheg","GLOBAL",3)~ EXIT
END

END
