I_C_T ~%tutu_var%VOLO~ 11 X#DynaheirVolo
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @0
== ~%tutu_var%VOLO~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1
END

I_C_T ~%tutu_var%VOLO~ 12 X#DynaheirVolo
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @0
== ~%tutu_var%VOLO~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @2
END

I_C_T ~%tutu_var%VOLO~ 13 X#DynaheirVolo
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @0
== ~%tutu_var%VOLO~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @2
END

I_C_T ~%tutu_var%VOLO~ 14 X#DynaheirVolo
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @0
== ~%tutu_var%VOLO~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @2
END

//I_C_T2 ~%tutu_var%BERRUN~ 15 X#DynaheirBerrun1
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @3
//END

//I_C_T2 ~%tutu_var%BERRUN~ 16 X#DynaheirBerrun3
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @3
//END

//I_C_T2 ~%tutu_var%BERRUN~ 17 X#DynaheirBerrun1
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @3
//END

I_C_T ~%tutu_var%CYTHAN~ 6 X#DynaheirCythandria
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @4
END

//I_C_T2 ~%tutu_var%LIIA~ 8 X#DynaheirLiia1
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @5
//END

//I_C_T2 ~%tutu_var%FARMBR~ 0 X#DynaheirBrun1
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @6
//END

//I_C_T2 ~%tutu_var%FARMBR~ 1 X#DynaheirBrun2
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @6
//END

//I_C_T2 ~%tutu_var%FARMBR~ 2 X#DynaheirBrun3
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @6
//END

I_C_T ~%tutu_var%FARMBR~ 4 X#DynaheirBrun4
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @7
END

//I_C_T ~%tutu_var%FARMBR~ 6 X#DynaheirBrun5
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @8
//END

//I_C_T2 ~%tutu_var%FARMBR~ 10 X#DynaheirBrun6
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @9
//END

I_C_T ~%tutu_var%GALLOR~ 1 X#DynaheirGallor1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @10
END

//I_C_T2 ~%tutu_var%GALLOR~ 6 X#DynaheirGallor2
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @11
//DO ~ActionOverride("dynaheir",LeaveParty()) ActionOverride("dynaheir",SetLeavePartyDialogFile()) ActionOverride("dynaheir",ChangeAIScript("",DEFAULT)) ActionOverride("dynaheir",Enemy()) ActionOverride("minsc",LeaveParty()) ActionOverride("minsc",SetLeavePartyDialogFile()) ActionOverride("minsc",ChangeAIScript("",DEFAULT)) ActionOverride("minsc",Enemy())~
//END

//I_C_T2 ~%tutu_var%GALLOR~ 7 X#DynaheirGallor3
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @11
//DO ~ActionOverride("dynaheir",LeaveParty()) ActionOverride("dynaheir",SetLeavePartyDialogFile()) ActionOverride("dynaheir",ChangeAIScript("",DEFAULT)) ActionOverride("dynaheir",Enemy()) ActionOverride("minsc",LeaveParty()) ActionOverride("minsc",SetLeavePartyDialogFile()) ActionOverride("minsc",ChangeAIScript("",DEFAULT)) ActionOverride("minsc",Enemy())~
//END

//I_C_T2 ~%tutu_var%ANGELO~ 0 X#DynaheirAngelo
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @12
//END

//I_C_T ~%tutu_var%VARCI~ 1 X#DynaheirVarci
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @13
//END

I_C_T ~%tutu_var%DELTAN2~ 0 X#DynaheirEltan1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @14
== ~%tutu_var%DELTAN2~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @15
END

I_C_T ~%tutu_var%DELTAN2~ 1 X#DynaheirEltan2
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @16
END

//I_C_T2 ~%tutu_var%ARDROU~ 2 X#DynaheirArdrouine1
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @17
//END

I_C_T ~%tutu_var%OCELLI~ 0 X#DynaOcelli
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @18
END

//I_C_T2 ~%tutu_var%HANNAH~ 0 X#DynahHannah
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @19
//END

//I_C_T ~%tutu_scriptbg%NEB%eet_var%~ 8 X#DynaheirNeb
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @20
//== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @21
//END

//I_C_T2 ~%tutu_var%RAGEFA~ 6 X#DyRagefast
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @22
// END

I_C_T ~%tutu_var%NOBW8~ 8 X#DyAreana
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @23
 END

//I_C_T2 ~%tutu_var%MINEC2~ 8 X#DyMinersCW
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) Global("FREESLAV","GLOBAL",0)~ THEN @24
// END

//I_C_T2 ~%tutu_var%TENYA~ 0 X#DyTENYA
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @25
//END

/* Felonius Gist */
I_C_T ~%tutu_var%FELONI~ 0 X#DynaheirFGist
 == ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @26
