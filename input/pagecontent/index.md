<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
[Add a brief description of this IG in English]
</p>


### Introduction

Le groupe de travail “standards et interopérabilité” lancé en janvier 2024 s’inscrit dans la continuité du précédent 
groupe de travail ayant abouti à la constitution d’un socle commun de données de santé entre Entrepôts de Données de 
Santé Hospitaliers.

En effet, la seconde étape pour permettre l’interopérabilité entre les EDSH est de définir un standard commun pour ces 
données du socle.

Pour proposer une standardisation des données du socle, les membres du GT ont fait le choix du modèle OMOP, avec la 
création d'un guide d'implémentation FHIR.

Cette proposition s’appuie dans un premier temps sur la réponse qu’apporte OMOP aux familles d’usage du GT (i.e., les 
typologies de données définies dans le socle telles que biologie, médicament, PMSI, etc.).

Dans un second temps, la ressource OMOP s’érige également comme étant le modèle le mieux connu et maîtrisé par les 
membres du GT, qui représentent également un large panel de professionnels de santé (médecins, médecins DIM, data 
ingénieurs, etc.). Ainsi, il a semblé judicieux de proposer des spécifications applicables à un grand nombre 
d'établissements de santé, ayant les ressources en interne pour mettre en place et maintenir cette standardisation.

Néanmoins, ce standard présente une structure figée et spécifique et est peu évolutif, ce qui dresse ses limites face 
aux possibilités qu’offre le standard FHIR. Aussi, un sous-groupe dédié à des spécifications en FHIR a-t-il été lancé en 
parallèle des travaux en OMOP.

L’objectif de ce sous-groupe est la création d'un guide d'implémentation FHIR pour quelques variables du socle, 
afin de proposer une méthode et une démarche à suivre.

### Auteurs et contributeurs

| Role               | Nom        | Organisation | Contact                  |
|--------------------|------------|--------------|--------------------------|
| **Primary Editor** | Prenom Nom |              | prenom.nom@address.email |

### Dépendances

{% include dependency-table.xhtml %}