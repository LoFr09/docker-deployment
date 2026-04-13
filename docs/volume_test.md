# Volume Test

## Named Volume

```bash
docker volume create mariadb-daten
docker run -d --name meine-db -e MYSQL_ROOT_PASSWORD=geheim -e MYSQL_DATABASE=testdb -v mariadb-daten:/var/lib/mysql mariadb
```

Daten reingeschrieben, Container gelöscht, neuen Container mit gleichem Volume gestartet → Daten waren noch da.

## Bind Mount

```bash
docker run -d --name nginx-bind -p 8080:80 -v ~/docker-deployment/bind-test:/usr/share/nginx/html nginx
```

HTML auf dem Host geändert → sofort im Browser sichtbar, ohne Neustart.

## Unterschied

- **Named Volume:** Docker verwaltet den Speicher. Daten überleben das Löschen des Containers. Gut für Datenbanken.
- **Bind Mount:** Host-Ordner wird direkt in den Container gespiegelt. Gut für Entwicklung.