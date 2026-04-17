Explain-Back
1. Image vs Container
Ein Image ist wie ein Bauplan es enthält alles was du nacher brauchst, verändert sich aber nie. Ein Container ist das was daraus entsteht wenn man es startet. Löscht man den Container, ist alles weg was drin gemacht wurde. Ausser man hat ein Volume dafür erstellt. Das lebt ausserhalb vom Container auf dem Host. Deshalb kann man den Container wegwerfen, einen neuen starten, das Volume wieder hinzufügen und alles ist noch da das ist sehr praktisch und schütz vor daten verlust. 

2. Reverse Proxy
Im Auftrag stand, das Nextcloud nicht direkt erreichbar sein sollte. Nginx ist wie davor und und fangt alles Anfragen ab. Das bringt folgnede Vorteile: Man kann SSL an einer Stelle einrichten, grosse Uploads begrenzen und andere Apps hinter den gleichen Nginx hängen. Ausserdem bekomme ich die daten schneller aus Nginx als aus Nextcloud weil Nextcloud alles durch PHP durchschleust.

3. MariaDB updaten
Zuerst ein Backup machen, das ist am wichtigsten, sonst kann man bei einem Fehler nicht mehr zurück. Dann die Version im docker compose file ändern. Docker compose stoppen und wieder starten. Jetzt sollte Docker das neue Image automatisch aktuallisieren. Zum schlusss doch noch kurz prüfen ob die Version jetzt aktuell ist.