set filec
echo ""
echo Sun Platform Login - If you are not working on a Sun
echo machine, your environment may be wrong.
echo ""
# Check for software
set cdsName = ("icde")
set cdsPath = 'cds_root'
if (-e $cdsPath/$cdsName) then
   echo Cadence Software found in search path.
else echo Cadence Software was not found in the search path.
     echo Please correct your path variable to include the location
     echo of $cdsName .
endif

if ( "`tty`" == "/dev/console" ) then
  echo ""
  echo X-windows system/window manager selection:
  echo ""
  echo "Type the number that describes your environment and
  echo  press Return (or press Return ONLY to quit this script):"
  echo ""
  echo 1. Open Windows with OPENLOOK Window Manager
  echo 2. X11 Windows with Motif Window Manager
  echo 3. Open Windows with Motif Window Manager
  echo 4. X11 Windows with OPENLOOK Window Manager
  echo 5. Abort script and return to /dev/console
  echo ""
  set loop=1
  while ($loop == 1)
       set loop=0
       set choice=$<
       switch ($choice)
               case [1]:
                 cp .xinitrcolwm .xinitrc
                 openwin
                 breaksw
               case [2]:
                 cp .xinitrcmwm .xinitrc
                 xinit
                 breaksw
               case [3]:
                 cp .xinitrcmwm .xinitrc
                 openwin
                 breaksw
               case [4]:
                 cp .xinitrcolwm .xinitrc
                 xinit
                 breaksw
               case [5]:
                 breaksw
               default:
                 echo Invalid selection.
                 set loop=1
       endsw
  end
endif
