/* Ajantis I_C_Ts */

///* Beregost - Karlat */
//I_C_T ~%tutu_var%KARLAT~ 0 X#AjantisKarlat
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @226
//END

///* Friendly Arm Inn - Tarnesh */
I_C_T ~%tutu_var%TARNES~ 1 X#AjantisTarnesh
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @227
== ~%tutu_var%TARNES~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @228
END

///* Nashkel - Neira */
I_C_T ~%tutu_var%NEIRA~ 0 X#AjantisNeira
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @229
END

///* Nashkel - Nimbul */
//I_C_T ~%tutu_var%NIMBUL~ 0 X#AjantisNimbul
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @230
//END


//I_C_T ~%tutu_var%ELMINS4~ 3 X#AjantisDoplegangers
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @0
//END

//I_C_T ~%tutu_scriptbg%WILLIA~ 10 X#ManyInt10
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Gender(Player1,FEMALE) !Global("X#AjantisRomanceActive","GLOBAL",3) 
//Global("X#AjantisRomanceMatch","GLOBAL",1)~ THEN @1
//= @2
//= @3
//== ~%tutu_scriptbg%WILLIA~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Gender(Player1,FEMALE) !Global("X#AjantisRomanceActive","GLOBAL",3) Global("X#AjantisRomanceMatch","GLOBAL",1)~ THEN @4
//END

/* Bjornin, the hurt paladin in Beregost */
//I_C_T ~%tutu_var%BJORNI~ 1 X#AjantisBjorninTalk1
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @5 DO ~SetGlobal("X#AjantisHelpBjornin","GLOBAL",1)~
//END

I_C_T ~%tutu_var%BJORNI~ 2 X#AjantisBjorninTalk2
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @6 DO ~SetGlobal("X#AjantisHelpBjornin","GLOBAL",1)~
END

/* Mirianne in Beregost, who is waiting for a letter from her husband */
//I_C_T ~%tutu_var%MIRIAN~ 0 X#AjantisMirianneTalk1
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @7 DO ~SetGlobal("X#AjantisMiriannePromise","GLOBAL",1)~ 
//END

/* Kelddath Ormlyr: Bassilus quest */
I_C_T ~%tutu_var%KELDDA~ 8 X#AjantisKaldathBassilus
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @8 DO ~SetGlobal("X#AjantisBassilusQuest","GLOBAL",1)~ 
END

/* Bassilus */
//I_C_T ~%tutu_var%BASSIL~ 0 X#AjantisBassilus1
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) 
//Global("X#AjantisBassilusQuest","GLOBAL",1)~ THEN @9
//END

//I_C_T ~%tutu_var%BASSIL~ 0 X#AjantisBassilus2
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)
//!Global("X#AjantisBassilusQuest","GLOBAL",1)~ THEN @10 
//END

/* if Brage was brought to Oublek - MOVED */
//I_C_T2 ~%tutu_var%OUBLEK~ 3 X#AjantisBrageToOublek
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @11 
//END

/* if Brage was brought to Nalin (temple) */
//I_C_T ~%tutu_var%NALIN~ 3 X#AjantisNalinBrage
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @12 
//== ~%tutu_var%NALIN~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @13
//END

/* Phandalyn, paladin in Baldur's Gate */
I_C_T ~%tutu_var%PHANDA~ 1 X#AjantisPhandalyn
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @14 
== ~%tutu_var%PHANDA~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1001 
END

/* nashkel mine quest (Berrun) */
I_C_T ~%tutu_var%BERRUN~ 8 X#AjantisBerrun1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @15 
END

//I_C_T ~%tutu_var%BERRUN~ 11 X#AjantisBerrun2
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @15 
//END

//I_C_T ~%tutu_var%BERRUN~ 12 X#AjantisBerrun3
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @15 
//END

//I_C_T ~%tutu_var%BERRUN~ 13 X#AjantisBerrun4
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @15 
//END 

/* help dryad: Talk to Caldo and Krumm */
I_C_T ~%tutu_var%CALDO~ 8 X#AjantisHelpDryadCaldo1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @16 
END

//I_C_T ~%tutu_var%CALDO~ 6 X#AjantisHelpDryadCaldo2
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @17 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
//END

/* if PC cheats the way into the bandit's camp. (1st bandit) */
I_C_T ~%tutu_var%TEVEN~ 5 X#AjantisTeven1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @18
== ~%tutu_var%TEVEN~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @19
END

I_C_T ~%tutu_var%TEVEN~ 9 X#AjantisTeven2
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @18
== ~%tutu_var%TEVEN~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @19
END

/* if PC cheats the way into the bandit camp. (2nd bandit) */
I_C_T ~%tutu_var%RAIKEN~ 5 X#Ajantisraiken1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @18
== ~%tutu_var%RAIKEN~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @19
END

I_C_T ~%tutu_var%RAIKEN~ 9 X#Ajantisraiken2
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @18
== ~%tutu_var%RAIKEN~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @19
END

/* Minsc Unjoined */
//I_C_T ~%tutu_var%MINSC~ 5 X#AjantisMinsc
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @20
//== ~%tutu_var%MINSC~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1002
//END

