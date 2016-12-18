---
layout: default
permalink: /install-bison-mac/
---

# Installing Bison (Yacc) on a Mac

<!-- 11/21/2015 -->

By default, OS X comes with a _very_ antiquated version of GNU Bison (2.3 on my machine).  I've had to install v3 on my machine twice now, so I figured it was something that should be documented - if for no other reason than to help Future Rob.

## Download Bison

Go to the [Bison](http://www.gnu.org/software/bison/) page and download the latest version of Bison.  Extract the compressed file to a somewhat permanent location on your machine (e.g. **/Binaries/bison**).

## Build the Bison Binary

Open a terminal window and navigate to the folder you setup in the download step.  The instructions for installation are in the INSTALL file.  I was able to build a binary version by running **./configure** followed by **make**.  This will output a **bison** binary in the **src** folder.

## Set Default Version

Typing **bison** in a terminal window will still point to the old version of Bison.  I was able to fix this by renaming the old file in **/usr/local/bin** and setting up a symlink to the new version.

Rename the old version:

	cd /usr/local/bin
	mv bison bison-2.3

Setup a symlink to the new version:

	ln -s /Binaries/bison-3.0.4/src/bison bison

Annoyingly, OS X checks **/usr/bin** prior to **/usr/local/bin** when it looks for binaries.  This can be changed by editing **/etc/paths** and moving **/usr/local/bin** before **/usr/bin**.  Note that this file will need to be opened with root permissions.
