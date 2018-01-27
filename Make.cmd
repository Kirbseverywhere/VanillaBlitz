cd %~dp0
copy "FE8U.gba" "FE_Hack.gba"
cd "%~dp0ups"
ups apply -b "%~dp0FE_Hack.gba" -p "%~dp0ups\BaseRom.ups" -o "%~dp0FE_Hack.gba"
cd "%~dp0Event Assembler"
Core A FE8 "-output:%~dp0FE_Hack.gba" "-input:%~dp0Buildfile.event"
pause