/* Dynaheir hostile leave if attacked */
//I_C_T2 ~%tutu_var%DYNAHE~ 10 X#AjantisDynaheir
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @21 DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) Enemy() SetGlobal("X#AjantisRomanceActive","GLOBAL",3)~
//END

/* Eldoth, after joining the group */
//I_C_T ~%tutu_var%ELDOTH~ 7 X#AjantisEldoth2
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @22 
//== ~%tutu_var%ELDOTH~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1003
//END

/* Eldoth, before "kidnapping" Skie */
I_C_T ~%tutu_var%ELDOTH~ 10 X#AjantisEldoth1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @23 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
END

/* Gullykin */
I_C_T ~%tutu_var%GANDOL~ 13 X#AjantisGandolar1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @24 
END

I_C_T ~%tutu_var%GANDOL~ 11 X#AjantisGandolar2
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @25 
END

I_C_T ~%tutu_var%GANDOL~ 4 X#AjantisGandolar3
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @26 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
== ~%tutu_var%GANDOL~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1004 
END

/* don't kill Shoal (deadly kissing mermaid) */
//I_C_T ~%tutu_var%SHOAL~ 5 X#AjantisShoal1
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @27 
//END

I_C_T ~%tutu_var%SHOAL~ 6 X#AjantisShoal2
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @28 
== ~%tutu_var%SHOAL~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1005 
END

/* no lying to Laskal (shadow druid) */
I_C_T ~%tutu_var%LASKAL~ 4 X#AjantisLaskal1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @29 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
== ~%tutu_var%LASKAL~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1006 
END

//I_C_T2 ~%tutu_var%LASKAL~ 5 X#AjantisLaskal2
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @30
//END

/* Laurel, fighting gibberlings */
I_C_T ~%tutu_var%LAUREL~ 7 X#AjantisLaurel
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @31 
== ~%tutu_var%LAUREL~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1007
END 

/* Viconia Joining */
I_C_T ~%tutu_var%FLAM2~ 0 X#AjantisFlamingFist
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @32 
END

//I_C_T ~%tutu_var%FLAM2~ 3 X#AjantisViconiaNoHelp
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @33 
//END

I_C_T ~%tutu_var%FLAM2~ 4 X#AjantisViconiaHelp
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @34
== ~%tutu_var%FLAM2~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1008 
END

//I_C_T ~%tutu_scriptbg%VICONI%eet_var%~ 9 X#AjantisViconiaJoining
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @35 
//== ~%tutu_scriptbg%VICONI%eet_var%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1009 
//END

/* Lena and Samuel */
I_C_T ~%tutu_var%LENA~ 5 X#AjantisLena
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @36 DO ~
SetGlobalTimer("X#AjantisSamuel","GLOBAL",TWO_DAYS)~
== ~%tutu_var%LENA~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1010 
END

/* Help Farmer Brun (changes PC decision) */
INTERJECT ~%tutu_var%FARMBR~ 4 X#AjantisHelpBrun
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @37 
END ~%tutu_var%FARMBR~ 6

/* give Brun money... */
I_C_T ~%tutu_var%FARMBR~ 9 X#AjantisBrunMoney
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @38 
== ~%tutu_var%FARMBR~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1011 
END

/* Thieves Guild, Alatos */
I_C_T ~%tutu_var%ALATOS~ 10 X#AjantisAlatos
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @39 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
END

/* Brevlik and the telescope */
I_C_T ~%tutu_var%BREVLI~ 17 X#AjantisBrevlik
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @40 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1) SetGlobal("HelpBrevlik","GLOBAL",1)~
== ~%tutu_var%BREVLI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @41
END

/* Varci */
/* If help plea is rejected */
I_C_T ~%tutu_var%VARCI~ 4 X#AjantisVarci1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @42 DO ~SetGlobal("X#AjantisRejectedVarci","GLOBAL",1) IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
END

/* If help plea was accepted */
//I_C_T ~%tutu_var%VARCI~ 5 X#AjantisVarci2A
//== ~%AJANTIS_JOINED%~ IF ~Global("X#AjantisRejectedVarci","GLOBAL",1) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @43 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",-1)~
//== ~%tutu_var%VARCI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1012
//END

//I_C_T ~%tutu_var%VARCI~ 5 X#AjantisVarci2B
//== ~%AJANTIS_JOINED%~ IF ~!Global("X#AjantisRejectedVarci","GLOBAL",1) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @44
//== ~%tutu_var%VARCI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1010
//END

/* Tremain */
I_C_T ~%tutu_var%TREMAI~ 8 X#AjantisTremain
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @45
END

/* Sonner, Treman, Jebado (fishermen in conflict with Umberlee priestess) */
I_C_T ~%tutu_var%SONNER~ 5 X#AjantisUmberlee
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @46 
END

/* Pheirkas, who wants to have a stolen cloak */
//I_C_T ~%tutu_var%PHEIRK~ 1 X#AjantisPheirkas
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @47 
//END

