#!/bin/bash
BACKUP_DIR=~/docker-deployment/backups
DATUM=$(date +%Y-%m-%d_%H-%M)
DATEI="$BACKUP_DIR/nextcloud-db_$DATUM.sql"

source ~/docker-deployment/nextcloud-stack/.env

docker exec arbeit-db-1 mariadb-dump -u root -p"$MYSQL_ROOT_PASSWORD" nextcloud > "$DATEI"

echo "Backup gespeichert: $DATEI"