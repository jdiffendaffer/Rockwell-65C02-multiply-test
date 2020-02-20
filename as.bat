@echo off
if not %1.==. goto top
echo usage: %0 filename.a65
goto end
:top
ca65 -o %~n1.obj --listing %1
ld65 -t none -o %~n1.bin %~n1.obj
shift
if not %1.==. goto top
:end