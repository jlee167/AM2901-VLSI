# This is a sample sun .cshrc file. You may need to consult your
# system administrator for necessary modifications for your
# environment.

set CDS_INST_DIR = 'cds_root'
#setenv FRAMEUSERSD_HOST hostname_goes_here
set SHELL = /bin/csh
setenv FMHOME /usr/frame
set Framepath=( $FMHOME/bin )
set mypath=(. ~ /usr/ucb /bin /usr/local /etc /usr/etc )
set XPath=( /usr/openwin/demo /usr/openwin/bin/xview /usr/bin/X11 /usr/openwin/bin )
# set the line below for the location of the cadence hierarchy
set cdsPath=( $CDS_INST_DIR/bin $CDS_INST_DIR/tools/bin $CDS_INST_DIR/tools/dfII/bin $CDS_INST_DIR/tools/dfII/pvt/bin)
set filec
umask 022
set prompt = "'hostname'[\!] "
set history = 200

endif
#---- XNEWS environs
setenv OPENWINHOME /usr/openwin
setenv LD_LIBRARY_PATH /usr/lib/X11:$OPENWINHOME/lib:/usr/lib:$CDS_INST_DIR/tools/lib
#-------END XNEWS ------

set path = ( $cdsPath $XPath $mypath $Framepath /bin )

