Android-Udev-Rules
==================

Develop with your Android devices on Linux.

*************************************************
This is a fork of the original repo hosted at http://github.com/apotheos/Android-Udev-Rules.  It extends the use of the original script, which is aimed at Ubuntu, to Fedora and, perhaps, other `systemd`-based Linux distributions.

The shell-script within the repo is intended to be run as *root #:* so that the *udev rules* file can be copied to the *udev system config* directory--i.e. **/etc/udev/rules.d/**

The customizations I've made to the script are intended as a workaround for systems with **SystemD** installed.  I've commented out the line for *chkconfig*, as an attempt to restart `udev` was not properly handled on Fedora20 PCs.

Aside from that, and perhaps more importantly, I've also included a line to the *shell-script* to add a new group **plugdev** to the system, since the *udev-rules* file refers to it as the assigned user group.

Please Note:
------------------
The user will still need to be added to the *plugdev* group manually as so:
`gpasswd -a username plugdev`

I'll look into adding this functionality to the script itself, though I'm not sure whether or not it'd be wise to do so.  Feel free to share any thoughts/comments on the matter.
