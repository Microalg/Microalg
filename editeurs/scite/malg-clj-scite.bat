@echo off
SET NO_PAUSE=SVP
SET SCITE_DIR=%~dp0
SET MICROALG_DIR=%SCITE_DIR%..\..
%MICROALG_DIR%\malg-clj.bat "%1"
