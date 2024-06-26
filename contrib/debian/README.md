
Debian
====================
This directory contains files used to package anonpayd/anonpay-qt
for Debian-based Linux systems. If you compile anonpayd/anonpay-qt yourself, there are some useful files here.

## anonpay: URI support ##


anonpay-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install anonpay-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your anonpay-qt binary to `/usr/bin`
and the `../../share/pixmaps/anonpay128.png` to `/usr/share/pixmaps`

anonpay-qt.protocol (KDE)

