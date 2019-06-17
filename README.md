# Google Cloud Summit 2019
## Déployer son application cloud native en 10 min
par Valentin Coudert (Digital Lab - Devoteam G Cloud)

### Step 0
branch step0  
L'application tourne en local, sans dépendance aucune vers Google Cloud Platform.  
Elle utilise une base MySQL en local elle aussi.

### Step 1
branch step1  
On ajoute les fichiers propre à App Engine (`app.yaml`, `.gcloudignore`).

### Gae ready
branch gae-ready  
On configure la connection vers Cloud SQL en laissant tout de même la possibilité d'utiliser
la base MySQL local quand on développe.