set filec
# Check for software
set cdsName = ("icde")
set cdsPath = 'cds_root'
if (-e $cdsPath/$cdsName) then
   echo Cadence Software found in search path.
else echo Cadence Software was not found in the search path.
     echo Please correct your path variable to include the location
     echo of $cdsName .
endif
echo -n "Press [return] to continue:"
set foo=$<
clear

if ( "`tty`" == "/dev/console" ) then 
       xinit
endif
