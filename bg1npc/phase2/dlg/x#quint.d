I_C_T ~%tutu_var%ADDY~ 0 X#QuaAddy
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @0 END

//I_C_T2 ~%tutu_var%ALATOS~ 0 X#QuaAlatos
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @1 END

I_C_T ~%tutu_var%ANGELO~ 2 X#QuaAngelo
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @2 
== ~%tutu_var%ANGELO~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @3 END

//I_C_T2 ~%tutu_var%ARKION~ 3 X#QuaArk
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @4 END

I_C_T ~%tutu_var%BELT~ 6 X#QuaBelt
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @5 
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @6 END

I_C_T ~%tutu_var%BENTAN~ 7 X#QuaBent
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @7 END

I_C_T ~%tutu_var%BLANE~ 0 X#QuaBlane
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @8 END

/* Bork is the bartender at the Blushing Mermaid. Since the action that follows is StartStore(), it can't go to ICT3 */
I_C_T~%tutu_var%BORK~ 0 X#QuaBork
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @9
== ~%tutu_var%BORK~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @10 END

I_C_T ~%tutu_var%BREVLI~ 0 X#QuaBrev
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @11
== ~%tutu_var%BREVLI~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @12 END

I_C_T ~%tutu_var%CAEDMO~ 3 X#QuaCaed
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @13 
== ~%tutu_var%CAEDMO~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @1001 
END

//I_C_T2 ~%tutu_var%CYTHAN~ 1 X#QuaCyth
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @14 END

I_C_T ~%tutu_var%DABRON~ 0 X#QuaDab
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @15
== ~%tutu_var%DABRON~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @16 END

I_C_T ~%tutu_var%DARRYL~ 0 X#QuaDarryl
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @17 END

//I_C_T2 ~%tutu_var%DEGROD~ 2 X#QuaDegrod
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @18 END

I_C_T ~%tutu_var%DELTAN~ 4 X#QuaEltan
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @19 
== ~%tutu_var%DELTAN~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @20 END

//I_C_T2 ~%tutu_var%DESRET~ 0 X#QuaDes
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @21 END

I_C_T ~%tutu_var%DRUNK~ 2 X#QuaDrunk
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @22 END

//I_C_T2 ~%tutu_var%ENTILL~ 0 X#QuaEnt
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @23 END

//I_C_T ~%tutu_var%FATMBA~ 0 X#QuaFatMan
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @24 END

//I_C_T2 ~%tutu_var%FCOOK2~ 0 X#QuaFatCook
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @25 END

I_C_T ~%tutu_var%FFSLEEP~ 0 X#QuaFFSleep
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @26
== ~%tutu_var%FFSLEEP~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN@27 END

//I_C_T2 ~%tutu_var%GALILE~ 2 X#QuaGalile
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @28
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @29
//== ~%tutu_var%GALILE~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @30 END

I_C_T ~%tutu_var%GAMES~ 0 X#QuaGames
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @31
== ~%tutu_var%GAMES~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @32 END

I_C_T ~%tutu_var%GAMES5~ 0 X#QuaGames5
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @33
== ~%tutu_var%GAMES5~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @34 END

//I_C_T2 ~%tutu_var%GAZIB~ 1 X#QuaGaz
//== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @35 END

I_C_T ~%tutu_var%GHORAK~ 4 X#QuaGhor
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @36
== ~%tutu_var%GHORAK~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @37 END

I_C_T ~%tutu_var%LANTAN~ 1 X#QuaLant
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @38 
== ~%tutu_var%LANTAN~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @1002 
END

I_C_T ~%tutu_var%LOTHAN~ 4 X#QuaLothander
== ~%QUAYLE_JOINED%~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @39
== ~%tutu_var%LOTHAN~ IF ~InParty("quayle") InMyArea("quayle") !StateCheck("quayle",CD_STATE_NOTVALID)~ THEN @40 END