/* Neb! */
I_C_T ~%tutu_scriptbg%NEB%eet_var%~ 1 X#AjantisNeb1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @48 
== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @49
END

//I_C_T ~%tutu_scriptbg%NEB%eet_var%~ 8 X#AjantisNeb2
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @50 
//== ~%tutu_scriptbg%NEB%eet_var%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @51
//END

/* help ill Eltan */
I_C_T ~%tutu_var%DELTAN~ 12 X#AjantisHelpEltan
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @52
== ~%tutu_var%DELTAN~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1013
END

/* beggar */
I_C_T ~%tutu_var%BEGGBA~ 8 X#AjantisBeggar1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @53 
END

I_C_T ~%tutu_var%BEGGBA~ 9 X#AjantisBeggar2
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @53 
END

/* Angelo */
I_C_T ~%tutu_var%ANGELO~ 3 X#AjantisAngelo1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @54 
== ~%tutu_var%ANGELO~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1014 
END

//I_C_T ~%tutu_var%ANGELO~ 4 X#AjantisAngelo2
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @54 
//== ~%tutu_var%ANGELO~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @55
//END

/* Edwin not joined */
//I_C_T ~%tutu_var%EDWIN%eet_var%~ %BGTEDWINState8% X#AjantisEdwin
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @56 
//== ~%tutu_var%EDWIN%eet_var%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1015 
//END

/* Ardrouine (looks for her son threatend by Worgs) */
//I_C_T2 ~%tutu_var%ARDROU~ 0 X#AjantisArdrouine
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @57 DO ~SetGlobal("J#ArdTalk","GLOBAL",1)~
//END

/* Quinn (in BG, looking for Nestor's knife which can be found by an Ankheg) */
//I_C_T ~%tutu_var%QUINN~ 1 X#AjantisQuinn1
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @58 DO ~SetGlobal("X#AjantisQuinnPromise","GLOBAL",1)~ 
//END

/* Brielbara */
I_C_T ~%tutu_var%BRIELB~ 6 X#AjantisBrielbara1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @59
END

/* Drizzt hostile leave if attacked */
//I_C_T ~%tutu_var%DRIZZT~ 1 X#AjantisDrizzt1
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @60 
//END

I_C_T ~%tutu_var%DRIZZT~ 3 X#AjantisDrizzt3
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @61 DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) Enemy()~ 
== ~%tutu_var%DRIZZT~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1016 
END

/* Joseph's wife */
INTERJECT ~%tutu_scriptbg%FTOWN2%eet_var%~ 0 X#AjantisWomanNashkell0
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @62
== ~%tutu_scriptbg%FTOWN2%eet_var%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @63
END 
++ @64 EXTERN ~%tutu_scriptbg%FTOWN2%eet_var%~ 3
++ @65 EXIT

/* If help is offered */
I_C_T ~%tutu_scriptbg%FTOWN2%eet_var%~ 3 X#AjantisWomanNashkell3
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @66 DO ~SetGlobal("X#AjantisWomanNashkellPromise","GLOBAL",1)~ 
END

/* If ring is "hidden" from her (Joseph's wife) */
INTERJECT ~%tutu_scriptbg%FTOWN2%eet_var%~ 5 X#AjantisWomanNashkell5
== ~%AJANTIS_JOINED%~ IF ~PartyHasItem("%tutu_var%RINGJOS") InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @67
= @68 DO ~TakePartyItem("%tutu_var%RINGJOS")~
END ~%tutu_scriptbg%FTOWN2%eet_var%~ 6

/* If ring is not given to her */
I_C_T ~%tutu_scriptbg%FTOWN2%eet_var%~ 7 X#AjantisWomanNashkell7
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @69 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
END

/* Oublek */
INTERJECT ~%tutu_var%OUBLEK~ 2 X#AjantisNotGreywolf
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisNotGreywolf","GLOBAL",0)~ THEN @107
END ~%tutu_var%OUBLEK~ 1


/* Prism */
ADD_TRANS_TRIGGER ~%tutu_var%PRISM~ 3 ~OR(3) !InParty("ajantis") !InMyArea("ajantis") StateCheck("ajantis",CD_STATE_NOTVALID)~

EXTEND_BOTTOM ~%tutu_var%PRISM~ 3
IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisProtectPrism","GLOBAL",0)~ THEN EXTERN ~%AJANTIS_JOINED%~ protect_prism
END

APPEND ~%tutu_var%PRISM~

IF ~~ THEN BEGIN no_help
SAY @70
COPY_TRANS ~%tutu_var%PRISM~ 3
END

END

APPEND ~%AJANTIS_JOINED%~

IF ~~ THEN BEGIN protect_prism
SAY @108 
++ @109 DO ~SetGlobal("X#AjantisProtectPrism","GLOBAL",1)~ EXTERN ~%tutu_var%PRISM~ 4
++ @110 DO ~SetGlobal("X#AjantisProtectPrism","GLOBAL",1) IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~ EXTERN ~%tutu_var%PRISM~ no_help
END

END