END

/* Delorna */
I_C_T ~%tutu_var%DELORN~ 0 X#DynaheirDelorna
 == ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @27
END

/* Beland */
//I_C_T ~%tutu_var%BELAND~ 0 X#DynaheirBeland1
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @28
//== ~%tutu_var%BELAND~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @29
//END

//I_C_T ~%tutu_var%BELAND~ 1 X#DynaheirBeland2
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @28
//== ~%tutu_var%BELAND~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @29
//END

//I_C_T ~%tutu_var%BELAND~ 2 X#DynaheirBeland3
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @28
//== ~%tutu_var%BELAND~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @29
//END

/* Narcillius */
//I_C_T2 ~%tutu_var%NARCIL~ 2 X#DynaheirNarcillius
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @30
//END

/* Entill */
I_C_T ~%tutu_var%ENTILL~ 10 X#DynaheirEntill1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @31
== ~%tutu_var%ENTILL~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @32
END

I_C_T ~%tutu_var%ENTILL~ 11 X#DynaheirEntill2
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @31
== ~%tutu_var%ENTILL~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @32
END

/* Arkushule */
//I_C_T2 ~%tutu_var%ARKUSH~ 0 X#DynaheirArkushule
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @33
//END

/* Thalantyr */
I_C_T ~%tutu_var%THALAN~ 20 X#DynaheirThalantyr
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @34
= @35
== ~%tutu_var%THALAN~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @36
END

/* Iron11 */
I_C_T ~%tutu_var%IRON11~ 0 X#DynaheirBhaal
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @37
== ~%tutu_var%IRON11~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @38
END

/* CommonerBG */
I_C_T ~%tutu_var%FTOWBA~ 2 X#DynaheirHandsome
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @39
END

/* denak */
//I_C_T2 ~%tutu_var%DENAK~ 1 X#DynaheirDenak
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @40
//== ~%tutu_var%DENAK~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @41
//END

/* brevlik */
//I_C_T ~%tutu_var%BREVLI~ 14 X#DynaheirBrevlik
// == ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @42
// == ~%tutu_var%BREVLI~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @43
//END

/* Yago */
I_C_T ~%tutu_var%YAGO~ 1 X#DynaheirYago
 == ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @44
== ~%tutu_var%YAGO~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @45
END

/* Emerson */
//I_C_T ~%tutu_var%EMERSO~ 1 X#DynaheirEmerson1
// == ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @46
// END
 
I_C_T ~%tutu_var%EMERSO~ 0 X#DynaheirEmerson2
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @47
== ~%tutu_var%EMERSO~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @48
END

I_C_T ~%tutu_var%KYLEE~ 1 X#DynaheirKylee
 == ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @49
 == ~%tutu_var%KYLEE~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1001
 END
 
//I_C_T ~%tutu_var%HENTOL~ 1 X#DynaheirHentold
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @50
//END

//I_C_T ~%tutu_var%REVEN3~ 1 X#DynaheirRevenant
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @51
//END

//I_C_T ~%tutu_var%NALIN~ 3 X#DynaheirNalin
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @52
//END

//I_C_T ~%tutu_var%GALILE~ 2 X#DynaheirGallileo1
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @53
//== ~%tutu_var%GALILE~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @54
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @55
//== ~%tutu_var%GALILE~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @56 
//END

I_C_T ~%tutu_var%GALILE~ 3 X#DynaheirGallileo2
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @53
== ~%tutu_var%GALILE~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @54
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @55
== ~%tutu_var%GALILE~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @56 
END

I_C_T ~%tutu_var%SAMANT~ 7 X#DynaheirSamanta
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) Gender(Player1,MALE)~ THEN @57
DO ~ReputationInc(-1)~
== ~%tutu_var%SAMANT~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) Gender(Player1,MALE)~ THEN @1002
END

I_C_T ~%tutu_var%OUBLEK~ 1 X#DynaheirOublek1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @58
END

I_C_T ~%tutu_var%OUBLEK~ 2 X#DynaheirOublek2
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @59
DO ~ReputationInc(-1)~
== ~%tutu_var%OUBLEK~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1003
END

//I_C_T2 ~%tutu_var%OUBLEK~ 3 X#DynaheirOublek3
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @60
//END

I_C_T ~%tutu_var%OUBLEK~ 4 X#DynaheirOublek4
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @61
== ~%tutu_var%OUBLEK~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1004
END

//I_C_T2 ~%tutu_var%KIRIAN~ 5 X#DynaheirKirian
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @62
//END

//I_C_T2 ~%tutu_var%DAVAEO~ 0 X#DynaheirDavaeorn
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @63
//END

I_C_T ~%tutu_var%LARZE~ 0 X#DynaheirLarze
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @64
END

