APPEND ~%FALDORN_JOINED%~

/* Early Faldorn Mines talk */
IF ~%BGT_VAR% Global("X#FaMines","GLOBAL",2)~ THEN BEGIN FaPCMine
SAY @154
++ @155 DO ~SetGlobal("X#FaMines","GLOBAL",3)~ + FaPCMine.1
++ @156 DO ~SetGlobal("X#FaMines","GLOBAL",3)~ + FaPCMine.2
++ @157 DO ~SetGlobal("X#FaMines","GLOBAL",3)~ + FaPCMine.3
++ @158 DO ~SetGlobal("X#FaMines","GLOBAL",3)~ + FaPCMine.4
END

IF ~~ THEN BEGIN FaPCMine.1
SAY @159
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_3%)~ + @160 + FaPCMine.5
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_3%)~ + @160 + FaPCMine.6
++ @161 + FaPCMine.7
++ @162 + FaPCMine.8
+ ~!Class(Player1,DRUID_ALL)~ + @163 + FaPCMine.9
END

IF ~~ THEN BEGIN FaPCMine.2
SAY @164
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_3%)~ + @160 + FaPCMine.5
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_3%)~ + @160 + FaPCMine.6
++ @161 + FaPCMine.7
++ @162 + FaPCMine.8
+ ~!Class(Player1,DRUID_ALL)~ + @163 + FaPCMine.9
END

IF ~~ THEN BEGIN FaPCMine.3
SAY @165
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_3%)~ + @160 + FaPCMine.5
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_3%)~ + @160 + FaPCMine.6
++ @161 + FaPCMine.7
++ @162 + FaPCMine.8
+ ~!Class(Player1,DRUID_ALL)~ + @163 + FaPCMine.9
END

IF ~~ THEN BEGIN FaPCMine.4
SAY @166
+ ~GlobalLT("Chapter","GLOBAL",%tutu_chapter_3%)~ + @160 + FaPCMine.5
+ ~!GlobalLT("Chapter","GLOBAL",%tutu_chapter_3%)~ + @160 + FaPCMine.6
++ @161 + FaPCMine.7
++ @162 + FaPCMine.8
+ ~!Class(Player1,DRUID_ALL)~ + @163 + FaPCMine.9
++ @167 + FaPCMine.10
END

IF ~~ THEN BEGIN FaPCMine.5
SAY @168
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FaPCMine.6
SAY @169
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FaPCMine.7
SAY @170
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FaPCMine.8
SAY @171
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FaPCMine.9
SAY @172
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN FaPCMine.10
SAY @173
IF ~~ THEN EXIT
END

/* Killed bear */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#FalBear","GLOBAL",1)~ THEN BEGIN FABE01
SAY @0
++ @1 DO ~SetGlobal("X#FalBear","GLOBAL",2)~ EXIT
++ @2 DO ~SetGlobal("X#FalBear","GLOBAL",2)~ + FABE1
++ @3 DO ~SetGlobal("X#FalBear","GLOBAL",2)~ + FABE2
++ @4 DO ~SetGlobal("X#FalBear","GLOBAL",2)~ + FABE3
++ @5 DO ~SetGlobal("X#FalBear","GLOBAL",2)~ + FABE4
END

IF ~~ FABE1
SAY @6
++ @7 DO ~SetGlobal("X#FalBear","GLOBAL",3)~ EXIT
++ @8 + FABE2
++ @5 + FABE4
END

IF ~~ FABE2
SAY @9
IF ~~ THEN EXIT
END

IF ~~ FABE3
SAY @10
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) EscapeArea()~ EXIT
END

IF ~~ FABE4
SAY @11
IF ~~ THEN DO ~SetGlobal("X#FalBear","GLOBAL",3)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#FalBear","GLOBAL",4)~ THEN BEGIN FABE02
SAY @12
= @13
++ @14 DO ~SetGlobal("X#FalBear","GLOBAL",5)~ + FABE5
++ @15 DO ~SetGlobal("X#FalBear","GLOBAL",5)~+ FABE6
+ ~Gender(Player1, MALE)~+ @16 DO ~SetGlobal("X#FalBear","GLOBAL",5)~+ FABE5
++ @17 DO ~SetGlobal("X#FalBear","GLOBAL",5)~+ FABE7
END

IF ~~ FABE5
SAY @18
++ @15 DO ~SetGlobal("X#FalBear","GLOBAL",5)~+ FABE6
++ @17 DO ~SetGlobal("X#FalBear","GLOBAL",5)~+ FABE7
END