/* Dryads */
ADD_TRANS_TRIGGER ~%tutu_var%DRYAD~ 4 ~OR(3) !InParty("ajantis") !InMyArea("ajantis") StateCheck("ajantis",CD_STATE_NOTVALID)~ 
ADD_TRANS_TRIGGER ~%tutu_var%DRYAD~ 10 ~OR(3) !InParty("ajantis") !InMyArea("ajantis") StateCheck("ajantis",CD_STATE_NOTVALID)~ 

EXTEND_BOTTOM ~%tutu_var%DRYAD~ 4 10
IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisProtectDryade","GLOBAL",0)~ EXTERN ~%AJANTIS_JOINED%~ protect_dryad
END

APPEND ~%tutu_var%DRYAD~
IF ~~ THEN BEGIN no_help
SAY @71
COPY_TRANS ~%tutu_var%DRYAD~ 4
END
END

/* Rill */
ADD_TRANS_TRIGGER ~%tutu_scripts%LAVLEAD~ 3 ~OR(3) !InParty("ajantis") !InMyArea("ajantis") StateCheck("ajantis",CD_STATE_NOTVALID)~

EXTEND_BOTTOM ~%tutu_scripts%LAVLEAD~ 3
IF ~PartyGoldGT(99) InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisHelpRill","GLOBAL",0)~ EXTERN ~%AJANTIS_JOINED%~ help_rill
END

/* Gallor */
ADD_TRANS_TRIGGER ~%tutu_var%GALLOR~ 1 ~OR(3) !InParty("ajantis") !InMyArea("ajantis") StateCheck("ajantis",CD_STATE_NOTVALID)~

EXTEND_BOTTOM ~%tutu_var%GALLOR~ 1
IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisNoHelpGallor","GLOBAL",0)~ EXTERN ~%AJANTIS_JOINED%~ gallor_chain
END

CHAIN ~%AJANTIS_JOINED%~ gallor_chain
@72
== ~%tutu_var%GALLOR~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisNoHelpGallor","GLOBAL",0)~ THEN @73
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID) Global("X#AjantisNoHelpGallor","GLOBAL",0)~ THEN @74 DO ~SetGlobal("X#AjantisNoHelpGallor","GLOBAL",1)~
END
++ @75 EXTERN ~%tutu_var%GALLOR~ 2
++ @76 EXTERN ~%tutu_var%GALLOR~ no_help
++ @77 EXTERN ~%tutu_var%GALLOR~ no_help

APPEND ~%tutu_var%GALLOR~
IF ~~ THEN BEGIN no_help
SAY @78 
COPY_TRANS ~%tutu_var%GALLOR~ 2
END
END

/* help dryad */
I_C_T ~%tutu_var%KRUMM~ 1 X#AjantisKrumm1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @79
== ~%tutu_var%KRUMM~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1017
END

I_C_T ~%tutu_var%KRUMM~ 3 X#AjantisKrumm3
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @79
== ~%tutu_var%KRUMM~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1017
END

/* Eldoth, if rejected */
I_C_T ~%tutu_var%ELDOTH~ 6 X#AjantisEldoth6
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @80
END

/* Rill (slave leader in mines, after giving him money */
//I_C_T2 ~%tutu_scripts%LAVLEAD~ 4 X#AjantisRill4
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @81
//END

/* Alatos, thieves guild, if rejected */
I_C_T ~%tutu_var%ALATOS~ 3 X#AjantisAlatos3
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @82
== ~%tutu_var%ALATOS~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1018
END

//I_C_T ~%tutu_var%ALATOS~ 8 X#AjantisAlatos8
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @82
//== ~%tutu_var%ALATOS~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1018
//END

/* Brevlik and the telescope */
I_C_T ~%tutu_var%BREVLI~ 6 X#AjantisBrevlik6
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @83
== ~%tutu_var%BREVLI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @84
END

I_C_T ~%tutu_var%BREVLI~ 5 X#AjantisBrevlik5
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @83
== ~%tutu_var%BREVLI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @84
END

/* if rejected */
I_C_T ~%tutu_var%BREVLI~ 3 X#AjantisBrevlik3
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @85
== ~%tutu_var%BREVLI~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @86
END

/* interjection for "good" reaction to Joseph's wife */
I_C_T ~%tutu_scriptbg%FTOWN2%eet_var%~ 8 X#AjantisWomanNashkell8
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @87
= @88
END

/* Interjection for Teynga */
//I_C_T ~%tutu_var%TEYNGA~ 0 X#AjantisTengya0
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @89
//END

I_C_T ~%tutu_var%TEYNGA~ 1 X#AjantisTengya1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @90
== ~%tutu_var%TEYNGA~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1020
END

I_C_T ~%tutu_var%TEYNGA~ 3 X#AjantisTengya3
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @91 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
== ~%tutu_var%TEYNGA~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1019
END 

/* Scar on the bridge */
//I_C_T ~%tutu_var%SCAR~ 2 X#AjantisScar2
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @92
//END

/* Scar in the flaming fist */
I_C_T ~%tutu_var%SCAR~ 21 X#AjantisScar21
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @93
END

/* TIBER Cloakwood forest, waiting for his brother */
I_C_T ~%tutu_var%TIBER~ 1 X#AjantisTiber1
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @94 DO ~IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~
== ~%tutu_var%TIBER~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @1021
END