//I_C_T ~%tutu_var%IVANNE~ 0 X#DynaheirIvanne
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @65
//END

//I_C_T2 ~%tutu_var%TIBER~ 2 X#DynaheirTiber1
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @66
//END

//I_C_T2 ~%tutu_var%TIBER~ 4 X#DynaheirTiber2
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @67
//END

//I_C_T2 ~%tutu_var%LASKAL~ 5 X#DynaheirLaskal1
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @68
//END

I_C_T ~%tutu_var%AJANTI~ 3 X#DynaheirAjantis1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @69
== ~%tutu_var%AJANTI~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1005
END

I_C_T ~%tutu_var%AJANTI~ 4 X#DynaheirAjantis2
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @70
END

//I_C_T2 ~%tutu_var%AJANTI~ 6 X#DynaheirAjantis2
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @70
//END

I_C_T ~%tutu_var%LARRY~ 2 X#DynaheirLarry1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @71
== ~%tutu_var%LARRY~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1006
END

I_C_T ~%tutu_var%HAFIZ~ 6 X#DynaheirHafiz1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @72
== ~%tutu_var%HAFIZ~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1007
END

//I_C_T2 ~%tutu_var%DEGROD~ 2 X#DynaheirDegrodel1
//== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @73
//END

I_C_T ~%tutu_var%DRELIK~ 1 X#DynaheirDerlik1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @74
== ~%tutu_var%DRELIK~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1008
END

I_C_T ~%tutu_var%DRELIK~ 2 X#DynaheirDerlik2
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @74
== ~%tutu_var%DRELIK~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1008
END

I_C_T ~%tutu_var%DRELIK~ 3 X#DynaheirDerlik3
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @74
== ~%tutu_var%DRELIK~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ THEN @1008
END

I_C_T ~%tutu_var%PETRIN~ 1 X#DynaheirPetrine1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) Class(Player1,THIEF_ALL)~ THEN @75
END

I_C_T ~%tutu_var%PETRIN~ 1 X#DynaheirPetrine1
== ~%DYNAHEIR_JOINED%~ IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID) !Class(Player1,THIEF_ALL)~ THEN @76
END

APPEND ~%DYNAHEIR_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYRobb1","GLOBAL",1)~ THEN BEGIN DYRobb
SAY @77
IF ~~ THEN DO ~ReputationInc(-1) SetGlobal("X#DYRobb1","GLOBAL",2)~ EXIT
END

/* Dynaheir Firewine */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#DYINT1","GLOBAL",1)~ THEN BEGIN DYINT1
SAY @78
++ @79 DO ~SetGlobal("X#DYINT1","GLOBAL",2)~ + DYINT1.1
++ @80 DO ~SetGlobal("X#DYINT1","GLOBAL",2)~ + DYINT1.2
++ @81 DO ~SetGlobal("X#DYINT1","GLOBAL",2)~ + DYINT1.3
END

IF ~~ DYINT1.1
SAY @82
IF ~~ THEN EXIT
END

IF ~~ DYINT1.2
SAY @83
= @84
IF ~~ THEN GOTO DYINT1.3
END

IF ~~ DYINT1.3
SAY @85
= @86
IF ~~ THEN EXIT
END

/* Dynaheir, Shandalar's Girls Dead */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#DSGD","GLOBAL",1)~ DSGD1
SAY @87
IF ~~ THEN DO ~SetGlobal("X#DSGD","GLOBAL",2)~ EXIT
END

/*  Dynaheir, Back At Candlekeep */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#DBAC","GLOBAL",2)~ DBAC1
SAY @88
IF ~~ THEN DO ~SetGlobal("X#DBAC","GLOBAL",3)~ EXIT
END

/* Dynaheir, Gazib Fled, Oopah Left */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#DGFOL","GLOBAL",1)~ DGFOL1
SAY @89
IF ~~ THEN DO ~SetGlobal("X#DGFOL","GLOBAL",2)~ EXIT
END
END

EXTEND_BOTTOM ~%tutu_var%DENAK~ 3
IF ~InParty("dynaheir") InMyArea("dynaheir") !StateCheck("dynaheir",CD_STATE_NOTVALID)~ EXTERN ~%tutu_var%DENAK~ DenakConflict
END

CHAIN ~%tutu_var%DENAK~ DenakConflict
@90
== ~%EDWIN_BANTER%~ @91
== ~%tutu_var%DENAK~ @92
== ~%EDWIN_BANTER%~ @93
== ~%DYNAHEIR_BANTER%~ @94
== ~%tutu_var%DENAK~ @95
== ~%EDWIN_BANTER%~ @96
END
++ @97 EXTERN ~%EDWIN_JOINED%~ DYEDCON1
+ ~XPGT(Player1,60000)~ + @98 EXTERN ~%EDWIN_JOINED%~ DYEDCON2.1
+ ~!XPGT(Player1,60000)~ + @98 EXTERN ~%EDWIN_JOINED%~ DYEDCON2.2
++ @99 EXTERN ~%tutu_var%DENAK~ DYEDCON3
++ @100 EXTERN ~%tutu_var%DENAK~ DYEDCON4

