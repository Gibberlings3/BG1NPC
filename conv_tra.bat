:: Use a parameter to the script (%1) to specify the directory that must be converted

:: Prevent display of DOS command lines
@echo off

:: Since the pattern matching in Windows considers that "fu.tra_utf8" also matches "*.tra", we have to
:: handle the file extension by ourselfves in order to avoid all those tra_utf8_utf8 etc files
:: Use %%~ni instead of %%~nxi (x is for extension) and specify the tra extension
for %%i in (bg1npc\tra\%1\*.tra) do bg1npc\iconv -f CP1252 -t UTF-8 "bg1npc\tra\%1\%%~ni.tra" > "bg1npc\tra\%1\%%~ni.tra_utf8"