I_C_T ~%tutu_var%TIBER~ 3 X#AjantisTiber3
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @95
= @96 DO ~SetGlobal("X#AjantisTiberHelp","GLOBAL",1)~
END

/* after giving Brun money (good hint, Bren) */
//I_C_T ~%tutu_var%FARMBR~ 10 X#AjantisBrun10
//== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @97
//= @98
//END

/* after giving Brun money (good hint, Bren) */
I_C_T ~%tutu_var%FARMBR~ 11 X#AjantisBrun11
== ~%AJANTIS_JOINED%~ IF ~InParty("ajantis") InMyArea("ajantis") !StateCheck("ajantis",CD_STATE_NOTVALID)~ THEN @99
END 

APPEND ~%AJANTIS_JOINED%~

/* Ajantis 20 rep */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisBestReputationTalk","GLOBAL",1)~ THEN BEGIN Ajantis_goodreputation_talk
SAY @100 
IF ~~ THEN DO ~SetGlobal("X#AjantisBestReputationTalk","GLOBAL",2)~ EXIT
END

/* Ajantis-Dyna hostile */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisDynaHostile","GLOBAL",1)~ THEN BEGIN attackingdynaheir
SAY @21
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisDynaHostile","GLOBAL",2) LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) Enemy()~ EXIT
END

/* Ajantis-Drizzt hostile */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisDrizztHostile","GLOBAL",1)~ THEN BEGIN attacking_drizzt
SAY @101 
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) Enemy() SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisDrizztHostile","GLOBAL",2)~ EXIT
END

