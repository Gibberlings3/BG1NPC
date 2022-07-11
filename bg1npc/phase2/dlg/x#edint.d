EXTEND_BOTTOM ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState3%
IF ~~ THEN REPLY @0 + X#EdwinJoinsAlone
END

EXTEND_BOTTOM ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState4%
IF ~~ THEN REPLY @0 + X#EdwinJoinsAlone
END

EXTEND_BOTTOM ~%tutu_var%HAIRTO~ 0
IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) Global("X#EdwinHairtooth","GLOBAL",0)~ THEN DO ~SetGlobal("X#EdwinHairtooth","GLOBAL",1)~ EXTERN ~%EDWIN_JOINED%~ EDWINFOOLSHAIR
END

EXTEND_BOTTOM ~%EDWIN_JOINED%~ %BGTEDWINJState12%
IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("X#EdwinAbandoned","GLOBAL",1) SetGlobal("%KICKED_OUT%","LOCALS",2) SetLeavePartyDialogFile() LeaveParty() ChangeAIScript("",DEFAULT)~ EXIT
END

/* Edwin and Denak, -JW-'s recode */
CHAIN IF WEIGHT #-2 ~%BGT_VAR% GlobalGT("X#EdwinReturn","GLOBAL",0)~ THEN ~%tutu_var%DENAK~ X#EdwinAllies1
@3
DO ~ActionOverride("denak",Enemy())
    ActionOverride("brendan",Enemy())
    ActionOverride("lasala",Enemy())
    ActionOverride("diana",Enemy())
    ActionOverride("edwin",Enemy())
    SetGlobal("X#EdwinReturn","GLOBAL",3)~
