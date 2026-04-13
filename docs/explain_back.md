Explain-Back
1. Image vs Container
Image = Vorlage. Container = laufende Instanz davon. Container weg = Daten weg. Ausser sie liegen auf einem Volume, das ist separat.

2. Reverse Proxy
Nginx fängt alles ab bevor es bei Nextcloud ankommt. Gut für SSL, Upload-Limits, und man kann später weitere Apps dahinter hängen.

3. MariaDB updaten
Backup, Version ändern, Stack neu starten. Ohne Backup vorher macht man das nicht.