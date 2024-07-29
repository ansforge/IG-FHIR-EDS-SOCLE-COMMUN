# Guide d'implémentation FHIR du GT Standards et Interopérabilité

Ce guide peut être visible à l'adresse suivante : https://ansforge.github.io/IG-FHIR-EDS-SOCLE-COMMUN/main/ig.

## Contexte

## Construction du guide

### prérequis

#### Git

Avoir un client Git installé sur son poste.

#### Java

Avoir une Java machine virtuelle installée sur son poste (de préférence une version LTS).

#### Jekyll

Les informations sur l'installation de jekyll se trouve : [https://jekyllrb.com/docs/installation](https://jekyllrb.com/docs/installation).

### Tâches Gradle

Si vous utilisez un environnement de développement tel que VSCode, Eclipse ou IntellIJ, celui-ci aura identifié que ce projet est un projet géré à l'aide de gradle.

Si vous n'utilisez pas un environnement de développement, alors je suis bien ennuyé...

Le fichier gradle.properties contient les numéros de version d'outils participant à la construction d'un guide d'implémentation.

Dans le script gradle se trouve de nombreuses tâches dont les plus importantes à connaître sont :

* buildIG : permettant de constuire le guide d'implémentation. Le premier lancement est plus long car il y a une étape de récupération de l'outil IG Publisher dans la version spécifiée dans le fichier de configuration gradle (gradle.properties) et la création de fichiers de cache.
* reBuildIG : supprime les répertoires créés lors d'une construction puis lance la construction. Il n'est pas nécessaire de faire appel à cette tâche systèmatiquement (cf. la description de la tâche buildIG). Cette tâche très utile lors d'un changement de version de l'IG Publisher.
* sushiBuild : lance seuelement l'outil sushi (partique dans un contexte de cycle court de définition de fichiers FSH).

## Acronymes

* IG : Implementation Guide
* FHIR : Fast Healthcare Interoperability Resources
* HL7 : Health Level Seven