== ~%EDWIN_POST%~ IF ~Global("X#EdwinReturn","GLOBAL",1) !Dead("Edwin") !InParty("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) See("denak")~ THEN @1
DO ~SetGlobal("X#EdwinReturn","GLOBAL",3)~
== ~%EDWIN_POST%~ IF ~Global("X#EdwinReturn","GLOBAL",2) !Dead("Edwin") !InParty("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) See("denak")~ THEN @2
DO ~SetGlobal("X#EdwinReturn","GLOBAL",3)
    CreateCreature("%tutu_var%GOLEMF",[-1.-1],0)
    CreateCreature("%tutu_var%GOLEMF",[-1.-1],0)~
EXIT

CHAIN ~%EDWIN_JOINED%~ EDWINFOOLSHAIR
@4
== ~%tutu_var%HAIRTO~ @5
= @6
= @7
== ~%EDWIN_JOINED%~ @8
== ~%tutu_var%HAIRTO~ @9
END ~%tutu_var%HAIRTO~ 5

CHAIN ~%tutu_var%EDWIN%eet_var%~ X#EdwinJoinsAlone
@10
== ~%MINSC_BANTER%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @11
== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("minsc") InMyArea("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @12
END
IF ~~ THEN DO ~SetGlobal("X#MinscProtestsEdwin","GLOBAL",1) ActionOverride("edwin",JoinParty())~ JOURNAL @13 EXIT

//I_C_T2 ~%tutu_scriptbg%WILLIA~ 10 X#ManyInt12
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) Gender(Player1,FEMALE) Alignment(Player1,MASK_EVIL)~ THEN @14
//== ~%tutu_scriptbg%WILLIA~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) Gender(Player1,FEMALE) Alignment(Player1,MASK_EVIL)~ THEN @15
//END

//I_C_T2 ~%tutu_var%FCOOK2~ 0 X#EdwinCook
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @16
//END

//I_C_T2 ~%tutu_var%DESRET~ 0 X#EdwinDeserta
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @17
//END

//I_C_T2 ~%tutu_var%CORDYR~ 1 X#EdwinCordyr
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @18
//END

I_C_T ~%tutu_var%LUCKY~ 0 X#EdwinLucky /* Action that follows is StartStore() */
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @19
== ~%tutu_var%LUCKY~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @20
END

//I_C_T2 ~%tutu_var%NEMPHR~ 3 X#EdwinNemphra
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @21
//DO ~ReallyForceSpellRES("SPWI106","nemphre")~
//END

I_C_T ~%tutu_var%TAMOKO~ 2 X#EdwinTamoko
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @22
END

I_C_T ~%tutu_var%BERRUN~ 7 X#EdwinBerun1
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @23
END

//I_C_T2 ~%tutu_var%BERRUN~ 19 X#EdwinBerun2
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @23
//END

//I_C_T2 ~%tutu_var%ARDROU~ 0 X#EdwinArdroune
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @24 DO ~SetGlobal("J#ArdTalk","GLOBAL",1)~
//END

//I_C_T2 ~%tutu_var%ARKION~ 1 X#EdwinArkion
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @25
//END

//I_C_T2 ~%tutu_var%ARKUSH~ 0 X#EdwinArkushule
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @26
//== ~%EDWIN_JOINED%~ IF ~OR(3) Class(Player1,SORCERER) Class(Player1,BARD_ALL) Class(Player1,MAGE_ALL) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @27
//END

//I_C_T2 ~%tutu_var%BASSIL~ 0 X#EdwinBassilius
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @28
//END

//I_C_T ~%tutu_var%BELAND~ 0 X#EdwinBeland1
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @29
//== ~%tutu_var%BELAND~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @30
//END

//I_C_T ~%tutu_var%BELAND~ 1 X#EdwinBeland2
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @29
//== ~%tutu_var%BELAND~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @30
//END

//I_C_T ~%tutu_var%BELAND~ 2 X#EdwinBeland3
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @29
//== ~%tutu_var%BELAND~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @30
//END

/* Bork is the bartender at the Blushing Mermaid. Since the action that follows is StartStore(), it can't go to ICT3 */
I_C_T ~%tutu_var%BORK~ 0 X#EdwinBork
== ~%tutu_var%BORK~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @31
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @32
== ~%tutu_var%BORK~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @33
END

I_C_T ~%tutu_var%BRILLA~ 3 X#EdwinBrilla1
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @34
END

//I_C_T ~%tutu_var%BRILLA~ 7 X#EdwinBrilla2
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @35
//END

I_C_T ~%tutu_var%CALDO~ 0 X#EdwinCaldo
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @36
== ~%tutu_var%KRUMM~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @37
== ~%tutu_var%CALDO~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @38
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @39
== ~%tutu_var%CALDO~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @40
END

//I_C_T ~%tutu_var%DRIZZT~ 0 X#EdwinDrizzt1
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @41
//END

//I_C_T ~%tutu_var%DRIZZT~ 5 X#EdwinDrizzt2
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @42
//END

I_C_T ~%tutu_var%DRIZZT~ 7 X#EdwinDrizzt3
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @43
END

I_C_T ~%tutu_var%DRIZZT~ 8 X#EdwinDrizzt4
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @44
END

I_C_T ~%tutu_var%DRIZZT~ 9 X#EdwinDrizzt5
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @45
END

I_C_T ~%tutu_var%DRIZZT~ 12 X#EdwinDrizzt6
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @46
== ~%tutu_var%DRIZZT~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @1001
END

//I_C_T2 ~%tutu_var%ELMIN3~ 0 X#EdwinElminster1
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @47
//END

//I_C_T2 ~%tutu_var%ELMIN5~ 0 X#EdwinElminster2
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @48
//END

//I_C_T2 ~%tutu_var%SHARTE~ 1 X#EdwinShar
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @49
//END

//I_C_T2 ~%tutu_var%ELDOTH~ 5 X#EdwinEldoth
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @50
//END

//I_C_T2 ~%tutu_var%FERGUS~ 1 X#EdwinFergus
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @51
//END

//I_C_T2 ~%tutu_var%INGOT~ 1 X#EdwinIngot
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID) !Global("HelpMinsc","GLOBAL",2)~ THEN @52
//END

I_C_T ~%tutu_var%KOVERA~ 6 X#EdwinKoveras
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @53
== ~%tutu_var%KOVERA~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @1002
END

//I_C_T2 ~%tutu_var%LAMALH~ 0 X#EdwinLamalhale
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @54
//END

//I_C_T2 ~%tutu_var%MEILUM~ 0 X#EdwinMeilum
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @55
//END

//I_C_T ~%tutu_var%MELICA~ 2 X#EdwinMelicamp
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @56
//== ~%tutu_var%MELICA~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @57
//END

//I_C_T2 ~%tutu_var%MULAHE~ 2 X#EdwinMulahey
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @58
//END

I_C_T ~%tutu_var%NOOBER~ 3 X#EdwinNoob
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @59
END

//I_C_T2 ~%tutu_var%PALLON~ 2 X#EdwinPallonia1
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @60
//END

//I_C_T2 ~%tutu_var%PALLON~ 3 X#EdwinPallonia2
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @61
//END

//I_C_T ~%tutu_var%POE 15~ X#EdwinPoe
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @62
//== ~%tutu_var%POE~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @63
//END

I_C_T ~%tutu_var%RIELTA~ 1 X#EdwinRieltar
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @64
== ~%tutu_var%RIELTA~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @65
END

//I_C_T2 ~%tutu_var%SAFANA~ 4 X#EdwinSafana
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @66
//END

//I_C_T2 ~%tutu_var%SONNER~ 4 X#EdwinSonner
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @67
//DO ~SetGlobal("X#EdwinSonner","GLOBAL",1)~
//END

//I_C_T2 ~%tutu_var%FARMBR~ 0 X#EdwinFarmerBrun1
//== ~%EDWIN_JOINED%~ IF ~Global("X#EdwinSonner","GLOBAL",1) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @68
//END

//I_C_T2 ~%tutu_var%FARMBR~ 1 X#EdwinFarmerBrun2
//== ~%EDWIN_JOINED%~ IF ~Global("X#EdwinSonner","GLOBAL",1) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @68
//END

//I_C_T2 ~%tutu_var%FARMBR~ 2 X#EdwinFarmerBrun3
//== ~%EDWIN_JOINED%~ IF ~Global("X#EdwinSonner","GLOBAL",1) InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @68
//END

I_C_T ~%tutu_var%TENYA~ 2 X#EdwinTenya0
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @69
== ~%tutu_var%TENYA~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @1003
END

I_C_T ~%tutu_var%TENYA~ 3 X#EdwinTenya1
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @69
== ~%tutu_var%TENYA~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @1003
END

I_C_T ~%tutu_var%TENYA~ 4 X#EdwinTenya2
== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @69
== ~%tutu_var%TENYA~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @1003
END

//I_C_T2 ~%tutu_var%TENYA~ 0 X#EdwinTenya3
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @70
//END

//I_C_T ~%tutu_scripts%LAVLEAD~ 2 X#EdwinRill
//== ~%EDWIN_JOINED%~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @71
//== ~%tutu_scripts%LAVLEAD~ IF ~InParty("edwin") InMyArea("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @72
//END

APPEND ~%EDWIN_JOINED%~

IF WEIGHT #-2 ~%BGT_VAR% Global("X#EdwinFemale","GLOBAL",1)~ THEN BEGIN X#EdwinFemale
SAY @73
IF ~~ THEN DO ~SetGlobal("X#EdwinFemale","GLOBAL",2)~ EXIT
END
END
