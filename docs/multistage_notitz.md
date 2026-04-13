# Multi-Stage Build – Was ich gelernt habe

## Grössenvergleich

- meine-seite-single: 706 MB
- meine-seite-multi: 92.6 MB

Das ist fast 8x weniger.

## Warum so ein grosser Unterschied?

Beim Single-Stage bleibt alles im Image drin: Node.js, npm, die ganzen node_modules. Das braucht man aber nur zum Bauen, nicht zum Ausliefern der fertigen Website.

Beim Multi-Stage passiert der Build in einer eigenen Stufe. Danach wird nur das Ergebnis in ein sauberes Nginx-Image kopiert. Der ganze Build-Kram wird weggeschmissen.
Multi-Stage = bauen und wegwerfen. Im finalen Image landet nur das, was man zur Laufzeit wirklich braucht. Alles andere bleibt draussen.