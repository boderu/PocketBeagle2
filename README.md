# PocketBeagle2 Installation
Die Installationsskripte wurden getestet mit
*	PocketBeagle 2 mit dem PocketBeagle TechLab
*	256 GByte µSD-Karte
*	UGREEN USB-Hub mit integrierter Ethernetschnittstelle am USB-A-Port vom TechLab
*	USB-A WLAN-Dongle am USB-A-Port vom TechLab
Das PC-Betriebssystem zu Inbetriebnahme ist Linux Mint.

# Das Image für die SD-Karte
*	Auf der Seite https://www.beagleboard.org/distros die Distribution "PocketBeagle 2" auswählen.
*	Download: "PocketBeagle 2 Debian 13 2025-06-11 IoT (v6.12.x-ti)" oder neuer. Anschließend das heruntergeladene Archiv entpacken (Rechtsklick im Dateimanager).
*	SD-Karte in den Mint-Computer einlegen.
*	In dem Dateimanager Nemo mit Rechtsklick der Maus im Kontextmenü "Startfähigen USB-Stick erstellen" auswählen und den Anweisungen folgen.
*	Die SD-Karte hat anschließend mehrere Partitionen. Nach dem Auswerfen und Wiedereinlegen in den PC wird die Boot-Partition im Dateimanager sichtbar.
*	Die Datei "sysconf.txt" in dieser Partition editieren und den User-Name und das User-Passwort festlegen. Andere Parameter (z.B. Hostname,...) auch.
*	Nach dem Speichern der Datei die SD-Karte auswerfen.

# Erster Start
*	Die µSD-Karte in den PocketBeagle einlegen.
*	Den PocketBeagle auf das TehLab-Board stecken (der USB-A-Port wird benötigt).
*	Die USB-Ethernetschnittstelle mit dem USB-A verbinden und mit einem Ethernetkabel and das Netz anschließen.
*	Den PocketBeagle mit einem USB-C-Kabel mit dem Mint-PC verbinden.
*	Der PocketBeagle startet - nach einiger Zeit öffnet sich auf dem PC der Dateimanager und zeigt die Bootpartition des PocketBeagle.
