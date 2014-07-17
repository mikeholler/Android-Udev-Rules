Android-Udev-Rules
==================

Develop with your Android devices on Linux.

*************************************************
The `install.sh` script is written to facilitate the installation of the necessary `udev` rules in order to interface with android devices over the USB port.  It is intended to be run as `root #` so that the *51-android.rules* file can be copied to the system's configuration directory--e.g. `/etc/udev/rules.d/`

In addition to the original script there's the `installOnFedora.sh` as a workaround for systems with **SystemD** installed.  I've commented out the line for *chkconfig*, as an attempt to restart `udev` was not properly handled on Fedora20 PCs.  Furthermore, this additional script also includes a line that adds a new group **plugdev** to the system; since the *udev-rules* file refers to the **plugdev** group as the assigned user group, the admin will need to add designated users to it before they can interact with the android devices using `adb`, etc.

Please Note:
------------------
The user will still need to be added to the *plugdev* group manually as so:
`gpasswd -a username plugdev`

I'll look into adding this functionality to the script itself, though I'm not sure whether or not it'd be wise to do so.  Feel free to share any thoughts/comments on the matter.
