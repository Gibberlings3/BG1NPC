CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomJahKal1","GLOBAL",1)~ THEN ~%AJANTIS_JOINED%~ romance_ajantis_khaljah1
@0
DO ~SetGlobal("X#AjantisRomJahKal1","GLOBAL",2) RealSetGlobalTimer("X#AjantisRomNPCTalksT","GLOBAL",AJROM_TIMER)~
== ~%JAHEIRA_JOINED%~ @1
= @2
== ~%AJANTIS_JOINED%~ @3
== ~%KHALID_JOINED%~ @4
== ~%JAHEIRA_JOINED%~ @5
== ~%AJANTIS_JOINED%~ @6
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomDyna1","GLOBAL",1)~ THEN ~%AJANTIS_JOINED%~ romance_ajantis_dynah1
@7
DO ~SetGlobal("X#AjantisRomDyna1","GLOBAL",2) RealSetGlobalTimer("X#AjantisRomNPCTalksT","GLOBAL",AJROM_TIMER)~
== ~%DYNAHEIR_JOINED%~ @8
== ~%AJANTIS_JOINED%~ @9
== ~%DYNAHEIR_JOINED%~ @10
== ~%AJANTIS_JOINED%~ @11
== ~%DYNAHEIR_JOINED%~ @12
= @13
== ~%AJANTIS_JOINED%~ @14
== ~%DYNAHEIR_JOINED%~ @15
== ~%AJANTIS_JOINED%~ @16
== ~%DYNAHEIR_JOINED%~ @17
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomYesl1","GLOBAL",1)~ THEN ~%AJANTIS_JOINED%~ romance_ajantis_yeslick1
@18
DO ~SetGlobal("X#AjantisRomYesl1","GLOBAL",2) RealSetGlobalTimer("X#AjantisRomNPCTalksT","GLOBAL",AJROM_TIMER)~
== ~%YESLICK_JOINED%~ @19
== ~%AJANTIS_JOINED%~ @20
== ~%YESLICK_JOINED%~ @21
== ~%AJANTIS_JOINED%~ @22
== ~%YESLICK_JOINED%~ @23
== ~%AJANTIS_JOINED%~ @24
== ~%YESLICK_JOINED%~ @25
== ~%AJANTIS_JOINED%~ @26
== ~%YESLICK_JOINED%~ @27
== ~%AJANTIS_JOINED%~ @28
== ~%YESLICK_JOINED%~ @29
== ~%AJANTIS_JOINED%~ @30
== ~%YESLICK_JOINED%~ @31
EXIT

CHAIN IF WEIGHT #-2 ~%BGT_VAR% Global("X#AjantisRomBran1","GLOBAL",1)~ THEN ~%AJANTIS_JOINED%~ romance_ajantis_branwen1
@32
DO ~SetGlobal("X#AjantisRombran1","GLOBAL",2) RealSetGlobalTimer("X#AjantisRomNPCTalksT","GLOBAL",AJROM_TIMER)~
== ~%BRANWEN_JOINED%~ @33
== ~%AJANTIS_JOINED%~ @34
== ~%BRANWEN_JOINED%~ @35
== ~%AJANTIS_JOINED%~ @36
== ~%BRANWEN_JOINED%~ @37
== ~%AJANTIS_JOINED%~ @38
EXIT
