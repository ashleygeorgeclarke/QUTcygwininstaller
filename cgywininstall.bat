@ECHO OFF
if not exist "h:\setup-x84.exe" (
    START /WAIT bitsadmin.exe /transfer "cygwindl" https://cygwin.com/setup-x86.exe h:\setup-x84.exe
)

START /WAIT h:\setup-x86.exe -q -P gcc-core,make,gdb,libncurses-devel -s http://mirror.internode.on.net
echo Press any key when cygwin installation has finished
pause >nul
c:\cygwin\bin\bash.exe --login -i -c 'cd "/cygdrive/h";bash'