APPEND ~%EDWIN_JOINED%~

IF ~~ DYEDCON1
SAY @101
IF ~~ THEN DO ~SetGlobal("X#EdwinBetrayRW","GLOBAL",2) ActionOverride("brendan",Enemy()) ActionOverride("lasala",Enemy()) ActionOverride("diana",Enemy()) ActionOverride("denak",Enemy()) ActionOverride("edwin",LeaveParty()) ActionOverride("edwin",SetLeavePartyDialogFile()) ActionOverride("edwin",ChangeAIScript("",DEFAULT)) ActionOverride("edwin",Enemy())~
EXIT
END

IF ~~ DYEDCON2.1
SAY @102
IF ~~ THEN DO ~AddexperienceParty(5000) SetGlobal("X#EdwinBetrayRW","GLOBAL",1) ActionOverride("brendan",Enemy()) ActionOverride("lasala",Enemy()) ActionOverride("diana",Enemy()) ActionOverride("denak",Enemy())~
EXIT
END

IF ~~ DYEDCON2.2
SAY @103
IF ~~ THEN DO ~SetGlobal("X#EdwinBetrayRW","GLOBAL",2) ActionOverride("brendan",Enemy()) ActionOverride("lasala",Enemy()) ActionOverride("diana",Enemy()) ActionOverride("denak",Enemy()) ActionOverride("edwin",LeaveParty()) ActionOverride("edwin",SetLeavePartyDialogFile()) ActionOverride("edwin",ChangeAIScript("",DEFAULT)) ActionOverride("edwin",Enemy())~
EXIT
END

IF ~%BGT_VAR% Global("X#EdwinBetrayRW","GLOBAL",3)~ EDPaper
SAY @104
IF ~~ THEN DO ~SetGlobal("X#EdwinBetrayRW","GLOBAL",4) AddXPObject("edwin",2000)~
EXIT
END

END

APPEND ~%tutu_var%DENAK~

IF ~~ DYEDCON3
SAY @105
IF ~~ THEN DO ~SetGlobal("X#EdwinBetrayRW","GLOBAL",2) ActionOverride("brendan",Enemy()) ActionOverride("lasala",Enemy()) ActionOverride("diana",Enemy()) ActionOverride("denak",Enemy()) ActionOverride("edwin",LeaveParty()) ActionOverride("edwin",SetLeavePartyDialogFile()) ActionOverride("edwin",ChangeAIScript("",DEFAULT)) ActionOverride("edwin",Enemy())~
EXIT
END

IF ~%BGT_VAR% Global("X#EdwinBetrayRW","GLOBAL",6)~ DYEDCON5
SAY @106
IF ~~ THEN DO ~ActionOverride("brendan",EscapeArea()) ActionOverride("lasala",EscapeArea()) ActionOverride("diana",EscapeArea()) EscapeArea() SetGlobal("X#EdwinBetrayRW","GLOBAL",7) GiveGoldForce(1000) AddXPObject("edwin",1000)~
EXIT
END
END

CHAIN ~%tutu_var%DENAK~ DYEDCON4
@107
== ~%EDWIN_BANTER%~ @108
== ~%DYNAHEIR_BANTER%~ @109
DO ~ReputationInc(-2) SetGlobal("X#EdwinBetrayRW","GLOBAL",5) ActionOverride("dynaheir",LeaveParty())  ActionOverride("dynaheir",SetLeavePartyDialogFile()) ActionOverride("dynaheir",ChangeAIScript("",DEFAULT)) ActionOverride("minsc",LeaveParty()) ActionOverride("minsc",SetLeavePartyDialogFile()) ActionOverride("minsc",ChangeAIScript("",DEFAULT)) ActionOverride("dynaheir",Enemy()) ActionOverride("minsc",Enemy())~
EXIT

ADD_STATE_TRIGGER ~%tutu_var%DENAK~ 0 ~OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID)~
ADD_STATE_TRIGGER ~%tutu_var%DENAK~ 1 ~OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID)~
ADD_STATE_TRIGGER ~%tutu_var%DENAK~ 2 ~OR(3) !InParty("edwin") !InMyArea("edwin") StateCheck("edwin",CD_STATE_NOTVALID)~
ADD_STATE_TRIGGER ~%tutu_var%DENAK~ 3 ~GlobalLT("X#EdwinBetrayRW","GLOBAL",5)~