IF ~~ FABE6
SAY @19
= @20
IF ~~ THEN EXIT
END

IF ~~ FABE7
SAY @21
IF ~~ THEN DO ~LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) Enemy()~ EXIT
END

/* Fergus */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#FaldornFergus","GLOBAL",1)~ THEN FaldornFergus
SAY @22
++ @23 DO ~SetGlobal("X#FaldornFergus","GLOBAL",2)~ + FAFE1.1
++ @24 DO ~SetGlobal("X#FaldornFergus","GLOBAL",2)~ EXIT
END

IF ~~ FAFE1.1
SAY @25
+ ~Gender(Player1,MALE)~ + @26 + FAFE1.2
++ @27 EXIT
++ @28 + FAFE1.3
++ @29 EXIT
+ ~Gender(Player1,MALE)~ + @30 + FAFE1.4
+ ~Gender(Player1,FEMALE)~ + @31 + FAFE1.4
END

IF ~~ FAFE1.2
SAY @32
IF ~~ THEN EXIT
END

IF ~~ FAFE1.3
SAY @33
IF ~~ THEN EXIT
END

IF ~~ FAFE1.4
SAY @34
= @35
IF ~~ THEN EXIT
END

/* Peter */
IF ~~ THEN FaldornPeter
SAY @36
IF ~~ THEN EXTERN ~%tutu_var%COKSMTH~ 3
END

/* Entering FW0400 */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#FaldornM400","GLOBAL",1)~ THEN BEGIN FALDOM400
SAY @37
IF ~~ THEN DO ~SetGlobal("X#FaldornM400","GLOBAL",2)~ EXIT
END

/* Faldorn, At Seeing The Firewine Ruins */
IF WEIGHT #-2 ~%BGT_VAR% Global("X#FASTFWR","GLOBAL",1)~ THEN BEGIN FASTFWR1
SAY @38
IF ~~ THEN DO ~SetGlobal("X#FASTFWR","GLOBAL",2)~ EXIT
END

/* FaldornAnkhegs */

IF WEIGHT #-2 ~%BGT_VAR% Global("X#FaldornAn10","%FishingVillage%",1)~ THEN BEGIN X#FalAn10
SAY @39
IF ~~ THEN DO ~SetGlobal("X#FaldornAn10","%FishingVillage%",2)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#FaldornAn11","%FishingVillage%",1)~ THEN BEGIN X#FalAn11
SAY @40
IF ~~ THEN DO ~SetGlobal("X#FaldornAn11","%FishingVillage%",2)~ EXIT
END

IF WEIGHT #-2 ~%BGT_VAR% Global("X#FaldornAn12","%FishingVillage%",1)~ THEN BEGIN X#FalAn11
SAY @41
IF ~~ THEN DO ~SetGlobal("X#FaldornAn12","%FishingVillage%",2) LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) ActionOverride("faldorn",LeaveAreaLUA("%CloakwoodDruids%","",[670.2900],3))~ EXIT
END

IF ~~ THEN BEGIN P5#FalMadVoltine
SAY @44
IF ~~ THEN DO ~ActionOverride("voltine",Enemy()) LeaveParty() SetLeavePartyDialogFile() ChangeAIScript("",DEFAULT) Enemy()~ EXIT
END

END

// I_C_T2 ~%tutu_var%MAPLE~ 0 X#FaldornMaple
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @42
// END

APPEND ~%tutu_var%VOLTIN~

IF WEIGHT #3 ~%BGT_VAR% Global("HelpVoltine","GLOBAL",0)~ THEN BEGIN X#VoltinAdd
  SAY @150
  ++ @151 EXIT
  ++ @152 + P5#VoltinAdd2
END

IF ~~ P5#VoltinAdd2
  SAY @153
  IF ~~ THEN DO ~Enemy()~ EXIT
  IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN EXTERN ~%FALDORN_JOINED%~ P5#FalMadVoltine
END

END

// I_C_T2 ~%tutu_var%VOLTIN~ 1 X#FaVoltine1
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @43
// END

EXTEND_BOTTOM ~%tutu_var%CORSON~ 6
IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~THEN EXTERN ~%FALDORN_JOINED%~ FaldornCorsone
END

CHAIN ~%FALDORN_JOINED%~ FaldornCorsone
@45
== ~%tutu_var%CORSON~ @46
== ~%FALDORN_JOINED%~ @47
== ~%tutu_var%CORSON~ @48
== ~%FALDORN_JOINED%~ @49
== ~%tutu_var%CORSON~ @50
DO ~EscapeArea() AddXPObject("faldorn",400)~
EXIT

