APPEND ~%AJANTIS_JOINED%~

/* flirt status */

IF ~%BGT_VAR% IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) !Detect([ENEMY]) !TimeOfDay(Night) !Alignment(Player2,MASK_EVIL) !Alignment(Player3,MASK_EVIL) !Alignment(Player4,MASK_EVIL) !Alignment(Player5,MASK_EVIL) !Alignment(Player6,MASK_EVIL) GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN ajantisflirts_begin_01
SAY @0
+ ~RandomNum(3,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_03
+ ~GlobalGT("X#AjantisLoveTalk","GLOBAL",12) Global("X#AjantisRomanceQueenOfBeauty","GLOBAL",0)~ + @2 + queen_of_beauty
/* @3 */
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3 + wounded_70_flirt
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_flirt
+ ~HPPercentGT("ajantis",69) OR(3) StateCheck("ajantis",STATE_DISEASED) StateCheck("ajantis",STATE_SLOWED) StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_flirt
+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_01_flirt
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE) HPPercentGT("ajantis",69) !StateCheck("ajantis",STATE_POISONED) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_02_flirt
+ ~RandomNum(4,1) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_flirt
+ ~RandomNum(4,2) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_flirt
+ ~RandomNum(4,3) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_flirt
+ ~RandomNum(4,4) HPPercentGT("ajantis",69) CheckStatLT("ajantis",7,FATIGUE) !StateCheck("ajantis",STATE_DISEASED) !StateCheck("ajantis",STATE_SLOWED) !StateCheck("ajantis",STATE_BLIND) !StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_flirt
++ @4 + look_flirt
+ ~RandomNum(4,1) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_01
+ ~RandomNum(4,2) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_02
+ ~RandomNum(4,3) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_03
+ ~RandomNum(4,4) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_04
+ ~RandomNum(4,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_01
+ ~RandomNum(4,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_02
+ ~RandomNum(4,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_03
+ ~RandomNum(4,4) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + begin_flirt_smile_04
/* @6 */
+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @6 + paladin_too_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @6 + paladin_too_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @6 + paladin_too_03
/* @7 */
+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @7 + paladin_no_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @7 + paladin_no_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @7 + paladin_no_evil_03
/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_04
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_24
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_25

/* chapter 3 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_25

/* chapter 4 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_25

/* chapter 5 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_25

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) !Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25

/* after being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%) Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25

/* chapter 7 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_25

++ @10 + touch_hair

++ @11 + stain

++ @12 + bodyhurt_flirt

+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",0)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_01
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_02
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",2)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_03
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",3)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_04
+ ~RandomNum(2,1) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_05
+ ~RandomNum(2,2) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_06

+ ~RandomNum(3,1)~ + @14 + hairdo_flirt_01
+ ~RandomNum(3,2)~ + @14 + hairdo_flirt_02
+ ~RandomNum(3,3)~ + @14 + hairdo_flirt_03

+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",0)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_01
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",1)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_02
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",2)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_03
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",3)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_04
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",4)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_05
+ ~RandomNum(3,1) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_08
+ ~RandomNum(3,2) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_09
+ ~RandomNum(3,3) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_10

++ @16 + flirt_end
++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END


//------------------------------------------------------------------------

IF ~%BGT_VAR% IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) !Detect([ENEMY])
TimeOfDay(Night)
!Alignment(Player2,MASK_EVIL)
!Alignment(Player3,MASK_EVIL)
!Alignment(Player4,MASK_EVIL)
!Alignment(Player5,MASK_EVIL)
!Alignment(Player6,MASK_EVIL)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)
~ THEN BEGIN ajantisflirts_begin_02
SAY @0
+ ~RandomNum(3,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_03
+ ~GlobalGT("X#AjantisLoveTalk","GLOBAL",12) Global("X#AjantisRomanceQueenOfBeauty","GLOBAL",0)~ + @2 + queen_of_beauty
/* @3 */
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3 + wounded_70_flirt
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_flirt
+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_flirt
+ ~RandomNum(2,1)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_03_flirt
+ ~RandomNum(2,2)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_04_flirt
+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_flirt
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_flirt
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_flirt
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_flirt
++ @4 + look_flirt
+ ~RandomNum(4,1) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_01
+ ~RandomNum(4,2) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_02
+ ~RandomNum(4,3) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_03
+ ~RandomNum(4,4) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_04
+ ~RandomNum(4,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_01
+ ~RandomNum(4,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_02
+ ~RandomNum(4,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_03
+ ~RandomNum(4,4) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + begin_flirt_smile_04
/* @6 */
+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @6 + paladin_too_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @6 + paladin_too_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @6 + paladin_too_03
/* @7 */
+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @7 + paladin_no_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @7 + paladin_no_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @7 + paladin_no_evil_03
/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_04
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_24
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_25
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_27

/* chapter 3 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_27

/* chapter 4 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_27

/* chapter 5 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_27

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27

/* after being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27

/* chapter 7 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_27

++ @10 + touch_hair

++ @11 + stain

++ @12 + bodyhurt_flirt

+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",0)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_01
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_02
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",2)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_03
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",3)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_04
+ ~RandomNum(2,1) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_05
+ ~RandomNum(2,2) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_06

+ ~RandomNum(3,1)~ + @14 + hairdo_flirt_01
+ ~RandomNum(3,2)~ + @14 + hairdo_flirt_02
+ ~RandomNum(3,3)~ + @14 + hairdo_flirt_03

+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",0)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_01
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",1)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_02
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",2)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_03
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",3)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_04
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",4)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_05
+ ~RandomNum(3,1) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_08
+ ~RandomNum(3,2) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_09
+ ~RandomNum(3,3) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_10

++ @16 + flirt_end
++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END


//----------------------------------------------------------------------

IF ~%BGT_VAR% IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) !Detect([ENEMY])
!TimeOfDay(Night)
OR(5)
Alignment(Player2,MASK_EVIL)
Alignment(Player3,MASK_EVIL)
Alignment(Player4,MASK_EVIL)
Alignment(Player5,MASK_EVIL)
Alignment(Player6,MASK_EVIL)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN ajantisflirts_begin_03
SAY @0
+ ~RandomNum(3,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_03
+ ~GlobalGT("X#AjantisLoveTalk","GLOBAL",12) Global("X#AjantisRomanceQueenOfBeauty","GLOBAL",0)~ + @2 + queen_of_beauty
/* @3 */
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3 + wounded_70_flirt
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_flirt
+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_flirt
+ ~RandomNum(2,1)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_01_flirt
+ ~RandomNum(2,2)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_02_flirt
+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_flirt
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_flirt
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_flirt
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_flirt
++ @4 + look_flirt
+ ~RandomNum(4,1) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_01
+ ~RandomNum(4,2) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_02
+ ~RandomNum(4,3) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_03
+ ~RandomNum(4,4) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_04
+ ~RandomNum(4,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_01
+ ~RandomNum(4,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_02
+ ~RandomNum(4,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_03
+ ~RandomNum(4,4) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + begin_flirt_smile_04

/* @6 */
+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @6 + paladin_evil_in_group_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @6 + paladin_evil_in_group_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @6 + paladin_evil_in_group_03
/* @7 */
+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @7 + paladin_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @7 + paladin_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @7 + paladin_evil_03
/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_04
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_31

/* chapter 3 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_31

/* chapter 4 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_31

/* chapter 5 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_31

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31

/* after being arrested */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31

/* chapter 7 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_31

++ @10 + touch_hair

++ @11 + stain

++ @12 + bodyhurt_flirt

+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",0)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_01
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_02
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",2)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_03
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",3)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_04
+ ~RandomNum(2,1) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_05
+ ~RandomNum(2,2) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_06

+ ~RandomNum(3,1)~ + @14 + hairdo_flirt_01
+ ~RandomNum(3,2)~ + @14 + hairdo_flirt_02
+ ~RandomNum(3,3)~ + @14 + hairdo_flirt_03

+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",0)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_01
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",1)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_02
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",2)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_03
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",3)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_04
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",4)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_05
+ ~RandomNum(3,1) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_08
+ ~RandomNum(3,2) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_09
+ ~RandomNum(3,3) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_10

++ @16 + flirt_end
++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END


//-------------------------------------------------------------------------

IF ~%BGT_VAR% IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) !Detect([ENEMY])
TimeOfDay(Night)
OR(5)
Alignment(Player2,MASK_EVIL)
Alignment(Player3,MASK_EVIL)
Alignment(Player4,MASK_EVIL)
Alignment(Player5,MASK_EVIL)
Alignment(Player6,MASK_EVIL)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN ajantisflirts_begin_04
SAY @0
+ ~RandomNum(3,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_03
+ ~GlobalGT("X#AjantisLoveTalk","GLOBAL",12) Global("X#AjantisRomanceQueenOfBeauty","GLOBAL",0)~ + @2 + queen_of_beauty
/* @3 */
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3 + wounded_70_flirt
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_flirt
+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_flirt
+ ~RandomNum(2,1)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_03_flirt
+ ~RandomNum(2,2)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_04_flirt
+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_flirt
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_flirt
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_flirt
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_flirt
++ @4 + look_flirt
+ ~RandomNum(4,1) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_01
+ ~RandomNum(4,2) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_02
+ ~RandomNum(4,3) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_03
+ ~RandomNum(4,4) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_04
+ ~RandomNum(4,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_01
+ ~RandomNum(4,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_02
+ ~RandomNum(4,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_03
+ ~RandomNum(4,4) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + begin_flirt_smile_04
/* @6 */
+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @6 + paladin_evil_in_group_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @6 + paladin_evil_in_group_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @6 + paladin_evil_in_group_03
/* @7 */
+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @7 + paladin_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @7 + paladin_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @7 + paladin_evil_03
/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_04
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_31
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_27

/* chapter 3 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_27

/* chapter 4 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_27

/* chapter 5 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_27

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27

/* after being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27

/* chapter 7 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_27

++ @10 + touch_hair

++ @11 + stain

++ @12 + bodyhurt_flirt

+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",0)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_01
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_02
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",2)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_03
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",3)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_04
+ ~RandomNum(2,1) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_05
+ ~RandomNum(2,2) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_06

+ ~RandomNum(3,1)~ + @14 + hairdo_flirt_01
+ ~RandomNum(3,2)~ + @14 + hairdo_flirt_02
+ ~RandomNum(3,3)~ + @14 + hairdo_flirt_03

+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",0)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_01
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",1)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_02
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",2)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_03
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",3)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_04
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",4)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_05
+ ~RandomNum(3,1) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_08
+ ~RandomNum(3,2) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_09
+ ~RandomNum(3,3) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_10

++ @16 + flirt_end
++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END



//---------------------------------------------------------------------

IF ~%BGT_VAR% IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) !Detect([ENEMY])
!TimeOfDay(Night)
!Alignment(Player2,MASK_EVIL)
!Alignment(Player3,MASK_EVIL)
!Alignment(Player4,MASK_EVIL)
!Alignment(Player5,MASK_EVIL)
!Alignment(Player6,MASK_EVIL)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN ajantisflirts_begin_05
SAY @0
+ ~RandomNum(3,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_03
+ ~GlobalGT("X#AjantisLoveTalk","GLOBAL",12) Global("X#AjantisRomanceQueenOfBeauty","GLOBAL",0)~ + @2 + queen_of_beauty
/* @3 */
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3 + wounded_70_flirt
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_flirt
+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_flirt
+ ~RandomNum(2,1)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_01_flirt
+ ~RandomNum(2,2)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_02_flirt
+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_flirt
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_flirt
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_flirt
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_flirt
++ @4 + look_flirt
+ ~RandomNum(4,1) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_01
+ ~RandomNum(4,2) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_02
+ ~RandomNum(4,3) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_03
+ ~RandomNum(4,4) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_04
+ ~RandomNum(4,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_01
+ ~RandomNum(4,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_02
+ ~RandomNum(4,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_03
+ ~RandomNum(4,4) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + begin_flirt_smile_04
/* @6 */
+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @6 + paladin_too_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @6 + paladin_too_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @6 + paladin_too_03
/* @7 */
+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @7 + paladin_no_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @7 + paladin_no_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @7 + paladin_no_evil_03
/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_04
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_24
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_25
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_32

/* chapter 3 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_32

/* chapter 4 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_32

/* chapter 5 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* after being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* chapter 7 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_32

++ @10 + touch_hair

++ @11 + stain

++ @12 + bodyhurt_flirt

+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",0)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_01
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_02
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",2)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_03
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",3)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_04
+ ~RandomNum(2,1) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_05
+ ~RandomNum(2,2) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_06

+ ~RandomNum(3,1)~ + @14 + hairdo_flirt_01
+ ~RandomNum(3,2)~ + @14 + hairdo_flirt_02
+ ~RandomNum(3,3)~ + @14 + hairdo_flirt_03

+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",0)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_01
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",1)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_02
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",2)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_03
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",3)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_04
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",4)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_05
+ ~RandomNum(3,1) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_08
+ ~RandomNum(3,2) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_09
+ ~RandomNum(3,3) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_10

++ @16 + flirt_end
++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END


//--------------------------------------------------------------------

IF ~%BGT_VAR% IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) !Detect([ENEMY])
TimeOfDay(Night)
!Alignment(Player2,MASK_EVIL)
!Alignment(Player3,MASK_EVIL)
!Alignment(Player4,MASK_EVIL)
!Alignment(Player5,MASK_EVIL)
!Alignment(Player6,MASK_EVIL)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN ajantisflirts_begin_06
SAY @0
+ ~RandomNum(3,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_03
+ ~GlobalGT("X#AjantisLoveTalk","GLOBAL",12) Global("X#AjantisRomanceQueenOfBeauty","GLOBAL",0)~ + @2 + queen_of_beauty
/* @3 */
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3 + wounded_70_flirt
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_flirt
+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_flirt
+ ~RandomNum(2,1)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_03_flirt
+ ~RandomNum(2,2)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_04_flirt
+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_flirt
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_flirt
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_flirt
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_flirt
++ @4 + look_flirt
+ ~RandomNum(4,1) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_01
+ ~RandomNum(4,2) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_02
+ ~RandomNum(4,3) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_03
+ ~RandomNum(4,4) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_04
+ ~RandomNum(4,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_01
+ ~RandomNum(4,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_02
+ ~RandomNum(4,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_03
+ ~RandomNum(4,4) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + begin_flirt_smile_04
/* @6 */
+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @6 + paladin_too_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @6 + paladin_too_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @6 + paladin_too_03
/* @7 */
+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @7 + paladin_no_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @7 + paladin_no_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @7 + paladin_no_evil_03
/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_04
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_24
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_25
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_32

/* chapter 3 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_32

/* chapter 4 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_32

/* chapter 5 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* after being arrested */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* chapter 7 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_32

++ @10 + touch_hair

++ @11 + stain

++ @12 + bodyhurt_flirt

+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",0)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_01
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_02
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",2)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_03
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",3)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_04
+ ~RandomNum(2,1) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_05
+ ~RandomNum(2,2) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_06

+ ~RandomNum(3,1)~ + @14 + hairdo_flirt_01
+ ~RandomNum(3,2)~ + @14 + hairdo_flirt_02
+ ~RandomNum(3,3)~ + @14 + hairdo_flirt_03

+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",0)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_01
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",1)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_02
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",2)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_03
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",3)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_04
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",4)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_05
+ ~RandomNum(3,1) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_08
+ ~RandomNum(3,2) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_09
+ ~RandomNum(3,3) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_10

++ @16 + flirt_end
++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END



//---------------------------------------------------------------------

IF ~%BGT_VAR% IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) !Detect([ENEMY])
!TimeOfDay(Night)
OR(5)
Alignment(Player2,MASK_EVIL)
Alignment(Player3,MASK_EVIL)
Alignment(Player4,MASK_EVIL)
Alignment(Player5,MASK_EVIL)
Alignment(Player6,MASK_EVIL)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN ajantisflirts_begin_07
SAY @0
+ ~RandomNum(3,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_03
+ ~GlobalGT("X#AjantisLoveTalk","GLOBAL",12) Global("X#AjantisRomanceQueenOfBeauty","GLOBAL",0)~ + @2 + queen_of_beauty
/* @3 */
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3 + wounded_70_flirt
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_flirt
+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_flirt
+ ~RandomNum(2,1)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_01_flirt
+ ~RandomNum(2,2)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_02_flirt
+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_flirt
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_flirt
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_flirt
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_flirt
++ @4 + look_flirt
+ ~RandomNum(4,1) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_01
+ ~RandomNum(4,2) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_02
+ ~RandomNum(4,3) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_03
+ ~RandomNum(4,4) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_04
+ ~RandomNum(4,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_01
+ ~RandomNum(4,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_02
+ ~RandomNum(4,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_03
+ ~RandomNum(4,4) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + begin_flirt_smile_04
/* @6 */
+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @6 + paladin_evil_in_group_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @6 + paladin_evil_in_group_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @6 + paladin_evil_in_group_03
/* @7 */
+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @7 + paladin_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @7 + paladin_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @7 + paladin_evil_03
/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_04
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_31
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_32

/* chapter 3 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_32

/* chapter 4 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_32

/* chapter 5 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_32


/* chapter 6 */
/* before being arrested */

+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18

+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20

+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20

+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31

+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32


/* after being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* chapter 7 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_32

++ @10 + touch_hair

++ @11 + stain

++ @12 + bodyhurt_flirt

+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",0)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_01
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_02
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",2)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_03
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",3)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_04
+ ~RandomNum(2,1) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_05
+ ~RandomNum(2,2) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_06

+ ~RandomNum(3,1)~ + @14 + hairdo_flirt_01
+ ~RandomNum(3,2)~ + @14 + hairdo_flirt_02
+ ~RandomNum(3,3)~ + @14 + hairdo_flirt_03

+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",0)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_01
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",1)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_02
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",2)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_03
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",3)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_04
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",4)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_05
+ ~RandomNum(3,1) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_08
+ ~RandomNum(3,2) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_09
+ ~RandomNum(3,3) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_10

++ @16 + flirt_end
++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END



//--------------------------------------------------------------------

IF ~%BGT_VAR% IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1) Global("X#AjantisRomanceActive","GLOBAL",1) !Detect([ENEMY])
TimeOfDay(Night)
OR(5)
Alignment(Player2,MASK_EVIL)
Alignment(Player3,MASK_EVIL)
Alignment(Player4,MASK_EVIL)
Alignment(Player5,MASK_EVIL)
Alignment(Player6,MASK_EVIL)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN ajantisflirts_begin_08
SAY @0
+ ~RandomNum(3,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @1 + flattered_flirt_03
+ ~GlobalGT("X#AjantisLoveTalk","GLOBAL",12) Global("X#AjantisRomanceQueenOfBeauty","GLOBAL",0)~ + @2 + queen_of_beauty
/* @3 */
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",70) HPPercentGT("ajantis",49)~ + @3 + wounded_70_flirt
+ ~!StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_flirt
+ ~StateCheck("ajantis",STATE_POISONED) HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_flirt
+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_flirt
+ ~RandomNum(2,1)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_03_flirt
+ ~RandomNum(2,2)
CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_04_flirt
+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_flirt
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_flirt
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_flirt
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_flirt
++ @4 + look_flirt
+ ~RandomNum(4,1) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_01
+ ~RandomNum(4,2) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_02
+ ~RandomNum(4,3) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_03
+ ~RandomNum(4,4) GlobalLT("X#AjantisLoveTalk","GLOBAL",26)~ + @5 + begin_flirt_smile_04
+ ~RandomNum(4,1) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_01
+ ~RandomNum(4,2) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_02
+ ~RandomNum(4,3) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + flirt_smile_03
+ ~RandomNum(4,4) GlobalGT("X#AjantisLoveTalk","GLOBAL",25)~ + @5 + begin_flirt_smile_04
/* @6 */
+ ~RandomNum(3,1) Class(Player1,PALADIN)~ + @6 + paladin_evil_in_group_01
+ ~RandomNum(3,2) Class(Player1,PALADIN)~ + @6 + paladin_evil_in_group_02
+ ~RandomNum(3,3) Class(Player1,PALADIN)~ + @6 + paladin_evil_in_group_03
/* @7 */
+ ~RandomNum(3,1) !Class(Player1,PALADIN)~ + @7 + paladin_evil_01
+ ~RandomNum(3,2) !Class(Player1,PALADIN)~ + @7 + paladin_evil_02
+ ~RandomNum(3,3) !Class(Player1,PALADIN)~ + @7 + paladin_evil_03
/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_04
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_31
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_32

/* chapter 3 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_32

/* chapter 4 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_32

/* chapter 5 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* after being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* chapter 7 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_32

++ @10 + touch_hair

++ @11 + stain

++ @12 + bodyhurt_flirt

+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",0)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_01
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_02
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",2)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_03
+ ~Global("X#AjantisSurroundingsFlirt","GLOBAL",3)~ + @13 DO ~IncrementGlobal("X#AjantisSurroundingsFlirt","GLOBAL",1)~ + surroundings_04
+ ~RandomNum(2,1) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_05
+ ~RandomNum(2,2) Global("X#AjantisSurroundingsFlirt","GLOBAL",4)~ + @13 + surroundings_06

+ ~RandomNum(3,1)~ + @14 + hairdo_flirt_01
+ ~RandomNum(3,2)~ + @14 + hairdo_flirt_02
+ ~RandomNum(3,3)~ + @14 + hairdo_flirt_03

+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",0)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_01
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",1)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_02
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",2)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_03
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",3)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_04
+ ~Global("X#AjantisDropItemsFlirt","GLOBAL",4)~ + @15 DO ~IncrementGlobal("X#AjantisDropItemsFlirt","GLOBAL",1)~ + drop_item_flirt_05
+ ~RandomNum(3,1) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_08
+ ~RandomNum(3,2) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_09
+ ~RandomNum(3,3) Global("X#AjantisDropItemsFlirt","GLOBAL",5)~ + @15 + drop_item_flirt_10

++ @16 + flirt_end
++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END


//###################################################################

/* engaged */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
!TimeOfDay(Night)
!Alignment(Player2,MASK_EVIL)
!Alignment(Player3,MASK_EVIL)
!Alignment(Player4,MASK_EVIL)
!Alignment(Player5,MASK_EVIL)
!Alignment(Player6,MASK_EVIL)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN ajantisflirts_01
SAY @18
+ ~Global("X#AjantisRomanceThinking","GLOBAL",2) Global("X#AjantisRomanceBhaalFlirt","GLOBAL",0)~ + @19 + bhaal_decision
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @20 + flirt_necklace
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @21 + flirt_necklace_02
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @22 + flirt_ring
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @23 + flirt_ring_02

/* @3 */

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3 + wounded_70_engaged
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_engaged

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_engaged
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_engaged

+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_engaged

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_01_engaged
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_02_engaged

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_engaged
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_engaged
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_engaged
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_engaged

/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_02
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_24
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_25

/* chapter 3 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_25

/* chapter 4 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_25

/* chapter 5 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_25

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25

/* after being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25

/* chapter 7 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_25

++ @4 + look

+ ~RandomNum(4,1)~ + @5 + smile_01
+ ~RandomNum(4,2)~ + @5 + smile_02
+ ~RandomNum(4,3)~ + @5 + smile_03
+ ~RandomNum(4,4)~ + @5 + smile_04

++ @24 + kiss

++ @25 + hug

+ ~RandomNum(3,1)~ + @26 + hand_holding_01
+ ~RandomNum(3,2)~ + @26 + hand_holding_02
+ ~RandomNum(3,3)~ + @26 + hand_holding_03

+ ~RandomNum(3,1)~ + @27 + loveyou_01
+ ~RandomNum(3,2)~ + @27 + loveyou_02
+ ~RandomNum(3,3)~ + @27 + loveyou_03

++ @28 + bodyhurt

+ ~Global("X#AjantisRomanceFamilyInsult","GLOBAL",1) Global("X#AjantisNameFlirt","GLOBAL",0)~ + @29 DO ~SetGlobal("X#AjantisNameFlirt","GLOBAL",1)~ + lady_ilvastarr_insult

+ ~RandomNum(3,1) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_01
+ ~RandomNum(3,2) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_02
+ ~RandomNum(3,3) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_03

+ ~RandomNum(3,1) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_03

+ ~RandomNum(3,1)~ + @14 + hairdo_01
+ ~RandomNum(3,2)~ + @14 + hairdo_02
+ ~RandomNum(3,3)~ + @14 + hairdo_03

++ @30 + ajantis_break_up

++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END



//-----------------------------------------------
/* engaged */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
TimeOfDay(Night)
!Alignment(Player2,MASK_EVIL)
!Alignment(Player3,MASK_EVIL)
!Alignment(Player4,MASK_EVIL)
!Alignment(Player5,MASK_EVIL)
!Alignment(Player6,MASK_EVIL)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN ajantisflirts
SAY @18
+ ~Global("X#AjantisRomanceThinking","GLOBAL",2) Global("X#AjantisRomanceBhaalFlirt","GLOBAL",0)~ + @19 + bhaal_decision
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @20 + flirt_necklace
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @21 + flirt_necklace_02
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @22 + flirt_ring
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @23 + flirt_ring_02

/* @3 */

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3 + wounded_70_engaged
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_engaged

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_engaged
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_engaged

+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_engaged

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_03_engaged
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_04_engaged

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_engaged
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_engaged
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_engaged
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_engaged

/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_02
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_24
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_25
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_27

/* chapter 3 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_27

/* chapter 4 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_27

/* chapter 5 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_27

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27

/* after being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27

/* chapter 7 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_27

++ @4 + look

+ ~RandomNum(4,1)~ + @5 + smile_01
+ ~RandomNum(4,2)~ + @5 + smile_02
+ ~RandomNum(4,3)~ + @5 + smile_03
+ ~RandomNum(4,4)~ + @5 + smile_04

++ @24 + kiss

++ @25 + hug

+ ~RandomNum(3,1)~ + @26 + hand_holding_01
+ ~RandomNum(3,2)~ + @26 + hand_holding_02
+ ~RandomNum(3,3)~ + @26 + hand_holding_03

+ ~RandomNum(3,1)~ + @27 + loveyou_01
+ ~RandomNum(3,2)~ + @27 + loveyou_02
+ ~RandomNum(3,3)~ + @27 + loveyou_03

++ @28 + bodyhurt

+ ~Global("X#AjantisRomanceFamilyInsult","GLOBAL",1) Global("X#AjantisNameFlirt","GLOBAL",0)~ + @29 DO ~SetGlobal("X#AjantisNameFlirt","GLOBAL",1)~ + lady_ilvastarr_insult

+ ~RandomNum(3,1) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_01
+ ~RandomNum(3,2) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_02
+ ~RandomNum(3,3) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_03

+ ~RandomNum(3,1) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_03

+ ~RandomNum(3,1)~ + @14 + hairdo_01
+ ~RandomNum(3,2)~ + @14 + hairdo_02
+ ~RandomNum(3,3)~ + @14 + hairdo_03

++ @30 + ajantis_break_up

++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END


//-----------------------------------------------------
/* engaged */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
!TimeOfDay(Night)
OR(5)
Alignment(Player2,MASK_EVIL)
Alignment(Player3,MASK_EVIL)
Alignment(Player4,MASK_EVIL)
Alignment(Player5,MASK_EVIL)
Alignment(Player6,MASK_EVIL)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN ajantisflirts
SAY @18
+ ~Global("X#AjantisRomanceThinking","GLOBAL",2) Global("X#AjantisRomanceBhaalFlirt","GLOBAL",0)~ + @19 + bhaal_decision
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @20 + flirt_necklace
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @21 + flirt_necklace_02
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @22 + flirt_ring
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @23 + flirt_ring_02

/* @3 */

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3 + wounded_70_engaged
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_engaged

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_engaged
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_engaged

+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_engaged

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_01_engaged
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_02_engaged

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_engaged
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_engaged
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_engaged
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_engaged

/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_02
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_31

/* chapter 3 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_31

/* chapter 4 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_31

/* chapter 5 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_31

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31

/* after being arrested */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31

/* chapter 7 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_31

++ @4 + look

+ ~RandomNum(4,1)~ + @5 + smile_01
+ ~RandomNum(4,2)~ + @5 + smile_02
+ ~RandomNum(4,3)~ + @5 + smile_03
+ ~RandomNum(4,4)~ + @5 + smile_04

++ @24 + kiss

++ @25 + hug

+ ~RandomNum(3,1)~ + @26 + hand_holding_01
+ ~RandomNum(3,2)~ + @26 + hand_holding_02
+ ~RandomNum(3,3)~ + @26 + hand_holding_03

+ ~RandomNum(3,1)~ + @27 + loveyou_01
+ ~RandomNum(3,2)~ + @27 + loveyou_02
+ ~RandomNum(3,3)~ + @27 + loveyou_03

++ @28 + bodyhurt

+ ~Global("X#AjantisRomanceFamilyInsult","GLOBAL",1) Global("X#AjantisNameFlirt","GLOBAL",0)~ + @29 DO ~SetGlobal("X#AjantisNameFlirt","GLOBAL",1)~ + lady_ilvastarr_insult

+ ~RandomNum(3,1) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_01
+ ~RandomNum(3,2) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_02
+ ~RandomNum(3,3) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_03

+ ~RandomNum(3,1) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_03

+ ~RandomNum(3,1)~ + @14 + hairdo_01
+ ~RandomNum(3,2)~ + @14 + hairdo_02
+ ~RandomNum(3,3)~ + @14 + hairdo_03

++ @30 + ajantis_break_up

++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END


//-----------------------------------------------
/* engaged */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
TimeOfDay(Night)
OR(5)
Alignment(Player2,MASK_EVIL)
Alignment(Player3,MASK_EVIL)
Alignment(Player4,MASK_EVIL)
Alignment(Player5,MASK_EVIL)
Alignment(Player6,MASK_EVIL)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN ajantisflirts
SAY @18
+ ~Global("X#AjantisRomanceThinking","GLOBAL",2) Global("X#AjantisRomanceBhaalFlirt","GLOBAL",0)~ + @19 + bhaal_decision
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @20 + flirt_necklace
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @21 + flirt_necklace_02
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @22 + flirt_ring
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @23 + flirt_ring_02

/* @3 */

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3 + wounded_70_engaged
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_engaged

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_engaged
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_engaged

+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_engaged
+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_03_engaged
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_04_engaged

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_engaged
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_engaged
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_engaged
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_engaged

/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_02
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04
/* @9 */
/* chapter 2 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_31
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_27

/* chapter 3 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_27

/* chapter 4 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_27

/* chapter 5 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_27

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27

/* after being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27

/* chapter 7 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_27

++ @4 + look

+ ~RandomNum(4,1)~ + @5 + smile_01
+ ~RandomNum(4,2)~ + @5 + smile_02
+ ~RandomNum(4,3)~ + @5 + smile_03
+ ~RandomNum(4,4)~ + @5 + smile_04

++ @24 + kiss

++ @25 + hug

+ ~RandomNum(3,1)~ + @26 + hand_holding_01
+ ~RandomNum(3,2)~ + @26 + hand_holding_02
+ ~RandomNum(3,3)~ + @26 + hand_holding_03

+ ~RandomNum(3,1)~ + @27 + loveyou_01
+ ~RandomNum(3,2)~ + @27 + loveyou_02
+ ~RandomNum(3,3)~ + @27 + loveyou_03

++ @28 + bodyhurt

+ ~Global("X#AjantisRomanceFamilyInsult","GLOBAL",1) Global("X#AjantisNameFlirt","GLOBAL",0)~ + @29 DO ~SetGlobal("X#AjantisNameFlirt","GLOBAL",1)~ + lady_ilvastarr_insult

+ ~RandomNum(3,1) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_01
+ ~RandomNum(3,2) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_02
+ ~RandomNum(3,3) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_03

+ ~RandomNum(3,1) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_03

+ ~RandomNum(3,1)~ + @14 + hairdo_01
+ ~RandomNum(3,2)~ + @14 + hairdo_02
+ ~RandomNum(3,3)~ + @14 + hairdo_03

++ @30 + ajantis_break_up

++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END


//-----------------------------------------------
/* engaged */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
!TimeOfDay(Night)
!Alignment(Player2,MASK_EVIL)
!Alignment(Player3,MASK_EVIL)
!Alignment(Player4,MASK_EVIL)
!Alignment(Player5,MASK_EVIL)
!Alignment(Player6,MASK_EVIL)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN ajantisflirts
SAY @18
+ ~Global("X#AjantisRomanceThinking","GLOBAL",2) Global("X#AjantisRomanceBhaalFlirt","GLOBAL",0)~ + @19 + bhaal_decision
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @20 + flirt_necklace
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @21 + flirt_necklace_02
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @22 + flirt_ring
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @23 + flirt_ring_02

/* @3 */

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3 + wounded_70_engaged
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_engaged

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_engaged
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_engaged

+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_engaged
+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_01_engaged
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_02_engaged

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_engaged
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_engaged
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_engaged
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_engaged

/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_02
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_24
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_25
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_32

/* chapter 3 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_32

/* chapter 4 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_32

/* chapter 5 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* after being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* chapter 7 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_32

++ @4 + look

+ ~RandomNum(4,1)~ + @5 + smile_01
+ ~RandomNum(4,2)~ + @5 + smile_02
+ ~RandomNum(4,3)~ + @5 + smile_03
+ ~RandomNum(4,4)~ + @5 + smile_04

++ @24 + kiss

++ @25 + hug

+ ~RandomNum(3,1)~ + @26 + hand_holding_01
+ ~RandomNum(3,2)~ + @26 + hand_holding_02
+ ~RandomNum(3,3)~ + @26 + hand_holding_03

+ ~RandomNum(3,1)~ + @27 + loveyou_01
+ ~RandomNum(3,2)~ + @27 + loveyou_02
+ ~RandomNum(3,3)~ + @27 + loveyou_03

++ @28 + bodyhurt

+ ~Global("X#AjantisRomanceFamilyInsult","GLOBAL",1) Global("X#AjantisNameFlirt","GLOBAL",0)~ + @29 DO ~SetGlobal("X#AjantisNameFlirt","GLOBAL",1)~ + lady_ilvastarr_insult

+ ~RandomNum(3,1) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_01
+ ~RandomNum(3,2) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_02
+ ~RandomNum(3,3) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_03

+ ~RandomNum(3,1) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_03

+ ~RandomNum(3,1)~ + @14 + hairdo_01
+ ~RandomNum(3,2)~ + @14 + hairdo_02
+ ~RandomNum(3,3)~ + @14 + hairdo_03

++ @30 + ajantis_break_up

++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END


//-----------------------------------------------
/* engaged */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
TimeOfDay(Night)
!Alignment(Player2,MASK_EVIL)
!Alignment(Player3,MASK_EVIL)
!Alignment(Player4,MASK_EVIL)
!Alignment(Player5,MASK_EVIL)
!Alignment(Player6,MASK_EVIL)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN ajantisflirts
SAY @18
+ ~Global("X#AjantisRomanceThinking","GLOBAL",2) Global("X#AjantisRomanceBhaalFlirt","GLOBAL",0)~ + @19 + bhaal_decision
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @20 + flirt_necklace
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @21 + flirt_necklace_02
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @22 + flirt_ring
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @23 + flirt_ring_02

/* @3 */

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3 + wounded_70_engaged
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_engaged

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_engaged
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_engaged

+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_engaged
+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_03_engaged
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_04_engaged

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_engaged
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_engaged
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_engaged
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_engaged

/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_02
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_24
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_25
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_32

/* chapter 3 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_32

/* chapter 4 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_32

/* chapter 5 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* after being arrested */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* chapter 7 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_32

++ @4 + look

+ ~RandomNum(4,1)~ + @5 + smile_01
+ ~RandomNum(4,2)~ + @5 + smile_02
+ ~RandomNum(4,3)~ + @5 + smile_03
+ ~RandomNum(4,4)~ + @5 + smile_04

++ @24 + kiss

++ @25 + hug

+ ~RandomNum(3,1)~ + @26 + hand_holding_01
+ ~RandomNum(3,2)~ + @26 + hand_holding_02
+ ~RandomNum(3,3)~ + @26 + hand_holding_03

+ ~RandomNum(3,1)~ + @27 + loveyou_01
+ ~RandomNum(3,2)~ + @27 + loveyou_02
+ ~RandomNum(3,3)~ + @27 + loveyou_03

++ @28 + bodyhurt

+ ~Global("X#AjantisRomanceFamilyInsult","GLOBAL",1) Global("X#AjantisNameFlirt","GLOBAL",0)~ + @29 DO ~SetGlobal("X#AjantisNameFlirt","GLOBAL",1)~ + lady_ilvastarr_insult

+ ~RandomNum(3,1) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_01
+ ~RandomNum(3,2) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_02
+ ~RandomNum(3,3) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_03

+ ~RandomNum(3,1) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_03

+ ~RandomNum(3,1)~ + @14 + hairdo_01
+ ~RandomNum(3,2)~ + @14 + hairdo_02
+ ~RandomNum(3,3)~ + @14 + hairdo_03

++ @30 + ajantis_break_up

++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END


//-----------------------------------------------
/* engaged */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
!TimeOfDay(Night)
OR(5)
Alignment(Player2,MASK_EVIL)
Alignment(Player3,MASK_EVIL)
Alignment(Player4,MASK_EVIL)
Alignment(Player5,MASK_EVIL)
Alignment(Player6,MASK_EVIL)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN ajantisflirts
SAY @18
+ ~Global("X#AjantisRomanceThinking","GLOBAL",2) Global("X#AjantisRomanceBhaalFlirt","GLOBAL",0)~ + @19 + bhaal_decision
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @20 + flirt_necklace
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @21 + flirt_necklace_02
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @22 + flirt_ring
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @23 + flirt_ring_02

/* @3 */

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3 + wounded_70_engaged
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_engaged

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_engaged
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_engaged

+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_engaged

+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_01_engaged
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_02_engaged

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_engaged
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_engaged
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_engaged
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_engaged

/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_02
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_31
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_32

/* chapter 3 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_32

/* chapter 4 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_32

/* chapter 5 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* after being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* chapter 7 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_32

++ @4 + look

+ ~RandomNum(4,1)~ + @5 + smile_01
+ ~RandomNum(4,2)~ + @5 + smile_02
+ ~RandomNum(4,3)~ + @5 + smile_03
+ ~RandomNum(4,4)~ + @5 + smile_04

++ @24 + kiss

++ @25 + hug

+ ~RandomNum(3,1)~ + @26 + hand_holding_01
+ ~RandomNum(3,2)~ + @26 + hand_holding_02
+ ~RandomNum(3,3)~ + @26 + hand_holding_03

+ ~RandomNum(3,1)~ + @27 + loveyou_01
+ ~RandomNum(3,2)~ + @27 + loveyou_02
+ ~RandomNum(3,3)~ + @27 + loveyou_03

++ @28 + bodyhurt

+ ~Global("X#AjantisRomanceFamilyInsult","GLOBAL",1) Global("X#AjantisNameFlirt","GLOBAL",0)~ + @29 DO ~SetGlobal("X#AjantisNameFlirt","GLOBAL",1)~ + lady_ilvastarr_insult

+ ~RandomNum(3,1) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_01
+ ~RandomNum(3,2) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_02
+ ~RandomNum(3,3) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_03

+ ~RandomNum(3,1) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_03

+ ~RandomNum(3,1)~ + @14 + hairdo_01
+ ~RandomNum(3,2)~ + @14 + hairdo_02
+ ~RandomNum(3,3)~ + @14 + hairdo_03

++ @30 + ajantis_break_up

++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END


//-----------------------------------------------
/* engaged */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) !Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
TimeOfDay(Night)
OR(5)
Alignment(Player2,MASK_EVIL)
Alignment(Player3,MASK_EVIL)
Alignment(Player4,MASK_EVIL)
Alignment(Player5,MASK_EVIL)
Alignment(Player6,MASK_EVIL)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN ajantisflirts
SAY @18
+ ~Global("X#AjantisRomanceThinking","GLOBAL",2) Global("X#AjantisRomanceBhaalFlirt","GLOBAL",0)~ + @19 + bhaal_decision
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @20 + flirt_necklace
+ ~HasItem("X#AJRONE",Player1) Global("X#AjantisFlirtNecklace","GLOBAL",0)~
+ @21 + flirt_necklace_02
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @22 + flirt_ring
+ ~HasItem("X#AJRORI",Player1) Global("X#AjantisFlirtRing","GLOBAL",0)~
+ @23 + flirt_ring_02

/* @3 */

+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",70)
HPPercentGT("ajantis",49)~ + @3 + wounded_70_engaged
+ ~!StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_engaged

+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentGT("ajantis",49)~ + @3 + wounded_poisoned_engaged
+ ~StateCheck("ajantis",STATE_POISONED)
HPPercentLT("ajantis",50)~ + @3 + wounded_50_poisoned_engaged

+ ~HPPercentGT("ajantis",69)
OR(3)
StateCheck("ajantis",STATE_DISEASED)
StateCheck("ajantis",STATE_SLOWED)
StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + state_spell_engaged
+ ~RandomNum(2,1) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_03_engaged
+ ~RandomNum(2,2) CheckStatGT("ajantis",6,FATIGUE)
HPPercentGT("ajantis",69)
!StateCheck("ajantis",STATE_POISONED)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)~ + @3 + tired_04_engaged

+ ~RandomNum(4,1)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_01_engaged
+ ~RandomNum(4,2)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_02_engaged
+ ~RandomNum(4,3)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_03_engaged
+ ~RandomNum(4,4)
HPPercentGT("ajantis",69)
CheckStatLT("ajantis",7,FATIGUE)
!StateCheck("ajantis",STATE_DISEASED)
!StateCheck("ajantis",STATE_SLOWED)
!StateCheck("ajantis",STATE_BLIND)
!StateCheck("ajantis",STATE_POISONED)~ + @3 + how_04_engaged

/* @8 */

+ ~RandomNum(4,1)~ + @8 + safer_01
+ ~RandomNum(4,2)~ + @8 + safer_02
+ ~RandomNum(4,3)~ + @8 + safer_03
+ ~RandomNum(4,4)~ + @8 + safer_04

/* @9 */
/* chapter 2 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_31
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_32

/* chapter 3 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_32

/* chapter 4 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_32

/* chapter 5 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* after being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* chapter 7 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_32

++ @4 + look

+ ~RandomNum(4,1)~ + @5 + smile_01
+ ~RandomNum(4,2)~ + @5 + smile_02
+ ~RandomNum(4,3)~ + @5 + smile_03
+ ~RandomNum(4,4)~ + @5 + smile_04

++ @24 + kiss

++ @25 + hug

+ ~RandomNum(3,1)~ + @26 + hand_holding_01
+ ~RandomNum(3,2)~ + @26 + hand_holding_02
+ ~RandomNum(3,3)~ + @26 + hand_holding_03

+ ~RandomNum(3,1)~ + @27 + loveyou_01
+ ~RandomNum(3,2)~ + @27 + loveyou_02
+ ~RandomNum(3,3)~ + @27 + loveyou_03

++ @28 + bodyhurt

+ ~Global("X#AjantisRomanceFamilyInsult","GLOBAL",1) Global("X#AjantisNameFlirt","GLOBAL",0)~ + @29 DO ~SetGlobal("X#AjantisNameFlirt","GLOBAL",1)~ + lady_ilvastarr_insult

+ ~RandomNum(3,1) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_01
+ ~RandomNum(3,2) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_02
+ ~RandomNum(3,3) Global("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_03

+ ~RandomNum(3,1) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_01
+ ~RandomNum(3,2) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_02
+ ~RandomNum(3,3) GlobalGT("X#AjantisKnowBhaalTalk","GLOBAL",0)
OR(2)
Global("X#AjantisRomanceFamilyInsult","GLOBAL",0)
Global("X#AjantisNameFlirt","GLOBAL",1)~ + @29 + lady_ilvastarr_bhaal_03

+ ~RandomNum(3,1)~ + @14 + hairdo_01
+ ~RandomNum(3,2)~ + @14 + hairdo_02
+ ~RandomNum(3,3)~ + @14 + hairdo_03

++ @30 + ajantis_break_up

++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice

END




//###############################################################



/* Bhaal cycle */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
!TimeOfDay(Night)
!Alignment(Player2,MASK_EVIL)
!Alignment(Player3,MASK_EVIL)
!Alignment(Player4,MASK_EVIL)
!Alignment(Player5,MASK_EVIL)
!Alignment(Player6,MASK_EVIL)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN ajantisflirts_bhaal_01
SAY @31

++ @32 + bhaal_heritage
++ @4 + look_bhaal
++ @5 + bhaal_smile
++ @24 + kiss_bhaal
++ @25 + hug_01

/* @9 */
/* chapter 2 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_24
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_25

/* chapter 3 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_25

/* chapter 4 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_25

/* chapter 5 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_25

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25

/* after being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25

/* chapter 7 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_24
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_25


++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice
END

//-----------------------------------------------
/* Bhaal cycle */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
TimeOfDay(Night)
!Alignment(Player2,MASK_EVIL)
!Alignment(Player3,MASK_EVIL)
!Alignment(Player4,MASK_EVIL)
!Alignment(Player5,MASK_EVIL)
!Alignment(Player6,MASK_EVIL)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN ajantisflirts_bhaal_02
SAY @31

++ @32 + bhaal_heritage
++ @4 + look_bhaal
++ @5 + bhaal_smile
++ @24 + kiss_bhaal
++ @25 + hug_01

/* @9 */
/* chapter 2 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_24
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_25
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_26
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_27

/* chapter 3 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_27

/* chapter 4 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_27

/* chapter 5 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_27

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27

/* after being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27

/* chapter 7 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_24
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_25
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_27


++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice
END

//-----------------------------------------------------
/* Bhaal cycle */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
!TimeOfDay(Night)
OR(5)
Alignment(Player2,MASK_EVIL)
Alignment(Player3,MASK_EVIL)
Alignment(Player4,MASK_EVIL)
Alignment(Player5,MASK_EVIL)
Alignment(Player6,MASK_EVIL)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN ajantisflirts_bhaal_03
SAY @31

++ @32 + bhaal_heritage
++ @4 + look_bhaal
++ @5 + bhaal_smile
++ @24 + kiss_bhaal
++ @25 + hug_01

/* @9 */
/* chapter 2 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_31

/* chapter 3 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_31

/* chapter 4 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_31

/* chapter 5 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_31

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31

/* after being arrested */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31

/* chapter 7 */
+ ~RandomNum(4,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(4,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(4,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(4,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_31


++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice
END
//-----------------------------------------------
/* Bhaal cycle */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
TimeOfDay(Night)
OR(5)
Alignment(Player2,MASK_EVIL)
Alignment(Player3,MASK_EVIL)
Alignment(Player4,MASK_EVIL)
Alignment(Player5,MASK_EVIL)
Alignment(Player6,MASK_EVIL)
GlobalLT("X#AjantisRomanceBadDecision","GLOBAL",5)~ THEN BEGIN ajantisflirts_bhaal_04
SAY @31

++ @32 + bhaal_heritage
++ @4 + look_bhaal
++ @5 + bhaal_smile
++ @24 + kiss_bhaal
++ @25 + hug_01

/* @9 */
/* chapter 2 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_31
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_26
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_27

/* chapter 3 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_27

/* chapter 4 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_27

/* chapter 5 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_27

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27

/* after being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27

/* chapter 7 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_31
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_26
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_27


++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice
END

//-----------------------------------------------
/* Bhaal cycle */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
!TimeOfDay(Night)
!Alignment(Player2,MASK_EVIL)
!Alignment(Player3,MASK_EVIL)
!Alignment(Player4,MASK_EVIL)
!Alignment(Player5,MASK_EVIL)
!Alignment(Player6,MASK_EVIL)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN ajantisflirts_bhaal_05
SAY @31

++ @32 + bhaal_heritage
++ @4 + look_bhaal
++ @5 + bhaal_smile
++ @24 + kiss_bhaal
++ @25 + hug_01

/* @9 */
/* chapter 2 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_24
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_25
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_32

/* chapter 3 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_32

/* chapter 4 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_32

/* chapter 5 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* after being arrested */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* chapter 7 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_24
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_25
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_32


++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice
END

//-----------------------------------------------
/* Bhaal cycle */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
TimeOfDay(Night)
!Alignment(Player2,MASK_EVIL)
!Alignment(Player3,MASK_EVIL)
!Alignment(Player4,MASK_EVIL)
!Alignment(Player5,MASK_EVIL)
!Alignment(Player6,MASK_EVIL)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN ajantisflirts_bhaal_06
SAY @31

++ @32 + bhaal_heritage
++ @4 + look_bhaal
++ @5 + bhaal_smile
++ @24 + kiss_bhaal
++ @25 + hug_01

/* @9 */
/* chapter 2 */
+ ~RandomNum(9,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(9,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(9,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(9,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(9,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_24
+ ~RandomNum(9,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_25
+ ~RandomNum(9,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_26
+ ~RandomNum(9,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_27
+ ~RandomNum(9,9) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_32

/* chapter 3 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_32

/* chapter 4 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_32

/* chapter 5 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* after being arrested */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* chapter 7 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_24
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_25
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_32


++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice
END

//-----------------------------------------------
/* Bhaal cycle */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
!TimeOfDay(Night)
OR(5)
Alignment(Player2,MASK_EVIL)
Alignment(Player3,MASK_EVIL)
Alignment(Player4,MASK_EVIL)
Alignment(Player5,MASK_EVIL)
Alignment(Player6,MASK_EVIL)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN ajantisflirts_bhaal_07
SAY @31

++ @32 + bhaal_heritage
++ @4 + look_bhaal
++ @5 + bhaal_smile
++ @24 + kiss_bhaal
++ @25 + hug_01

/* @9 */
/* chapter 2 */
+ ~RandomNum(6,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(6,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(6,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(6,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(6,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_31
+ ~RandomNum(6,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_32

/* chapter 3 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_32

/* chapter 4 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_32

/* chapter 5 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* after being arrested */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* chapter 7 */
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_31
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_32

++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice
END

//-----------------------------------------------
/* Bhaal cycle */
IF ~IsGabber(Player1) Global("X#AjantisRomanceMatch","GLOBAL",1)
Global("X#AjantisRomanceActive","GLOBAL",2) Global("X#AjantisRomanceThinking","GLOBAL",1) !Detect([ENEMY])
TimeOfDay(Night)
OR(5)
Alignment(Player2,MASK_EVIL)
Alignment(Player3,MASK_EVIL)
Alignment(Player4,MASK_EVIL)
Alignment(Player5,MASK_EVIL)
Alignment(Player6,MASK_EVIL)
GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)~ THEN BEGIN ajantisflirts_bhaal_08
SAY @31

++ @32 + bhaal_heritage
++ @4 + look_bhaal
++ @5 + bhaal_smile
++ @24 + kiss_bhaal
++ @25 + hug_01

/* @9 */
/* chapter 2 */
+ ~RandomNum(8,1) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_01
+ ~RandomNum(8,2) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_02
+ ~RandomNum(8,3) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_03
+ ~RandomNum(8,4) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_04
+ ~RandomNum(8,5) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_31
+ ~RandomNum(8,6) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_26
+ ~RandomNum(8,7) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_27
+ ~RandomNum(8,8) Global("Chapter","GLOBAL",%tutu_chapter_2%)~ + @9 + suggestions_32

/* chapter 3 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_05
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_06
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_07
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_3%)~ + @9 + suggestions_32

/* chapter 4 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_08
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_09
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_10
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_4%)~ + @9 + suggestions_32

/* chapter 5 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_13
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_14
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_15
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_5%)~ + @9 + suggestions_32

/* chapter 6 */
/* before being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_18
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
!Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* after being arrested */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_19
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_20
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_6%)
Global("Arrested","GLOBAL",1)~ + @9 + suggestions_32

/* chapter 7 */
+ ~RandomNum(7,1) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_21
+ ~RandomNum(7,2) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_22
+ ~RandomNum(7,3) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_23
+ ~RandomNum(7,4) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_31
+ ~RandomNum(7,5) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_26
+ ~RandomNum(7,6) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_27
+ ~RandomNum(7,7) Global("Chapter","GLOBAL",%tutu_chapter_7%)~ + @9 + suggestions_32


++ @17 EXIT
+ ~%VoiceStrange%~ + @33 + AjantisVoice
END


//####################################################################

IF ~~ AjantisVoice
SAY @34
IF ~~ THEN DO ~SetName(@35)
SetPlayerSound(Myself,@36,0)
SetPlayerSound(Myself,@37,1)
SetPlayerSound(Myself,@38,2)
SetPlayerSound(Myself,@39,3)
SetPlayerSound(Myself,@40,4)
SetPlayerSound(Myself,@41,5)
SetPlayerSound(Myself,@42,6)
SetPlayerSound(Myself,@43,7)
SetPlayerSound(Myself,@44,8)
SetPlayerSound(Myself,@45,9)
SetPlayerSound(Myself,@45,10)
SetPlayerSound(Myself,@45,11)
SetPlayerSound(Myself,@45,12)
SetPlayerSound(Myself,@45,13)
SetPlayerSound(Myself,@46,18)
SetPlayerSound(Myself,@47,19)
SetPlayerSound(Myself,@48,20)
SetPlayerSound(Myself,@49,21)
SetPlayerSound(Myself,@50,22)
SetPlayerSound(Myself,@51,23)
SetPlayerSound(Myself,@52,24)
SetPlayerSound(Myself,@53,25)
SetPlayerSound(Myself,@54,26)
SetPlayerSound(Myself,@55,27)
SetPlayerSound(Myself,@56,28)
SetPlayerSound(Myself,@54,29)
SetPlayerSound(Myself,@55,30)
SetPlayerSound(Myself,@56,31)
SetPlayerSound(Myself,@57,32)
SetPlayerSound(Myself,@58,33)
SetPlayerSound(Myself,@59,34)
SetPlayerSound(Myself,@57,35)
SetPlayerSound(Myself,@58,36)
SetPlayerSound(Myself,@59,37)
SetPlayerSound(Myself,@57,38)
SetPlayerSound(Myself,@60,39)
SetPlayerSound(Myself,@61,40)
SetPlayerSound(Myself,@62,41)
SetPlayerSound(Myself,@63,42)
SetPlayerSound(Myself,@64,43)
SetPlayerSound(Myself,@65,44)
SetPlayerSound(Myself,@66,47)
SetPlayerSound(Myself,@67,50)
SetPlayerSound(Myself,@68,53)
SetPlayerSound(Myself,@69,54)
SetPlayerSound(Myself,@70,55)
SetPlayerSound(Myself,@71,58)
SetPlayerSound(Myself,@72,59)
SetPlayerSound(Myself,@54,62)
SetPlayerSound(Myself,@54,63)
SetPlayerSound(Myself,@55,64)
SetPlayerSound(Myself,@73,74)~ EXIT
END

IF ~~ THEN wounded_70_flirt
SAY @74
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50_flirt
SAY @75
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_poisoned_flirt
SAY @76
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50_poisoned_flirt
SAY @77
IF ~~ THEN EXIT
END

IF ~~ THEN state_spell_flirt
SAY @78
IF ~~ THEN EXIT
END

/* day */
IF ~~ THEN tired_01_flirt
SAY @79
IF ~~ THEN EXIT
END

IF ~~ THEN tired_02_flirt
SAY @80
IF ~~ THEN EXIT
END

/* night */
IF ~~ THEN tired_03_flirt
SAY @81
IF ~~ THEN EXIT
END

IF ~~ THEN tired_04_flirt
SAY @82
IF ~~ THEN EXIT
END

IF ~~ THEN how_01_flirt
SAY @83
IF ~~ THEN EXIT
END

IF ~~ THEN how_02_flirt
SAY @84
IF ~~ THEN EXIT
END

IF ~~ THEN how_03_flirt
SAY @85
IF ~~ THEN EXIT
END

IF ~~ THEN how_04_flirt
SAY @86
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_in_group_01
SAY @87
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_in_group_02
SAY @88
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_in_group_03
SAY @89
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_too_01
SAY @90
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_too_02
SAY @91
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_too_03
SAY @92
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_no_evil_01
SAY @93
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_no_evil_02
SAY @94
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_no_evil_03
SAY @95
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_01
SAY @96
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_02
SAY @97
IF ~~ THEN EXIT
END

IF ~~ THEN paladin_evil_03
SAY @98
IF ~~ THEN EXIT
END

IF ~~ THEN look_flirt
SAY @99
++ @100 + look_face_flirt
++ @101 + look_arms_flirt
++ @102 + look_hands_flirt
++ @103 + look_appearance_flirt
++ @104 EXIT
END

IF ~~ THEN look_face_flirt
SAY @105
IF ~RandomNum(3,1)~ THEN + look_flirt_11
IF ~RandomNum(3,2)~ THEN + look_flirt_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_arms_flirt
SAY @106
IF ~RandomNum(3,1)~ THEN + look_flirt_11
IF ~RandomNum(3,2)~ THEN + look_flirt_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_hands_flirt
SAY @107
IF ~RandomNum(3,1)~ THEN + look_flirt_11
IF ~RandomNum(3,2)~ THEN + look_flirt_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_appearance_flirt
SAY @108
IF ~RandomNum(3,1)~ THEN + look_flirt_11
IF ~RandomNum(3,2)~ THEN + look_flirt_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_flirt_11
SAY @109
IF ~~ THEN EXIT
END

IF ~~ THEN look_flirt_12
SAY @110
IF ~~ THEN EXIT
END

IF ~~ THEN look_flirt_13
SAY @111
IF ~~ THEN EXIT
END


IF ~~ THEN touch_hair
SAY @112
++ @113 + hair_forehead
++ @114 + hair_neck
++ @115 + hair_cheak
++ @116 EXIT
END

IF ~~ THEN hair_forehead
SAY @117
IF ~RandomNum(4,1)~ THEN + hair_forehead_01
IF ~RandomNum(4,2)~ THEN + hair_01
IF ~RandomNum(4,3)~ THEN + hair_02
IF ~RandomNum(4,4)~ THEN + hair_04
END

IF ~~ THEN hair_neck
SAY @117
IF ~RandomNum(4,1)~ THEN + hair_neck_01
IF ~RandomNum(4,2)~ THEN + hair_01
IF ~RandomNum(4,3)~ THEN + hair_02
IF ~RandomNum(4,4)~ THEN + hair_03
END

IF ~~ THEN hair_cheak
SAY @117
IF ~RandomNum(4,1)~ THEN + hair_cheak_01
IF ~RandomNum(4,2)~ THEN + hair_01
IF ~RandomNum(4,3)~ THEN + hair_02
IF ~RandomNum(4,4)~ THEN + hair_03
END

IF ~~ THEN hair_01
SAY @118
IF ~~ THEN EXIT
END

IF ~~ THEN hair_02
SAY @119
IF ~~ THEN EXIT
END

IF ~~ THEN hair_03
SAY @120
IF ~~ THEN EXIT
END

IF ~~ THEN hair_04
SAY @121
IF ~~ THEN EXIT
END

IF ~~ THEN hair_forehead_01
SAY @122
IF ~~ THEN EXIT
END

IF ~~ THEN hair_neck_01
SAY @123
IF ~~ THEN EXIT
END

IF ~~ THEN hair_cheak_01
SAY @124
IF ~~ THEN EXIT
END

IF ~~ THEN stain
SAY @125
+ ~RandomNum(3,1)~ + @126 + stain_breast_01
+ ~RandomNum(3,2)~ + @126 + stain_breast_02
+ ~RandomNum(3,3)~ + @126 + stain_breast_03
+ ~RandomNum(2,1)~ + @127 + stain_shoulder_01
+ ~RandomNum(2,2)~ + @127 + stain_shoulder_02
+ ~RandomNum(3,1)~ + @128 + stain_hip_01
+ ~RandomNum(3,2)~ + @128 + stain_hip_02
+ ~RandomNum(3,3)~ + @128 + stain_hip_03
++ @116 EXIT
END

IF ~~ THEN stain_breast_01
SAY @129
IF ~~ THEN EXIT
END

IF ~~ THEN stain_breast_02
SAY @130
IF ~~ THEN EXIT
END

IF ~~ THEN stain_breast_03
SAY @131
IF ~~ THEN EXIT
END

IF ~~ THEN stain_shoulder_01
SAY @132
IF ~~ THEN EXIT
END

IF ~~ THEN stain_shoulder_02
SAY @133
IF ~~ THEN EXIT
END

IF ~~ THEN stain_hip_01
SAY @134
IF ~~ THEN EXIT
END

IF ~~ THEN stain_hip_02
SAY @135
IF ~~ THEN EXIT
END

IF ~~ THEN stain_hip_03
SAY @136
IF ~~ THEN EXIT
END

/* smile */
IF ~~ THEN begin_flirt_smile_01
SAY @137
IF ~~ THEN EXIT
END

IF ~~ THEN begin_flirt_smile_02
SAY @138
IF ~~ THEN EXIT
END

IF ~~ THEN begin_flirt_smile_03
SAY @139
IF ~~ THEN EXIT
END

IF ~~ THEN begin_flirt_smile_04
SAY @140
IF ~~ THEN EXIT
END

IF ~~ THEN bodyhurt_flirt
SAY @141
+ ~RandomNum(3,1)~ + @142 + feet_treatment_01
+ ~RandomNum(3,2)~ + @142 + feet_treatment_02
+ ~RandomNum(3,3)~ + @142 + feet_treatment_03
+ ~RandomNum(3,1)~ + @143 + neck_treatment_01
+ ~RandomNum(3,2)~ + @143 + neck_treatment_02
+ ~RandomNum(3,3)~ + @143 + neck_treatment_03
++ @144 + back_treatment
++ @145 EXIT
END

IF ~~ THEN feet_treatment_01
SAY @146
+ ~RandomNum(4,1)~ + @147 + feet_massage_01
+ ~RandomNum(4,2)~ + @147 + feet_massage_02
+ ~RandomNum(4,3)~ + @147 + feet_massage_03
+ ~RandomNum(4,4)~ + @147 + massage
++ @148 EXIT
END

IF ~~ THEN feet_treatment_02
SAY @149
+ ~RandomNum(4,1)~ + @147 + feet_massage_01
+ ~RandomNum(4,2)~ + @147 + feet_massage_02
+ ~RandomNum(4,3)~ + @147 + feet_massage_03
+ ~RandomNum(4,4)~ + @147 + massage
++ @150 EXIT
END

IF ~~ THEN feet_treatment_03
SAY @151
+ ~RandomNum(4,1)~ + @152 + feet_massage_01
+ ~RandomNum(4,2)~ + @152 + feet_massage_02
+ ~RandomNum(4,3)~ + @152 + feet_massage_03
+ ~RandomNum(4,4)~ + @152 + massage
++ @153 EXIT
END

IF ~~ THEN feet_massage_01
SAY @154
IF ~~ THEN EXIT
END

IF ~~ THEN feet_massage_02
SAY @155
IF ~~ THEN EXIT
END

IF ~~ THEN feet_massage_03
SAY @156
IF ~~ THEN EXIT
END

IF ~~ THEN neck_treatment_01
SAY @157
+ ~RandomNum(4,1)~ + @158 + neck_massage_01
+ ~RandomNum(4,2)~ + @158 + neck_massage_02
+ ~RandomNum(4,3)~ + @158 + neck_massage_03
+ ~RandomNum(4,4)~ + @158 + massage
++ @159 EXIT
END

IF ~~ THEN neck_treatment_02
SAY @160
+ ~RandomNum(4,1)~ + @158 + neck_massage_01
+ ~RandomNum(4,2)~ + @158 + neck_massage_02
+ ~RandomNum(4,3)~ + @158 + neck_massage_03
+ ~RandomNum(4,4)~ + @158 + massage
++ @159 EXIT
END

IF ~~ THEN neck_treatment_03
SAY @161
+ ~RandomNum(4,1)~ + @162 + neck_massage_01
+ ~RandomNum(4,2)~ + @162 + neck_massage_02
+ ~RandomNum(4,3)~ + @162 + neck_massage_03
+ ~RandomNum(4,4)~ + @162 + massage
++ @163 EXIT
END

IF ~~ THEN neck_massage_01
SAY @164
IF ~~ THEN EXIT
END

IF ~~ THEN neck_massage_02
SAY @165
IF ~~ THEN EXIT
END

IF ~~ THEN neck_massage_03
SAY @166
IF ~~ THEN EXIT
END

IF ~~ THEN back_treatment
SAY @167
+ ~GlobalGT("X#AjantisRomanceIniFlirt","GLOBAL",2) !InventoryFull("ajantis")~ + @168 + take_equipment_01
+ ~GlobalGT("X#AjantisRomanceIniFlirt","GLOBAL",2) InventoryFull("ajantis")~ + @168 + take_equipment_02
+ ~GlobalLT("X#AjantisRomanceIniFlirt","GLOBAL",3) !InventoryFull("ajantis")~ + @168 + take_equipment_03
+ ~GlobalLT("X#AjantisRomanceIniFlirt","GLOBAL",3) InventoryFull("ajantis")~ + @168 + take_equipment_04
+ ~RandomNum(3,1)~ + @169 + stand_flirt_01
+ ~RandomNum(3,2)~ + @169 + stand_flirt_02
+ ~RandomNum(3,3)~ + @169 + stand_flirt_03
+ ~RandomNum(4,1)~ + @170 + back_massage_01
+ ~RandomNum(4,2)~ + @170 + back_massage_02
+ ~RandomNum(4,3)~ + @170 + back_massage_03
+ ~RandomNum(4,4)~ + @170 + back_massage_04
++ @171 EXIT
END

IF ~~ THEN take_equipment_01
SAY @172
IF ~~ THEN EXIT
END

IF ~~ THEN take_equipment_02
SAY @173
IF ~~ THEN EXIT
END

IF ~~ THEN take_equipment_03
SAY @174
IF ~~ THEN EXIT
END

IF ~~ THEN take_equipment_04
SAY @175
IF ~~ THEN EXIT
END

IF ~~ THEN stand_flirt_01
SAY @176
IF ~~ THEN EXIT
END

IF ~~ THEN stand_flirt_02
SAY @177
IF ~~ THEN EXIT
END

IF ~~ THEN stand_flirt_03
SAY @178
IF ~~ THEN EXIT
END

IF ~~ THEN back_massage_01
SAY @179
IF ~~ THEN EXIT
END

IF ~~ THEN back_massage_02
SAY @180
IF ~~ THEN EXIT
END

IF ~~ THEN back_massage_03
SAY @181
IF ~~ THEN EXIT
END

IF ~~ THEN back_massage_04
SAY @182
IF ~~ THEN EXIT
END

IF ~~ THEN massage
SAY @183
IF ~~ THEN EXIT
END

IF ~~ THEN surroundings_01
SAY @184
IF ~~ THEN EXIT
END

IF ~~ THEN surroundings_02
SAY @185
IF ~~ THEN EXIT
END

IF ~~ THEN surroundings_03
SAY @186
IF ~~ THEN EXIT
END

IF ~~ THEN surroundings_04
SAY @187
IF ~~ THEN EXIT
END

IF ~~ THEN surroundings_05
SAY @188
IF ~~ THEN EXIT
END

IF ~~ THEN surroundings_06
SAY @189
IF ~~ THEN EXIT
END

IF ~~ THEN queen_of_beauty
SAY @190
= @191
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceQueenOfBeauty","GLOBAL",1)~ EXIT
END

IF ~~ THEN hairdo_flirt_01
SAY @192
IF ~~ THEN EXIT
END

IF ~~ THEN hairdo_flirt_02
SAY @193
IF ~~ THEN EXIT
END

IF ~~ THEN hairdo_flirt_03
SAY @194
IF ~~ THEN EXIT
END


IF ~~ THEN drop_item_flirt_01
SAY @195
IF ~~ THEN EXIT
END

IF ~~ THEN drop_item_flirt_02
SAY @196
IF ~~ THEN EXIT
END

IF ~~ THEN drop_item_flirt_03
SAY @197
IF ~~ THEN EXIT
END

IF ~~ THEN drop_item_flirt_04
SAY @198
IF ~~ THEN EXIT
END

IF ~~ THEN drop_item_flirt_05
SAY @199
++ @200 + drop_item_flirt_06
++ @201 + drop_item_flirt_07
END

IF ~~ THEN drop_item_flirt_06
SAY @202
IF ~~ THEN DO ~SetGlobal("X#AjantisDropItemCheck","GLOBAL",1)~ EXIT
END

IF ~~ THEN drop_item_flirt_07
SAY @203
IF ~~ THEN EXIT
END

IF ~~ THEN drop_item_flirt_08
SAY @204
IF ~Global("X#AjantisDropItemCheck","GLOBAL",1)~ THEN EXIT
IF ~Global("X#AjantisDropItemCheck","GLOBAL",0)~ THEN + drop_itm_flirt_11
END

IF ~~ THEN drop_item_flirt_09
SAY @205
IF ~Global("X#AjantisDropItemCheck","GLOBAL",1)~ THEN EXIT
IF ~Global("X#AjantisDropItemCheck","GLOBAL",0)~ THEN + drop_itm_flirt_11
END

IF ~~ THEN drop_item_flirt_10
SAY @206
IF ~Global("X#AjantisDropItemCheck","GLOBAL",1)~ THEN EXIT
IF ~Global("X#AjantisDropItemCheck","GLOBAL",0)~ THEN + drop_itm_flirt_11
END

IF ~~ THEN drop_itm_flirt_11
SAY @207
++ @208 + drop_item_flirt_06
++ @201 + drop_item_flirt_07
END

IF ~~ THEN flirt_end
SAY @209
IF ~~ THEN DO ~SetGlobal("X#AjantisDisableFlirts","GLOBAL",1)
SetGlobal("X#AjantisRomanceActive","GLOBAL",3)
SetGlobal("X#AjantisRomNoInterestFlirt","GLOBAL",1)~ EXIT
END

/* smile */
IF ~~ THEN flirt_smile_01
SAY @210
IF ~~ THEN EXIT
END

IF ~~ THEN flirt_smile_02
SAY @211
IF ~~ THEN EXIT
END

IF ~~ THEN flirt_smile_03
SAY @212
IF ~~ THEN EXIT
END

IF ~~ THEN flattered_flirt_01
SAY @213
IF ~~ THEN EXIT
END

IF ~~ THEN flattered_flirt_02
SAY @214
IF ~~ THEN EXIT
END

IF ~~ THEN flattered_flirt_03
SAY @215
IF ~~ THEN EXIT
END

IF ~~ THEN bhaal_decision
SAY @216
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceBhaalFlirt","GLOBAL",1)~ EXIT
END

IF ~~ THEN flirt_necklace
SAY @217
IF ~~ THEN DO ~SetGlobal("X#AjantisFlirtNecklace","GLOBAL",1)~ EXIT
END

IF ~~ THEN flirt_necklace_02
SAY @218
IF ~~ THEN DO ~SetGlobal("X#AjantisFlirtNecklace","GLOBAL",1)~ EXIT
END

IF ~~ THEN flirt_ring
SAY @219
IF ~~ THEN DO ~SetGlobal("X#AjantisFlirtRing","GLOBAL",1)~ EXIT
END

IF ~~ THEN flirt_ring_02
SAY @220
IF ~~ THEN DO ~SetGlobal("X#AjantisFlirtRing","GLOBAL",1)~ EXIT
END

IF ~~ THEN wounded_70_engaged
SAY @221
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50_engaged
SAY @75
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_poisoned_engaged
SAY @76
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50_poisoned_engaged
SAY @222
IF ~~ THEN EXIT
END

IF ~~ THEN state_spell_engaged
SAY @78
IF ~~ THEN EXIT
END

/* day */
IF ~~ THEN tired_01_engaged
SAY @223
IF ~~ THEN EXIT
END

IF ~~ THEN tired_02_engaged
SAY @224
IF ~~ THEN EXIT
END

/* night */
IF ~~ THEN tired_03_engaged
SAY @225
IF ~~ THEN EXIT
END

IF ~~ THEN tired_04_engaged
SAY @226
IF ~~ THEN EXIT
END

IF ~~ THEN how_01_engaged
SAY @227
IF ~~ THEN EXIT
END

IF ~~ THEN how_02_engaged
SAY @228
IF ~~ THEN EXIT
END

IF ~~ THEN how_03_engaged
SAY @229
IF ~~ THEN EXIT
END

IF ~~ THEN how_04_engaged
SAY @86
IF ~~ THEN EXIT
END

IF ~~ THEN look
SAY @99
++ @100 + look_face_flirt
++ @101 + look_arms_flirt
++ @102 + look_hands_flirt
++ @103 + look_appearance_flirt
++ @104 EXIT
END

IF ~~ THEN look_face
SAY @230
IF ~RandomNum(3,1)~ THEN + look_11
IF ~RandomNum(3,2)~ THEN + look_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_arms
SAY @231
IF ~RandomNum(3,1)~ THEN + look_11
IF ~RandomNum(3,2)~ THEN + look_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_hands
SAY @107
IF ~RandomNum(3,1)~ THEN + look_11
IF ~RandomNum(3,2)~ THEN + look_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_appearance
SAY @232
IF ~RandomNum(3,1)~ THEN + look_11
IF ~RandomNum(3,2)~ THEN + look_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_11
SAY @233
IF ~~ THEN EXIT
END

IF ~~ THEN look_12
SAY @234
IF ~~ THEN EXIT
END

/* smile */
IF ~~ THEN smile_01
SAY @235 /* heart? */
IF ~~ THEN EXIT
END

IF ~~ THEN smile_02
SAY @236
IF ~~ THEN EXIT
END

IF ~~ THEN smile_03
SAY @237
IF ~~ THEN EXIT
END

IF ~~ THEN smile_04
SAY @238
IF ~~ THEN EXIT
END

IF ~~ THEN kiss
SAY @112
+ ~RandomNum(3,1)~ + @239 + kiss_cheek_01
+ ~RandomNum(3,2)~ + @239 + kiss_cheek_02
+ ~RandomNum(3,3)~ + @239 + kiss_cheek_03
+ ~RandomNum(6,1)~ + @240 + kiss_real_01
+ ~RandomNum(6,2)~ + @240 + kiss_real_02
+ ~RandomNum(6,3)~ + @240 + kiss_real_03
+ ~RandomNum(6,4)~ + @240 + kiss_real_04
+ ~RandomNum(6,5)~ + @240 + kiss_real_05
+ ~RandomNum(6,6)~ + @240 + kiss_real_06
+ ~RandomNum(3,1)~ + @241 + kiss_hand_01
+ ~RandomNum(3,2)~ + @241 + kiss_hand_02
+ ~RandomNum(3,3)~ + @241 + kiss_hand_03
++ @242 EXIT
END

IF ~~ THEN kiss_cheek_01
SAY @243
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_cheek_02
SAY @244
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_cheek_03
SAY @245
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_real_01
SAY @246
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_real_02
SAY @247
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_real_03
SAY @248
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_real_04
SAY @249
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_real_05
SAY @250
= @251
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_real_06
SAY @250
= @252
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_hand_01
SAY @253
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_hand_02
SAY @254
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_hand_03
SAY @255
IF ~~ THEN EXIT
END

IF ~~ THEN hug
SAY @112
+ ~RandomNum(4,1)~ + @256 + hug_waist_01
+ ~RandomNum(4,2)~ + @256 + hug_waist_02
+ ~RandomNum(4,3)~ + @256 + hug_waist_02
+ ~RandomNum(4,4)~ + @256 + hug_01
+ ~RandomNum(4,1)~ + @257 + hug_shoulder_01
+ ~RandomNum(4,2)~ + @257 + hug_shoulder_02
+ ~RandomNum(4,3)~ + @257 + hug_01
+ ~RandomNum(4,4)~ + @257 + hug_01
+ ~RandomNum(3,1)~ + @258 + hug_back_01
+ ~RandomNum(3,2)~ + @258 + hug_back_02
+ ~RandomNum(3,3)~ + @258 + hug_back_03
+ ~RandomNum(3,1)~ + @259 + hug_jump_01
+ ~RandomNum(3,2)~ + @259 + hug_jump_02
+ ~RandomNum(3,3)~ + @259 + hug_jump_03
++ @242 EXIT
END

IF ~~ THEN hug_waist_01
SAY @260
IF ~~ THEN EXIT
END

IF ~~ THEN hug_waist_02
SAY @261
IF ~~ THEN EXIT
END

IF ~~ THEN hug_shoulder_01
SAY @262
IF ~~ THEN EXIT
END

IF ~~ THEN hug_shoulder_02
SAY @263
IF ~~ THEN EXIT
END

IF ~~ THEN hug_back_01
SAY @264
IF ~~ THEN EXIT
END

IF ~~ THEN hug_back_02
SAY @265
IF ~~ THEN EXIT
END

IF ~~ THEN hug_back_03
SAY @266
IF ~~ THEN EXIT
END

IF ~~ THEN hug_jump_01
SAY @267
IF ~~ THEN EXIT
END

IF ~~ THEN hug_jump_02
SAY @268
IF ~~ THEN EXIT
END

IF ~~ THEN hug_jump_03
SAY @269
IF ~~ THEN EXIT
END

IF ~~ THEN hug_01
SAY @270
IF ~~ THEN EXIT
END

IF ~~ THEN hand_holding_01
SAY @271
IF ~~ THEN EXIT
END

IF ~~ THEN hand_holding_02
SAY @272
IF ~~ THEN EXIT
END

IF ~~ THEN hand_holding_03
SAY @273
IF ~~ THEN EXIT
END

IF ~~ THEN bodyhurt
SAY @274
+ ~RandomNum(3,1)~ + @275 + feet_treatment_engaged_01
+ ~RandomNum(3,2)~ + @275 + feet_treatment_engaged_02
+ ~RandomNum(3,3)~ + @275 + feet_treatment_engaged_03
+ ~RandomNum(3,1)~ + @143 + neck_treatment_engaged_01
+ ~RandomNum(3,2)~ + @276 + neck_massage_02
+ ~RandomNum(3,3)~ + @276 + neck_massage_engaged_02
+ ~RandomNum(4,1)~ + @277 + back_massage_engaged_01
+ ~RandomNum(4,2)~ + @277 + back_massage_engaged_02
+ ~RandomNum(4,3)~ + @277 + back_massage_engaged_03
+ ~RandomNum(4,4)~ + @277 + massage
++ @145 EXIT
END

IF ~~ THEN feet_treatment_engaged_01
SAY @278
IF ~~ THEN EXIT
END

IF ~~ THEN feet_treatment_engaged_02
SAY @279
IF ~~ THEN EXIT
END

IF ~~ THEN feet_treatment_engaged_03
SAY @280
IF ~~ THEN EXIT
END

IF ~~ THEN neck_treatment_engaged_01
SAY @281
+ ~RandomNum(3,1)~ + @282 + neck_massage_engaged_01
+ ~RandomNum(3,2)~ + @282 + neck_massage_02
+ ~RandomNum(3,3)~ + @282 + neck_massage_engaged_02
++ @283 EXIT
END

IF ~~ THEN neck_massage_engaged_01
SAY @284
IF ~~ THEN EXIT
END

IF ~~ THEN neck_massage_engaged_02
SAY @285
IF ~~ THEN EXIT
END

IF ~~ THEN back_massage_engaged_01
SAY @286
IF ~~ THEN EXIT
END

IF ~~ THEN back_massage_engaged_02
SAY @287
IF ~~ THEN EXIT
END

IF ~~ THEN back_massage_engaged_03
SAY @288
IF ~~ THEN EXIT
END

IF ~~ THEN loveyou_01
SAY @289
IF ~~ THEN EXIT
END

IF ~~ THEN loveyou_02
SAY @290
IF ~~ THEN EXIT
END

IF ~~ THEN loveyou_03
SAY @291
IF ~~ THEN EXIT
END

IF ~~ THEN lady_ilvastarr_01
SAY @292
IF ~~ THEN EXIT
END

IF ~~ THEN lady_ilvastarr_02
SAY @293
IF ~~ THEN EXIT
END

IF ~~ THEN lady_ilvastarr_03
SAY @294
IF ~~ THEN EXIT
END

IF ~~ THEN lady_ilvastarr_bhaal_01
SAY @295
IF ~~ THEN EXIT
END

IF ~~ THEN lady_ilvastarr_bhaal_02
SAY @296
IF ~~ THEN EXIT
END

IF ~~ THEN lady_ilvastarr_bhaal_03
SAY @297
IF ~~ THEN EXIT
END

IF ~~ THEN lady_ilvastarr_insult
SAY @298
IF ~~ THEN EXIT
END

IF ~~ THEN hairdo_01
SAY @299
IF ~~ THEN EXIT
END

IF ~~ THEN hairdo_02
SAY @300
IF ~~ THEN EXIT
END

IF ~~ THEN hairdo_03
SAY @301
IF ~~ THEN EXIT
END

IF ~~ THEN look_bhaal
SAY @99
++ @100 + look_face_flirt
++ @101 + look_arms_flirt
++ @102 + look_hands_flirt
++ @103 + look_appearance_flirt
++ @104 EXIT
END

IF ~~ THEN look_bhaal_face
SAY @302
IF ~RandomNum(3,1)~ THEN + look_bhaal_11
IF ~RandomNum(3,2)~ THEN + look_bhaal_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_bhaal_arms
SAY @231
IF ~RandomNum(3,1)~ THEN + look_bhaal_11
IF ~RandomNum(3,2)~ THEN + look_bhaal_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_bhaal_hands
SAY @107
IF ~RandomNum(3,1)~ THEN + look_bhaal_11
IF ~RandomNum(3,2)~ THEN + look_bhaal_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_bhaal_appearance
SAY @303
IF ~RandomNum(3,1)~ THEN + look_bhaal_11
IF ~RandomNum(3,2)~ THEN + look_bhaal_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_bhaal_11
SAY @304
IF ~~ THEN EXIT
END

IF ~~ THEN look_bhaal_12
SAY @305
IF ~~ THEN EXIT
END

IF ~~ THEN bhaal_smile
SAY @306
IF ~~ THEN EXIT
END

IF ~~ THEN bhaal_heritage
SAY @307
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_bhaal
SAY @308
IF ~~ THEN EXIT
END

/* @8 */

IF ~~ THEN safer_01
SAY @309
IF ~~ THEN EXIT
END

IF ~~ THEN safer_02
SAY @310
IF ~~ THEN EXIT
END

IF ~~ THEN safer_03
SAY @311
IF ~~ THEN EXIT
END

IF ~~ THEN safer_04
SAY @312
IF ~~ THEN EXIT
END

/* any suggestions as to how to proceed, Ajantis? */
/* chapter 2 */
IF ~~ THEN suggestions_01
SAY @313
IF ~~ THEN EXIT
END

/* (chapter 2)  */
IF ~~ THEN suggestions_02
SAY @314
IF ~~ THEN EXIT
END

/* chapter 2 */
IF ~~ THEN suggestions_03
SAY @315
IF ~~ THEN EXIT
END

/* chapter 2 */
IF ~~ THEN suggestions_04
SAY @316
IF ~~ THEN EXIT
END

/* chapter 3 */
IF ~~ THEN suggestions_05
SAY @317
IF ~~ THEN EXIT
END

/* chapter 3 */
IF ~~ THEN suggestions_06
SAY @318
IF ~~ THEN EXIT
END

/* chapter 3 */
IF ~~ THEN suggestions_07
SAY @319
IF ~~ THEN EXIT
END

/* chapter 4 */
IF ~~ THEN suggestions_08
SAY @320
IF ~~ THEN EXIT
END

/* chapter 4 */
IF ~~ THEN suggestions_09
SAY @321
IF ~~ THEN EXIT
END

/* chapter 4 */
IF ~~ THEN suggestions_10
SAY @322
IF ~~ THEN EXIT
END

/* chapter 5 */
IF ~~ THEN suggestions_13
SAY @323
IF ~~ THEN EXIT
END

/* chapter 5 */
IF ~~ THEN suggestions_14
SAY @324
IF ~~ THEN EXIT
END

/* chapter 5 */
IF ~~ THEN suggestions_15
SAY @325
IF ~~ THEN EXIT
END

/* (chapter 6 before being imprisoned) */
IF ~~ THEN suggestions_18
SAY @326
IF ~~ THEN EXIT
END

/* (chapter 6, after being imprisoned) */
IF ~~ THEN suggestions_19
SAY @327
IF ~~ THEN EXIT
END

/* (chapter 6) (2x) */
IF ~~ THEN suggestions_20
SAY @328
IF ~~ THEN EXIT
END

/* (chapter 7) */
IF ~~ THEN suggestions_21
SAY @329
IF ~~ THEN EXIT
END

/* (chapter 7)  */
IF ~~ THEN suggestions_22
SAY @330
IF ~~ THEN EXIT
END

/* (chapter 7)  */
IF ~~ THEN suggestions_23
SAY @331
IF ~~ THEN EXIT
END

/* other random answers, in combination with the above: */

IF ~~ THEN suggestions_24
SAY @332
IF ~~ THEN EXIT
END

IF ~~ THEN suggestions_25
SAY @333
IF ~~ THEN EXIT
END

/* (night)  */
IF ~~ THEN suggestions_26
SAY @334
IF ~~ THEN EXIT
END

/* (night)  */
IF ~~ THEN suggestions_27
SAY @335
IF ~~ THEN EXIT
END

/* (OR(5) */
/* Alignment(Player2,MASK_EVIL) */
/* Alignment(Player3,MASK_EVIL) */
/* Alignment(Player4,MASK_EVIL) */
/* Alignment(Player5,MASK_EVIL) */
/* Alignment(Player6,MASK_EVIL))  */
IF ~~ THEN suggestions_31
SAY @336
IF ~~ THEN EXIT
END

/* GlobalGT("X#AjantisRomanceBadDecision","GLOBAL",4)) */
IF ~~ THEN suggestions_32
SAY @337
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_break_up
SAY @338
= @339
IF ~~ THEN DO ~SetGlobal("X#AjantisRomanceActive","GLOBAL",3) SetGlobal("X#AjantisRomanceNoInterest","GLOBAL",1)~ EXIT
END

END
