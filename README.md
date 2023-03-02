## Autostart durch Desktop
Datei unter ~/.config/autostart/start_streamLink.desktop
Folgende Ausführung:
	[Desktop Entry]
	Type=Application
	Name=streamLink
	Exec=/usr/bin/python3 /home/nak-watchdog/streamLink/streamLink_vlcOpener.py 

## Python-Script
Scripts liegen unter ~/streamLink
Google-Parser nicht in Verwendung - direkter (Short-)Link in Benutzung. (http://nactube.datagis.com/c/NAKNuertingen)
siehe Scripts


Einschalten: Lampe des Tasters ist am Seriellen Port verbunden. In /boot/config.txt ist folgendes 
konfiguriert (serieller Port GPIO14 (TXD) wird wird beim starten aktiviert und gibt Spannung aus):
[all]
enable_uart=1

Short von GPIO3 and Ground führt zum Aufwecken des PIs, wenn es sich im Hybernate-Zustand befindet.

Shutdown:
/etc/init.d/listen-for-shutdown.sh
/usr/local/bin/listen-for-shutdown.py
siehe auch: https://github.com/Howchoo/pi-power-button
