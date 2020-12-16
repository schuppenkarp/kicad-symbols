@echo off
REM =====================================
REM Symbolerich
REM =====================================
SET TBL=%appdata%/kicad/sym-lib-table
echo (sym_lib_table > %TBL%
for  %%D in (.\*.lib) do ECHO. (lib (name %%~nD)(type KiCad)(uri "${KICAD_SYMBOL_DIR}/%%~nxD")(options "")(descr "%%~nD")) >> %TBL%
echo ) >> %TBL%


pause