/* If husband's ring in mine is found */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisWomanNashkellPromise","GLOBAL",2)~ THEN ajantis_husband_ring
SAY @102 
IF ~~ THEN DO ~SetGlobal("X#AjantisWomanNashkellPromise","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN help_rill
SAY @103 
IF ~~ THEN DO ~SetGlobal("X#AjantisHelpRill","GLOBAL",1) IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~ EXTERN ~%tutu_scripts%LAVLEAD~ 4
END

IF ~~ THEN BEGIN protect_dryad
SAY @104
++ @105 DO ~SetGlobal("X#AjantisProtectDryade","GLOBAL",1)~ EXTERN ~%tutu_var%DRYAD~ 3
++ @106 DO ~SetGlobal("X#AjantisProtectDryade","GLOBAL",1) IncrementGlobal("X#AjantisRomanceBadDecision","GLOBAL",1)~ EXTERN ~%tutu_var%DRYAD~ no_help
END

/* If Nester's dagger was found */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisNestorsDagger","GLOBAL",1)~ THEN BEGIN ajantis_nestors_dagger
SAY @111 
IF ~~ THEN DO ~SetGlobal("X#AjantisNestorsDagger","GLOBAL",2)~ EXIT
END

/* Kozah idol */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisKozahStatue","GLOBAL",1)~ THEN BEGIN ajantis_kozah_statue
SAY @112
IF ~~ THEN DO ~SetGlobal("X#AjantisKozahStatue","GLOBAL",2)~ EXIT
END

/* Dopplegangers */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisNobleDopple","GLOBAL",1)~ THEN BEGIN ajantis_protect_duke
SAY @113
IF ~~ THEN DO ~SetGlobal("X#AjantisNobleDopple","GLOBAL",2)~ EXIT
END

/* If baby Peladan was found */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisPeladan","GLOBAL",1)~ THEN BEGIN ajantis_babyp
SAY @114 
IF ~~ THEN DO ~SetGlobal("X#AjantisPeladan","GLOBAL",2)~ EXIT
END

/*  Thieves guild */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisThievesGuild","GLOBAL",1)~ THEN BEGIN ajantis_thief_guild
SAY @115 
++ @116 DO ~SetGlobal("X#AjantisThievesGuild","GLOBAL",2)~ EXIT
++ @117 DO ~SetGlobal("X#AjantisThievesGuild","GLOBAL",2)~ EXIT
++ @118 DO ~SetGlobal("X#AjantisThievesGuild","GLOBAL",2)~ + thief_guild_01 
END

IF ~~ THEN BEGIN thief_guild_01
SAY @119 
IF ~~ THEN EXIT
END

/* Found Nathan's dead body */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisNathanFound","GLOBAL",1)~ THEN BEGIN ajantis_nathan_found
SAY @120 
IF ~~ THEN DO ~SetGlobal("X#AjantisNathanFound","GLOBAL",2)~ EXIT
END

/* Ajantis reminder about Samuel */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisBringSamuel","GLOBAL",1)~ THEN BEGIN ajantis_bring_samuel
SAY @121 
IF ~~ THEN DO ~SetGlobal("X#AjantisBringSamuel","GLOBAL",2)~ EXIT
END

/* Mirianne's letter found */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisMirianneLetter","GLOBAL",1)~ THEN BEGIN ajantis_mirianne_letter
SAY @122 
IF ~~ THEN DO ~SetGlobal("X#AjantisMirianneLetter","GLOBAL",2)~ EXIT
END

/* reputation below 12 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisBadReputationWarning","GLOBAL",1)~ THEN BEGIN Ajantis_badreputation_warning
SAY @123  
++ @124 DO ~SetGlobal("X#AjantisBadReputationWarning","GLOBAL",2)~ + Ajantis_badreputation_warning_01
++ @125 DO ~SetGlobal("X#AjantisBadReputationWarning","GLOBAL",2)~ + Ajantis_badreputation_warning_02
END

IF ~~ THEN BEGIN Ajantis_badreputation_warning_01
SAY @126 
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN Ajantis_badreputation_warning_02
SAY @127
IF ~~ THEN EXIT
END 

/* Bjornin ogres */
/* enter area */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisBjorninArea","GLOBAL",1)~ THEN BEGIN ajantis_bjornin_area
SAY @128
IF ~~ THEN DO ~SetGlobal("X#AjantisBjorninArea","GLOBAL",2)~ EXIT
END

/* Bjornin Resolved */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisBjorninOgresKilled","GLOBAL",1)~ THEN BEGIN ajantis_bjornin_ogreskilled
SAY @129
IF ~~ THEN DO ~SetGlobal("X#AjantisBjorninOgresKilled","GLOBAL",2)~ EXIT
END

/* Entrance to CK library (should be called before the iron throne bosses are met) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisLibraryCK","GLOBAL",1)~ THEN BEGIN ck_library
SAY @130
= @131 
IF ~~ THEN DO ~SetGlobal("X#AjantisLibraryCK","GLOBAL",2)~ EXIT
END

/* Know Bhaal talk 1 */
/* Know Bhaal talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisKnowBhaalTalkNoRom","GLOBAL",1)~ THEN BEGIN knowbhaal_talk
SAY @132
+ ~ReputationGT(Player1,13)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @133 DO ~SetGlobal("X#AjantisKnowBhaalTalkNoRom","GLOBAL",2)~ + bhaalknow_02
+ ~OR(2) ReputationLT(Player1,14)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @133 DO ~SetGlobal("X#AjantisKnowBhaalTalkNoRom","GLOBAL",2)~ + bhaalknow_03
++ @134 DO ~SetGlobal("X#AjantisKnowBhaalTalkNoRom","GLOBAL",2)~ + bhaalknow_01
END

IF ~~ THEN BEGIN bhaalknow_01
SAY @135 
++ @136 + bhaalknow_03
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ + @137 + bhaalknow_05
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @137 + bhaalknow_06
END

IF ~~ THEN BEGIN bhaalknow_02
SAY @138 
IF ~~ THEN + bhaalknow_04
END

IF ~~ THEN BEGIN bhaalknow_03
SAY @139 
IF ~~ THEN + bhaalknow_04
END

IF ~~ THEN BEGIN bhaalknow_04
SAY @140 
+ ~!Alignment(Player1,MASK_EVIL) ReputationGT(Player1,13)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @141 DO ~SetGlobal("X#AjantisKeinErbe","GLOBAL",1)~ + bhaalknow_07
+ ~!Alignment(Player1,MASK_EVIL)
OR(2) ReputationLT(Player1,14)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @141
DO ~SetGlobal("X#AjantisKeinErbe","GLOBAL",1)~ + bhaalknow_08
++ @142 + bhaalknow_09
++ @143 + bhaalknow_10
++ @144 + bhaalknow_11
END

IF ~~ THEN BEGIN bhaalknow_05
SAY @145 
IF ~~ THEN + bhaalknow_04
END

IF ~~ THEN BEGIN bhaalknow_06
SAY @146
IF ~~ THEN + bhaalknow_04
END

IF ~~ THEN BEGIN bhaalknow_07
SAY @147
IF ~~ THEN + bhaalknow_12
END

IF ~~ THEN BEGIN bhaalknow_08
SAY @148
IF ~~ THEN + bhaalknow_12
END

IF ~~ THEN BEGIN bhaalknow_09
SAY @149
IF ~~ THEN + bhaalknow_12
END

IF ~~ THEN BEGIN bhaalknow_10
SAY @150
++ @151 + bhaalknow_12
++ @152 + bhaalknow_11
END

IF ~~ THEN BEGIN bhaalknow_11
SAY @153
+ ~Alignment(Player1,MASK_EVIL)~ + @154 + bhaalknow_36 
+ ~!Alignment(Player1,MASK_EVIL) !Global("X#AjantisRomanceActive","GLOBAL",2)~ + @154 + bhaalknow_14 
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @154 + bhaalknow_15
++ @155 + bhaalknow_16
+ ~!Alignment(Player1,MASK_EVIL)~ + @156 + bhaalknow_13
END

IF ~~ THEN BEGIN bhaalknow_12
SAY @157
+ ~Global("X#AjantisRomanceActive","GLOBAL",2) ReputationGT(Player1,13) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4) !Alignment(Player1,MASK_EVIL)~ + @158 + bhaalknow_29
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) ReputationGT(Player1,13) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4) !Alignment(Player1,MASK_EVIL)~ + @158 + bhaalknow_25
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) OR(2) ReputationLT(Player1,14) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3) !Alignment(Player1,MASK_EVIL)~ + @158 + bhaalknow_26
+ ~Global("X#AjantisRomanceActive","GLOBAL",2) OR(2) ReputationLT(Player1,14) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3) !Alignment(Player1,MASK_EVIL)~ + @158 + bhaalknow_27
+ ~Global("X#AjantisRomanceActive","GLOBAL",2) ReputationGT(Player1,13) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @159 + bhaalknow_29
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) ReputationGT(Player1,13) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @159 + bhaalknow_25
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) OR(2) ReputationLT(Player1,14) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @159 + bhaalknow_26
+ ~Global("X#AjantisRomanceActive","GLOBAL",2) OR(2) ReputationLT(Player1,14) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @159 + bhaalknow_27
++ @160 + bhaalknow_16
+ ~!Global("X#AjantisKeinErbe","GLOBAL",1)~ + @161 + bhaalknow_11
END

IF ~~ THEN BEGIN bhaalknow_13
SAY @162
++ @163 + bhaalknow_17
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ + @164 + bhaalknow_14
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @164 + bhaalknow_15
END

IF ~~ THEN BEGIN bhaalknow_14
SAY @165
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bhaalknow_15
SAY @166 
= @167
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bhaalknow_16
SAY @168
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#AjantisRomanceActive","GLOBAL",1)~ + @169 + bhaalknow_28
+ ~OR(2) Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#AjantisRomanceActive","GLOBAL",1) ReputationGT(Player1,13) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @169 + bhaalknow_30
+ ~OR(2) Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#AjantisRomanceActive","GLOBAL",1) OR(2) ReputationLT(Player1,14) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @169 + bhaalknow_31
+ ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ + @170 + bhaalknow_14
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @170 + bhaalknow_15
+ ~!Alignment(Player1,MASK_EVIL) !Global("X#AjantisKeinErbe","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",2)~ + @171 + bhaalknow_14
+ ~!Alignment(Player1,MASK_EVIL) !Global("X#AjantisKeinErbe","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",2)~ + @171 + bhaalknow_15
+ ~Alignment(Player1,MASK_EVIL) !Global("X#AjantisKeinErbe","GLOBAL",1)~ + @171 + bhaalknow_36
END

IF ~~ THEN BEGIN bhaalknow_17
SAY @172
+ ~!Class(Player1,PALADIN_ALL) ReputationGT(Player1,13) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @173 + bhaalknow_19
+ ~!Class(Player1,PALADIN_ALL) OR(2) ReputationLT(Player1,14) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @173 + bhaalknow_20
+ ~Class(Player1,PALADIN_ALL)~ + @173 + bhaalknow_21
+ ~!Class(Player1,PALADIN_ALL) ReputationGT(Player1,13) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ + @174 + bhaalknow_19
+ ~!Class(Player1,PALADIN_ALL) OR(2) ReputationLT(Player1,14) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ + @174 + bhaalknow_20
+ ~Class(Player1,PALADIN_ALL)~ + @174 + bhaalknow_21
++ @175 + bhaalknow_18
END

IF ~~ THEN BEGIN bhaalknow_18 
SAY @176
IF ~!Class(Player1,PALADIN_ALL) ReputationGT(Player1,13) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN + bhaalknow_19
IF ~!Class(Player1,PALADIN_ALL) OR(2) ReputationLT(Player1,14) GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",3)~ THEN + bhaalknow_20
IF ~Class(Player1,PALADIN_ALL)~ THEN + bhaalknow_21
END

IF ~~ THEN BEGIN bhaalknow_19
SAY @177
IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + bhaalknow_26
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + bhaalknow_27
END

IF ~~ THEN BEGIN bhaalknow_20
SAY @178
IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + bhaalknow_23
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + bhaalknow_24
END

IF ~~ THEN BEGIN bhaalknow_21
SAY @179
IF ~!Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + bhaalknow_26
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + bhaalknow_27
END

/* IF ~~ THEN BEGIN bhaalknow_22 taken out */

IF ~~ THEN BEGIN bhaalknow_23
SAY @181
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bhaalknow_24
SAY @182
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bhaalknow_25
SAY @183
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bhaalknow_26
SAY @184
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bhaalknow_27
SAY @185
= @186 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bhaalknow_28
SAY @187
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bhaalknow_29
SAY @188
= @189
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bhaalknow_30
SAY @190
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @191 + bhaalknow_29
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + @191 + bhaalknow_25
+ ~Global("X#AjantisRomanceActive","GLOBAL",2)~ + @192 + bhaalknow_32
+ ~Global("X#AjantisRomanceActive","GLOBAL",1)~ + @192 + bhaalknow_33
END

IF ~~ THEN BEGIN bhaalknow_31
SAY @193
IF ~Global("X#AjantisRomanceActive","GLOBAL",2)~ THEN + bhaalknow_34
IF ~Global("X#AjantisRomanceActive","GLOBAL",1)~ THEN + bhaalknow_35
END

IF ~~ THEN BEGIN bhaalknow_32
SAY @194
= @195
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bhaalknow_33
SAY @196
= @197
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN bhaalknow_34
SAY @198
= @186 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN bhaalknow_35
SAY @199 
= @200 
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceInsult","GLOBAL",1)~ EXIT
END

IF ~~ THEN bhaalknow_36
SAY @201 
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) Enemy() SetGlobal("X#AjantisRomanceActive","GLOBAL",3)~ EXIT
END 

