# Wartung – Checkliste

## Logs

```bash
docker compose logs                # alle Logs
docker compose logs db             # nur ein Service
docker compose logs --tail 20      # letzte 20 Zeilen
docker compose logs -f nginx       # live mitschauen (Ctrl+C stoppt)
```

## Container betreten

```bash
docker exec -it <container> bash   # Shell im Container öffnen
```

## Aufräumen

```bash
docker system df                   # Speicherverbrauch anzeigen
docker system prune                # löscht: gestoppte Container, ungenutzte Netzwerke, dangling Images, Build Cache
docker volume prune                # löscht: ungenutzte Volumes (Named Volumes die in Gebrauch sind bleiben)
```

## Restart-Verhalten

```bash
docker kill <container>            # Container abschiessen
docker compose ps                  # nach ~10 Sek prüfen: Container kommt automatisch zurück (restart: unless-stopped)
```

## Backup

```bash
~/docker-deployment/nextcloud-stack/backup.sh   # DB-Dump mit Datum im Backup-Ordner
```