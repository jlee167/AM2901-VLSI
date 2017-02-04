# This is a sample sun .cshrc file. You may need to consult your
# system administrator for necessary modifications for your
# environment.

#setenv FRAMEUSERSD_HOST hostname_goes_here
set SHELL = /bin/csh
setenv FMHOME /usr/frame
set Framepath=( /usr/frame/bin )
set mypath=(. ~ /usr/ucb /bin /usr/local /etc /usr/etc )
set XPath=( /usr/openwin/demo /usr/openwin/bin/xview /usr/bin/X11 /usr/openwin/bin )
# set the line below for the location of the cadence hierarchy
set cdsPath=( /cds/bin )
set asiPath=(/usr/asi/bin /usr/unify /usr/unify/bin)
set filec
umask 022

endif
#---- XNEWS environs
setenv OPENWINHOME /usr/openwin
setenv FONTPATH $OPENWINHOME/lib/fonts:/usr/asi/system/owsfonts
setenv FRAMEBUFFER /dev/cgthree0
setenv LD_LIBRARY_PATH /usr/lib:/usr/openwin/lib
#-------END XNEWS ------

set path = ( $cdsPath $XPath $mypath $Framepath $asiPath /bin /usr/gda )

# prance stuff
#       Prance Environment Setup
setenv NSEGS            0
setenv DEFSIZE          10485760
setenv SHMID            14
setenv HPGL_QUEUE       -Phpgl
setenv VTEC_QUEUE       -Pvtec
setenv ASI_SHMEM        no
setenv LM_LICENSE_FILE  /usr/asi/license/pgtd.conf
setenv DBPATH /usr/asi/aplib
setenv UNIFY /usr/unify/lib