/* Faldorn Osmadi */

I_C_T ~%tutu_var%OSMADI~ 0 X#FaldornOsmadi
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @51
END

/* Faldorn doppleg  */

I_C_T ~%tutu_var%GORION3~ 0 X#FALDODOPPLEGANGER
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @52
== ~%tutu_var%GORION3~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @53
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @54
END

/* I_C_T2 ~%tutu_var%KEVIN~ 1 X#FaldornNivek1
 * == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @55
* END
*/

/* Faldorn Izefia interjection to set Quest, using INTERJECT to avoid EscapeArea() command in State 1 */
INTERJECT ~%tutu_var%IZEFIA~ 1 X#FALDORNIZEFIA1
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @56
== ~%tutu_var%IZEFIA~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @57
DO ~SetGlobal("X#ReportIzefia","GLOBAL",1)~
EXIT

/* Faldorn Izefia Quest Done  */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#ReportIzefia","GLOBAL",1) Dead("peter") InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~
THEN ~%tutu_var%IZEFIA~ X#IzeFaldo2
@58
== ~%FALDORN_JOINED%~ @59
== ~%tutu_var%IZEFIA~ @60
== ~%FALDORN_JOINED%~ @61
== ~%tutu_var%IZEFIA~ @62
DO ~SetGlobal("X#ReportIzefia","GLOBAL",2) AddXPObject("faldorn",100) GiveItemCreate("%tutu_var%POTN08","faldorn",1,0,0) GiveItemCreate("%tutu_var%POTN20","faldorn",1,0,0) ActionOverride("Izefia",EscapeArea())~
EXIT

/* Faldorn Izefia Quest Done BUT Faldorn Not OK/In Party */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#ReportIzefia","GLOBAL",1) Dead("peter") OR(3) !InParty("faldorn") !InMyArea("faldorn") StateCheck("faldorn",CD_STATE_NOTVALID)~
THEN ~%tutu_var%IZEFIA~ X#IzeFaldoNotYet1
@175 /* ~Be strong! Go with the Nature's blessings.~ */
EXIT

/* Faldorn Izefia Quest Not Done AND Faldorn Not OK/In Party */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#ReportIzefia","GLOBAL",1) !Dead("peter") OR(3) !InParty("faldorn") !InMyArea("faldorn") StateCheck("faldorn",CD_STATE_NOTVALID)~
THEN ~%tutu_var%IZEFIA~ X#IzeFaldoNotYet2
@58
END
++ @151 EXIT

/* Faldorn Izefia Quest Not Done but Faldorn OK/In Party */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% Global("X#ReportIzefia","GLOBAL",1) !Dead("peter") InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~
THEN ~%tutu_var%IZEFIA~ X#IzeFaldoNotYet
@58
== ~%FALDORN_JOINED%~ @157
== ~%tutu_var%IZEFIA~ @175
EXIT

/* Faldorn Amarande  */
I_C_T ~%tutu_var%AMARAN~ 5 X#FALDOAMARAN1
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @63
== ~%tutu_var%AMARAN~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @64
= @65
DO ~SetGlobal("X#ReportAmarande","GLOBAL",1)~
END

/* Faldorn Amarande with report but Jaheira Quest pretty much done */
CHAIN IF WEIGHT #-1 ~%BGT_VAR% InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID) GlobalGT("X#JaheiraQuest","GLOBAL",0) GlobalGT("X#AmarantheAndarthe","GLOBAL",0) Global("X#ReportAmarande","GLOBAL",1) Global("FLOODED","GLOBAL",0)~
THEN ~%tutu_var%AMARAN~ AmaranFaldLoopMine2
@65
== ~%FALDORN_BANTER%~ @63
EXIT

/* Faldorn Amarande after Mines flooded  */
CHAIN IF WEIGHT #-3 ~%BGT_VAR% Global("X#ReportAmarande","GLOBAL",1) OR(2) Global("FLOODED","GLOBAL",1) Global("FLOODED","GLOBAL",2) InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~
THEN ~%tutu_var%AMARAN~ AmaranFald2
@66
== ~%FALDORN_BANTER%~ @67
== ~%tutu_var%AMARAN~ @68
== ~%FALDORN_BANTER%~ @69
== ~%tutu_var%AMARAN~ @70
== ~%FALDORN_BANTER%~ @71
== ~%tutu_var%AMARAN~ @72
DO ~SetGlobal("X#ReportAmarande","GLOBAL",2) GiveItemCreate("X#FASH01","faldorn",1,0,0)~
EXIT

