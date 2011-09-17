/* Coran and his Wyverns */
/*wyverns fix */
REPLACE_TRIGGER_TEXT %CORAN_JOINED% ~[dD][eE][aA][dD](\"[wW][yY][vV][eE][rR][nN]\")~ ~Dead("X#CoranWyvern")~

/* Replacing Globals in Coran's Wyvern Misadventure */
REPLACE_STATE_TRIGGER %CORAN_JOINED% 6 ~Global("X#CoranWyvernWarning1","GLOBAL",1)~
REPLACE_TRANS_ACTION %CORAN_JOINED% BEGIN 6 END BEGIN END ~SetGlobal("CoranWyvern","GLOBAL",1)~ ~SetGlobal("X#CoranWyvernWarning1","GLOBAL",2)~

REPLACE_STATE_TRIGGER %CORAN_JOINED% 5 ~Global("X#CoranWyvernWarning2","GLOBAL",1)~
REPLACE_TRANS_ACTION %CORAN_JOINED% BEGIN 5 END BEGIN END ~SetGlobal("CoranWyvern","GLOBAL",2)~ ~SetGlobal("X#CoranWyvernWarning2","GLOBAL",2)~

ADD_STATE_TRIGGER _KELDDA 6 ~Dead("X#CoranWyvern")~

ADD_STATE_TRIGGER %XAN_POST% 3 ~!Global("X#XARomanceActive","GLOBAL",2)~

/* Cleaning J's of not conditionals */
REPLACE_STATE_TRIGGER ~_AJANTJ~ 0 ~Global("AjantisLeave","GLOBAL",0) HappinessLT(Myself,-290)~
REPLACE_STATE_TRIGGER ~_AJANTJ~ 1 ~Global("X#JCleanAjantis","GLOBAL",1)~
REPLACE_STATE_TRIGGER ~_ALORAJ~ 0 ~Global("X#JCleanAlora","GLOBAL",1)~ 1 2
REPLACE_STATE_TRIGGER ~_BRANWJ~ 0 ~Global("X#JCleanBranwen","GLOBAL",1)~ 1
REPLACE_STATE_TRIGGER ~_CORANJ~ 7 ~Global("X#JCleanCoran","GLOBAL",1)~ 8
REPLACE_STATE_TRIGGER ~_DYNAHJ~ 0 ~Global("X#JCleanDynaheir","GLOBAL",1)~ 1 2 3 4 5 6 7 8 9 10 11
REPLACE_STATE_TRIGGER ~_EDWINJ~ 1 ~Global("X#JCleanEdwin","GLOBAL",1)~ 2 3
REPLACE_STATE_TRIGGER ~_ELDOTJ~ 12 ~Global("X#JCleanEldoth","GLOBAL",1)~ 13 14 15
REPLACE_STATE_TRIGGER ~_FALDOJ~ 0 ~Global("X#JCleanFaldorn","GLOBAL",1)~ 1
REPLACE_STATE_TRIGGER ~_GARRIJ~ 0 ~Global("X#JCleanGarrick","GLOBAL",1)~ 1
REPLACE_STATE_TRIGGER ~_JAHEIJ~ 0 ~Global("X#JCleanJaheira","GLOBAL",1)~ 1 2 3
REPLACE_STATE_TRIGGER ~_KAGAIJ~ 2 ~Global("X#JCleanKagain","GLOBAL",1)~ 3
REPLACE_STATE_TRIGGER ~_KHALIJ~ 0 ~Global("X#JCleanKhalid","GLOBAL",1)~ 1 2 3
REPLACE_STATE_TRIGGER ~_KIVANJ~ 0 ~Global("X#JCleanKivan","GLOBAL",1)~ 1// zeroing out no condition leave dialogue
REPLACE_STATE_TRIGGER ~_MINSCJ~ 2 ~Global("X#JCleanMinsc","GLOBAL",1)~ 3 4 5 6 7
REPLACE_STATE_TRIGGER ~_MONTAJ~ 0 ~Global("X#JCleanMontaron","GLOBAL",1)~ 1 2 3 4
REPLACE_STATE_TRIGGER ~_QUAYLJ~ 0 ~Global("X#JCleanQuayle","GLOBAL",1)~ 1
REPLACE_STATE_TRIGGER ~_SAFANJ~ 0 ~Global("X#JCleanSafana","GLOBAL",1)~ 1
REPLACE_STATE_TRIGGER ~_SHARTJ~ 2 ~Global("X#JCleanSharteel","GLOBAL",1)~ 3
REPLACE_STATE_TRIGGER ~_SKIEJ~ 0 ~Global("X#JCleanSkie","GLOBAL",1)~ 1 2 3
REPLACE_STATE_TRIGGER ~_TIAXJ~ 0 ~Global("X#JCleanTiax","GLOBAL",1)~ 1
REPLACE_STATE_TRIGGER ~_VICONJ~ 0 ~Global("X#JCleanViconia","GLOBAL",1)~ 1
REPLACE_STATE_TRIGGER ~_XANJ~ 0 ~Global("X#JCleanXan","GLOBAL",1)~ 1
REPLACE_STATE_TRIGGER ~_XZARJ~ 3 ~Global("X#JCleanXzar","GLOBAL",1)~ 4 5 6
REPLACE_STATE_TRIGGER ~_YESLIJ~ 0 ~Global("X#JCleanYeslick","GLOBAL",1)~ 1
REPLACE_STATE_TRIGGER ~_IMOEN2~ 4 ~Global("X#JCleanImoen","GLOBAL",1)~
