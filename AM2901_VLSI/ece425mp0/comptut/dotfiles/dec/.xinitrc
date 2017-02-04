#!/bin/csh -f

# Set backward compatibility mode
xset bc
# xsetroot -bitmap ~/etc/images/far_side.xbm

# Start up the Motif window manager first.
mwm >& /dev/null  &
# xset m 2 2 &

xterm -g 80x43+0+119 -fg wheat -bg darkslategrey -sb -cr yellow&

# Start the console window. This is the only xterm window that should be run
# in the foreground since it replaces the normal xterm login window.
# Typing "exit" in this window will bring down all windows and exit out of
# X-windows.
xterm -n "Console" -g 75x5+0+0 -fg black -bg grey -sb +ls -C