I_C_T ~%tutu_var%LASKAL~ 0 X#FALDORNLASKAL1
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @73
== ~%tutu_var%LASKAL~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @1001
END

I_C_T ~%tutu_var%TAKIYAH~ 1 X#FALDORNTAKIYAH1
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @74
== ~%tutu_var%TAKIYAH~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @75
END

I_C_T ~%tutu_var%BHEREN~ 1 X#FALDORNBHEREN1
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @76
== ~%tutu_var%BHEREN~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @1002
END

// I_C_T2 ~%tutu_var%TIBER~ 4 X#FALDORNTIBER1
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @77
// == ~%tutu_var%TIBER~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @78
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @79
// == ~%tutu_var%TIBER~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @80
// END

// I_C_T2 ~%tutu_var%MELICA~ 1 X#FALDORNMELICAMP1
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @81
// == ~%tutu_var%MELICA~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @82
// END

// I_C_T2 ~%tutu_var%THALAN~ 32 X#FALDORNTHALANTYR1
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @83
// == ~%tutu_var%MELICA~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @84
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @85
// == ~%tutu_var%MELICA~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @86
// == ~%tutu_var%THALAN~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @87
// END

// I_C_T2 ~%tutu_var%ARKION~ 1 X#FALDORNARKION1
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @88
// = @89
// END

// I_C_T2 ~%tutu_var%OGRMA2~ 0 X#FALDORNOGRMAN1
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @90
// END

// I_C_T2 ~%tutu_var%ABELA~ 7 X#FALDORNABELA1
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @91
// == ~%tutu_var%ABELA~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @92
// END

I_C_T ~%tutu_var%FAHRIN~ 1 X#FALDORNFAHRINGTON1
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @93
END

I_C_T ~%tutu_var%FAHRIN~ 2 X#FALDORNFAHRINGTON2
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @93
END

EXTEND_BOTTOM ~%tutu_var%COKSMTH~ 0
IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~THEN EXTERN ~%FALDORN_JOINED%~ FaldornPeter
END

// I_C_T2 ~%tutu_var%CORDYR~ 1 X#FALDORNCORDYR1
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @94
// END

// I_C_T2~%tutu_var%DESRET~ 0 X#FALDORNDESRETA1
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @95
// END

/* Faldorn, Drizzts Encounter After Fighting The Gnolls  */
// I_C_T ~%tutu_var%DRIZZT~ 5 X#FaldornDrizzt
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @96
// == ~%tutu_var%DRIZZT~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @97
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @98
// == ~%tutu_var%DRIZZT~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @99
// END

// I_C_T ~%tutu_var%DRYAD~ 0 X#FaldornDryad1
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @100
// == ~%tutu_var%DRYAD~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @101
// END

// I_C_T ~%tutu_var%DRYAD~ 4 X#FaldornDryad2
// == ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @102
// == ~%tutu_var%DRYAD~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @103
// DO ~SetGlobal("X#FaDryadQuit","GLOBAL",1)~
// END

// I_C_T2 ~%tutu_var%CALDO~ 6 X#FaldornCaldo
// == ~%FALDORN_BANTER%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @104
// DO ~SetGlobal("X#JaiDryadHostile","GLOBAL",1) ActionOverride("faldorn",LeaveParty()) ActionOverride("faldorn",SetLeavePartyDialogFile()) ActionOverride("faldorn",ChangeAIScript("",DEFAULT)) ActionOverride("faldorn",Enemy())~
// END

/*  Faldorn, ankheg Farm - Lady Who Warns About Hunting Limit */
// I_C_T2 ~%tutu_var%GERDE~ 0 X#FAFLWWAHL
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @105
// END

/* Faldorn, Albert (The Boy With The Doggie) */
I_C_T ~%tutu_var%ALBERT~ 1 X#FATBWTD
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @106
END

// I_C_T ~%tutu_var%DAVAEO~ 0 X#FaldornDavaeorn
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @107
// == ~%tutu_var%DAVAEO~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @108
// END

// I_C_T ~%tutu_var%FARMBR~ 6 X#FarmerBruneFaldorn1
// == ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @109
// END

I_C_T ~%tutu_var%LARRY~ 0 X#LarryFaldorn1
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @110
END

I_C_T ~%tutu_var%LENA~ 3 X#LenaFaldorn1
== ~%FALDORN_JOINED%~ IF ~InParty("faldorn") InMyArea("faldorn") !StateCheck("faldorn",CD_STATE_NOTVALID)~ THEN @110
END