/* Ajantis recognizes low rep of a freshly joined group */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisBadRepJoinTalk","GLOBAL",1)~ THEN BEGIN Ajantis_badreputation_joining
SAY @202
IF ~~ THEN DO ~SetGlobal("X#AjantisBadRepJoinTalk","GLOBAL",2)~ EXIT
END

/* Ajantis recognizes rep increase after former bad rep talk */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisBadReputationIncrease","GLOBAL",1)~ THEN BEGIN Ajantis_reputation_increase
SAY @203 
IF ~~ THEN DO ~SetGlobal("X#AjantisBadReputationIncrease","GLOBAL",2)~ EXIT
END

/* Ajantis good rep talk for rep >17 */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisGoodReputationTalk","GLOBAL",1)~ THEN BEGIN Ajantis_goodreputation_talk
SAY @204  
IF ~~ THEN DO ~SetGlobal("X#AjantisGoodReputationTalk","GLOBAL",2)~ EXIT
END

/* if the "wanted" letter is found on an opponent(_SCRLKAR.ITM) */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisWantedLetter","GLOBAL",1)~ THEN ajantis_wanted_letter
SAY @205
IF ~~ THEN DO ~SetGlobal("X#AjantisWantedLetter","GLOBAL",2)~ EXIT
END

/* if dead Chelak is found */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisTiberHelp","GLOBAL",2)~ THEN ajantis_chelak_found
SAY @206 
IF ~~ THEN DO ~SetGlobal("X#AjantisTiberHelp","GLOBAL",3)~ EXIT
END

