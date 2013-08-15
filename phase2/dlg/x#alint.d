I_C_T ~%tutu_var%NIKLOS~ 9 X#AloraNiklos4
== ~%tutu_var%NIKLOS~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @0
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @1
== ~%tutu_var%NIKLOS~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @2
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @3
== ~%tutu_var%NIKLOS~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @4
END

//I_C_T2 ~%tutu_var%NIKLOS~ 8 X#AloraNiklos3
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @5
//END

I_C_T ~%tutu_var%NIKLOS~ 3 X#AloraNiklos2
== ~%tutu_var%NIKLOS~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @6
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @7
== ~%tutu_var%NIKLOS~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @1001
END

I_C_T ~%tutu_var%NIKLOS~ 0 X#AloraNiklos1
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @8
END

I_C_T ~%tutu_var%NADARI~ 6 X#AloraNadarin5
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @9
== ~%tutu_var%NADARI~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @10
END

I_C_T ~%tutu_var%NADARI~ 3 X#AloraNadarin4
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @11
== ~%tutu_var%NADARI~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @12
END

I_C_T ~%tutu_var%NADARI~ 2 X#AloraNadarin3
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @13
== ~%tutu_var%NADARI~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @14
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @15
END

//I_C_T2 ~%tutu_var%NADARI~ 1 X#AloraNadarin2
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @16
//== ~%tutu_var%NADARI~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @17
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @18
//END

I_C_T ~%tutu_var%NADARI~ 0 X#AloraNadarin1
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @19
END

I_C_T ~%tutu_var%NADIN~ 4 X#AloraNadin3
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @20
END

I_C_T ~%tutu_var%NADIN~ 1 X#AloraNadin2
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @21
== ~%tutu_var%NADIN~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @22
END

I_C_T ~%tutu_var%NADIN~ 0 X#AloraNadin1
== ~%tutu_var%NADIN~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @23
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @24
== ~%tutu_var%NADIN~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @25
END

I_C_T ~%tutu_var%LUCKY~ 0 X#AloraLucky /* Action that follows is StartStore() */
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @26
== ~%tutu_var%LUCKY~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @27
= @28
END

I_C_T ~%tutu_var%HUSAM~ 0 X#AloraHusam
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @29
= @30
== ~%tutu_var%HUSAM~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @31
END

I_C_T ~%tutu_var%EURIC~ 4 X#AloraEuric4
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @32
== ~%tutu_var%EURIC~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @33
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @34
END

I_C_T ~%tutu_var%EURIC~ 3 X#AloraEuric3
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @35
== ~%tutu_var%EURIC~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @36
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @37
== ~%tutu_var%EURIC~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @38
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @39
== ~%tutu_var%EURIC~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @40
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @41
== ~%tutu_var%EURIC~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @42
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @43
END

I_C_T ~%tutu_var%EURIC~ 2 X#AloraEuric2
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @44
== ~%tutu_var%EURIC~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @45
END

I_C_T ~%tutu_var%EURIC~ 0 X#AloraEuric1
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @46
== ~%tutu_var%EURIC~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @47
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @48
== ~%tutu_var%EURIC~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @49
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @50
== ~%tutu_var%EURIC~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @51
END

I_C_T ~%tutu_var%CYDERM~ 6 X#AloraCyderm2
== ~%tutu_var%CYDERM~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @52
END

I_C_T ~%tutu_var%CYDERM~ 0 X#AloraCyderm1
== ~%tutu_var%CYDERM~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @53
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @54
== ~%tutu_var%CYDERM~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @1002
END

I_C_T ~%tutu_var%BLACKL~ 1 X#AloraBlackl1
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @55
== ~%tutu_var%BLACKL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @56
END

I_C_T ~%tutu_var%BELLAM~ 6 X#AloraBellam7
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @57
END

I_C_T ~%tutu_var%BELLAM~ 5 X#AloraBellam6
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @57
END

I_C_T ~%tutu_var%BELLAM~ 1 X#AloraBellam5
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @58
END

//I_C_T ~%tutu_var%BELLAM~ 4 X#AloraBellam4
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @59
//== ~%tutu_var%BELLAM~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @60
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @61
//== ~%tutu_var%BELLAM~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @62
//END

