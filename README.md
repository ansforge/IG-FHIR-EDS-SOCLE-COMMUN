[A MODIFIER : remplacer avec votre logo s'il ne s'agit pas d'un projet CI-SIS]

![Logo_LEF_CI-SIS](https://user-images.githubusercontent.com/48218773/227532484-eff82649-4e42-49c6-966a-dc3ea78cf59c.png)

[A MODIFIER : adapter au lien du projet]

[![Workflow Init](https://github.com/ansforge/IG-fhir-partage-de-documents-de-sante/actions/workflows/fhir-workflows.yml/badge.svg)](https://github.com/ansforge/IG-fhir-partage-de-documents-de-sante/actions/workflows/fhir-workflows.yml)

Cet exemple d'Implementation Guide (IG) très simplifié sert de base pour le développement de nouveaux guides d'implémentation. La démarche d'élaboration d'un nouvel IG est expliquée dans le [wiki de ce repo](https://github.com/ansforge/IG-modele/wiki).
Le README ci-dessous constitue un template à adapter et compléter pour chaque projet.

# Contexte

## Contexte métier du projet

[A COMPLETER : doit contenir la description fonctionnelle du projet destinée à un profil non technique]

## Contexte technique du projet

[A COMPLETER : doit expliquer brièvement quelles ressources / profils sont utilisés, exemple implémentation où IG est utilisé]

# CI/CD

Les workflows associés à ce repository (.github/workflows) permettent :

* D'executer Sushi pour vérifier la grammaire
* De faire les tests avec le validator_cli
* De publier les pages : https://ansforge.github.io/{nom du repo}/ig/{nom de la branche}

# Notes

Ce repo "IG-modele" a été créé à partir du repo [sample-ig](https://github.com/FHIR/sample-ig) de l'organisation GitHub FHIR.

[A COMPLETER: notes supplémentaires pour le lecteur de la spec]
Un commentaire ? Une remarque ? Utilisez les GitHub [issues](https://docs.github.com/fr/issues) pour indiquer vos propositions d'amélioration et de correction.

## Acronymes

* IG : Implementation Guide
* FHIR : Fast Healthcare Interoperability Resources
* HL7 : Health Level Seven

[A COMPLETER : acronymes utilisés dans le cadre de ce projet]
