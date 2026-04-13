## Docker Daemon: Führt die Docker-Befehle aus (das Programm das im Hintergrund läuft und deine Befehle entgegennimmt)
## Container vs. VM: Container nutzt den Kernel vom Host, VM hat ein eigenes Betriebssystem
## Image vs. Container: Image ist der Bauplan/die Vorlage, Container ist das was daraus gestartet wird und läuft
## Namespaces: Jeder Container kriegt seine eigene Sicht aufs System (PIDs, Netz, Dateien)
## Cgroups: Begrenzen CPU/RAM pro Container
## Warum leichtgewichtiger: Container teilen sich den Host-Kernel, kein eigenes OS nötig, deshalb viel leichter als VMs
## Architektur: Client → Daemon → Registry → Container