# Nextcloud Stack – Dokumentation

## Aufbau

Drei Container die zusammenarbeiten:
- **MariaDB** – Datenbank für Nextcloud
- **Nextcloud** – die eigentliche App
- **Nginx** – Reverse Proxy davor, leitet Anfragen an Nextcloud weiter

Alles verbunden über ein eigenes Netzwerk. Passwörter stehen in der `.env` Datei, nicht im docker-compose.yml.

## Reverse Proxy

`proxy_pass` leitet alle Anfragen von Nginx an Nextcloud weiter. Der Benutzer redet nie direkt mit Nextcloud. So kann man später SSL davorschalten oder mehrere Apps hinter einem Eingang betreiben.

## Volumes

- `db-data` – Datenbankdaten bleiben erhalten wenn der Container neu gestartet wird
- `nextcloud-data` – Dateien und Einstellungen von Nextcloud

## Starten / Stoppen

```bash
docker compose up -d
docker compose down
```