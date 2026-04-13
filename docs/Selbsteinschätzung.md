# Selbsteinschätzung

| Bereich | Note |
|---------|------|
| Docker-Grundlagen (Images, Container, Daemon) | c |
| Dockerfile schreiben (inkl. Multi-Stage) | c |
| Volumes und Persistenz | b |
| Docker Compose (Multi-Service-Stack) | c |
| Container-Wartung (Logs, exec, prune, Health-Checks) | c |

## Wo ich Schwierigkeiten hatte

- Habe am Anfang Image-IDs mit Container-IDs verwechselt bei `docker rm`.
- Hatte manchmal noch alte Container am laufen die den Port blockiert haben, und musste die zuerst stoppen bevor der neue funktioniert hat.
- Dateien im falschen Ordner erstellt (Home statt nextcloud-stack).
- Beim Backup-Script stimmte das Passwort nicht mit der .env überein.
- Nextcloud hat auf `localhost/login` weitergeleitet weil die Proxy-Einstellungen gefehlt haben (OVERWRITEHOST).

## Hilfe 
- Ich habe die KI also hinweisgeber verwendet und um die Texte zu korriegieren
- Ich habe die Manuelles durchgelesen und bei manchen musse ich im Internet nach den Befehlen schauen