I_C_T ~%tutu_var%BELLAM~ 3 X#AloraBellam3
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @63
END

I_C_T ~%tutu_var%BELLAM~ 2 X#AloraBellam2
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @64
== ~%tutu_var%BELLAM~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @65
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @66
== ~%tutu_var%BELLAM~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @1003
END

I_C_T ~%tutu_var%BELLAM~ 0 X#AloraBellam1
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @67
== ~%tutu_var%BELLAM~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @68
END

I_C_T ~%tutu_var%ALANBL~ 0 X#AloraAlan
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @69
== ~%tutu_var%ALANBL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @70
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @71
== ~%tutu_var%ALANBL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @72
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @73
== ~%tutu_var%ALANBL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @74
END

//I_C_T ~%tutu_var%ALATOS~ 0 X#AloraAlatos
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @75
//== ~%tutu_var%ALATOS~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @76
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @77
//== ~%tutu_var%ALATOS~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @78
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @79
//== ~%tutu_var%ALATOS~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @80
//END

I_C_T ~%tutu_var%ALYTH~ 0 X#AloraAlyth1
== ~%tutu_var%ALYTH~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @81
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @82
== ~%tutu_var%ALYTH~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @83
END

I_C_T ~%tutu_var%ALYTH~ 4 X#AloraAlyth2
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @84
END

I_C_T ~%tutu_var%ALYTH~ 5 X#AloraAlyth3
== ~%tutu_var%ALYTH~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @85
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @86
== ~%tutu_var%ALYTH~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @87
END

//I_C_T ~%tutu_var%ANGELO~ 4 X#AloraAngelo
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @88
//== ~%tutu_var%ANGELO~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @89
//END

//I_C_T ~%tutu_var%ARKION~ 1 X#AloraARkion
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @90
//END

I_C_T ~%tutu_var%BARSLIM~ 0 X#AloraBarslim
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @91
== ~%tutu_var%BARSLIM~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @1004
END

I_C_T ~%tutu_var%BELAND~ 7 X#AloraBeland
== ~%tutu_var%BELAND~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @92
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @93
== ~%tutu_var%BELAND~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @94
END

/* Bork is the bartender at the Blushing Mermaid. Since the action that follows is StartStore(), it can't go to ICT3 */
I_C_T ~%tutu_var%BORK~ 0 X#AloraBork1
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_var%BORK~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @96
END

I_C_T ~%tutu_var%BORK~ 1 X#AloraBork2
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_var%BORK~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @96
END

I_C_T ~%tutu_var%BORK~ 2 X#AloraBork3
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @95
== ~%tutu_var%BORK~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @96
END

I_C_T ~%tutu_var%BRATHL~ 0 X#AloraBrathl
== ~%tutu_var%BRATHL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @97
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @98
== ~%tutu_var%BRATHL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @99
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @100
== ~%tutu_var%BRATHL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @101
END

//I_C_T2 ~%tutu_scriptbg%WILLIA~ 10 X#ManyInt15
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @102
//== ~%CORAN_JOINED%~ IF ~InParty("coran") InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @103
//== ~%tutu_scriptbg%WILLIA~ IF ~InParty("%IMOEN_DV%") !StateCheck("%IMOEN_DV%",CD_STATE_NOTVALID) Gender(Player1,FEMALE)~ THEN @104
//END

/*  Gullykin */
I_C_T ~%tutu_var%ALVAHE~ 0 X#AloraAlhave
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @105
== ~%tutu_var%ALVAHE~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @106
== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @107
== ~%tutu_var%ALVAHE~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @108
END

//I_C_T ~%tutu_var%GANDOL~ 0 X#AloraGandolar
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @109
//== ~%tutu_var%GANDOL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @110
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @111
//== ~%tutu_var%GANDOL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @112
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @113
//== ~%tutu_var%GANDOL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @114
//END

//I_C_T ~%tutu_var%JENKAL~ 0 X#AloraJenkal
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @115
//== ~%tutu_var%JENKAL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @116
//== ~%ALORA_JOINED%~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @117
//== ~%tutu_var%JENKAL~ IF ~InParty("alora") InMyArea("alora") !StateCheck("alora",CD_STATE_NOTVALID)~ THEN @118
//END
