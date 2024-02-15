# Sommaire
- [Sommaire](#sommaire)
- [Introduction](#introduction)
- [Pré-requis](#pré-requis)
  - [Pour lancer le backend en local](#pour-lancer-le-backend-en-local)
  - [Pour faire un docker Image](#pour-faire-un-docker-image)
- [Lancement](#lancement)
  - [En local](#en-local)
  - [Construction de l'image docker](#construction-de-limage-docker)

# Introduction
Backend pour le projet Morningnews

La commande pour bien avoir un fichier `.env`:  
- `cp .env.example .env` 

Il est important d'avoir une valeur attribuée à `NEWS_API_KEY` ainsi que `CONNECTION_STRING` dans le fichier .env avant de commencer.

# Pré-requis 
## Pour lancer le backend en local
- nodejs
- 

## Pour faire un docker Image
- [Docker Engine](https://docs.docker.com/engine/install/)


# Lancement
## En local
```
npm install
npm start &
```
Le backend est disponible sur le lien suivant : http://localhost:3000

## Construction de l'image docker
```
docker build -t *tagname** --no-cache --build-arg url=*CONNECTION_STRING* --build-arg token=*NEWSTOKEN* .
docker run --name morningnews_backend *tagname* -p 3000:3000 
```
Le backend est disponible sur le lien suivant : http://localhost:3000
