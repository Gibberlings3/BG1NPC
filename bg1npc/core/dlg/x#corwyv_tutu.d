/* Coran and his Wyverns */
/*wyverns fix */
REPLACE_TRIGGER_TEXT %CORAN_JOINED% ~Dead("Wyvern")~ ~Dead("X#CoranWyvern")~
REPLACE_TRIGGER_TEXT %CORAN_JOINED% ~!Dead("Wyvern")~ ~!Dead("X#CoranWyvern")~
REPLACE_STATE_TRIGGER %CORAN_JOINED% 0 ~Dead("X#CoranWyvern") Global("CoranReward","GLOBAL",0) !Global("wyvernp","GLOBAL",1) PartyHasItem("%tutu_var%MISC52") InParty("Coran")~ 

/* Replacing Globals in Coran's Wyvern Misadventure */
REPLACE_STATE_TRIGGER %CORAN_JOINED% 6 ~Global("X#CoranWyvernWarning1","GLOBAL",1)~
REPLACE_TRANS_ACTION %CORAN_JOINED% BEGIN 6 END BEGIN END ~SetGlobal("CoranWyvern","GLOBAL",1)~ ~SetGlobal("CoranWyvern","GLOBAL",1) SetGlobal("X#CoranWyvernWarning1","GLOBAL",2)~

REPLACE_STATE_TRIGGER %CORAN_JOINED% 5 ~Global("X#CoranWyvernWarning2","GLOBAL",1)~
REPLACE_TRANS_ACTION %CORAN_JOINED% BEGIN 5 END BEGIN END ~SetGlobal("CoranWyvern","GLOBAL",2)~ ~SetGlobal("CoranWyvern","GLOBAL",2) SetGlobal("X#CoranWyvernWarning2","GLOBAL",2)~

ADD_STATE_TRIGGER %tutu_var%KELDDA 6 ~Dead("X#CoranWyvern")~
REPLACE_STATE_TRIGGER %tutu_var%KELDDA 7 ~Dead("X#CoranWyvern") !PartyHasItem("MISC52") !Global("wyvernp","GLOBAL",1)~
ADD_TRANS_ACTION %tutu_var%KELDDA BEGIN 7 END BEGIN END ~StartStore("%tutu_var%TEM3402",LastTalkedToBy(Myself))~ UNLESS ~StartStore~