/* attacked Drizzt */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#PartyAttackedDrizzt","GLOBAL",2)~ THEN BEGIN attacking_drizzt
SAY @207
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#PartyAttackedDrizzt","GLOBAL",3) LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) Enemy()~ EXIT
END

/* Helmet of Alignment Change */

IF ~Global("X#AjantisPCHelmet","GLOBAL",1)~ THEN PC_helmet
SAY @214
= @215
IF ~~ THEN DO ~SetGlobal("X#AjantisPCHelmet","GLOBAL",2)~ EXIT
END

IF ~Global("X#AjantisAjHelmet","GLOBAL",2)~ THEN Ajantis_helmet
SAY @216
++ @217 + Ajantis_helmet_01
++ @218 + Ajantis_helmet_01
++ @219 + Ajantis_helmet_01
END

IF ~~ THEN Ajantis_helmet_01
SAY @220
++ @221 + Ajantis_helmet_02
++ @222 + Ajantis_helmet_02
++ @223 + Ajantis_helmet_02
END

IF ~~ THEN Ajantis_helmet_02
SAY @224
IF ~~ THEN DO ~SetGlobal("X#AjantisAjHelmet","GLOBAL",3)~ EXIT
END

/* Girdle of Gender Change */

IF ~Global("X#AjantisAjGirdle","GLOBAL",1)~ THEN Ajantis_girdle
SAY @225
IF ~~ THEN DO ~SetGlobal("X#AjantisAjGirdle","GLOBAL",2)~ EXIT
END

END

/* Undercellar */
CHAIN IF ~%BGT_VAR% Global("X#AjantisUndercellar","GLOBAL",1)~ THEN ~%AJANTIS_JOINED%~ ajantis_undercellar
@208
== ~%AJANTIS_JOINED%~ IF ~!PartyHasItem("%tutu_var%SCRL2R") GlobalLT("Baldurian","GLOBAL",1)~ THEN @209 DO ~SetGlobal("X#AjantisUndercellar","GLOBAL",2)~
== ~%AJANTIS_JOINED%~ IF ~!PartyHasItem("%tutu_var%SCRL2R") GlobalGT("Baldurian","GLOBAL",0) GlobalLT("Baldurian","GLOBAL",4)~ THEN @210 DO ~SetGlobal("X#AjantisUndercellar","GLOBAL",2)~
== ~%AJANTIS_JOINED%~ IF ~PartyHasItem("%tutu_var%SCRL2R")~ THEN @211 DO ~SetGlobal("X#AjantisUndercellar","GLOBAL",2)~
== ~%CORAN_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",3) !Global("X#AjantisRomanceActive","GLOBAL",0)~ THEN @212
== ~%AJANTIS_JOINED%~ IF ~InParty("coran") InMyArea("coran") !StateCheck("coran",CD_STATE_NOTVALID) Global("P#CoranMatch","GLOBAL",1) !Global("P#CoranRomanceInactive","GLOBAL",1) !Global("X#AjantisRomanceActive","GLOBAL",3) !Global("X#AjantisRomanceActive","GLOBAL",0)~ THEN @213
EXIT
