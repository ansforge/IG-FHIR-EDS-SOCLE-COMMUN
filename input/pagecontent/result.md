{% include markdown-link-references.md %}

Les résultats sont présentés par groupe d'items tel que définit dans le fichier socle de données.

### Données soci-démographiques

#### Identité patient

| Item | FHIRPath |
|------|----------|
| Numéro d'inscription au Répertoire (NIR) | [EDSPatient.identifier:NSS](StructureDefinition-EDSPatient.html#k-Patient.identifier.2) |
| Identité Nationale de Santé (INS) | [EDSPatient.identifier:INS-NIR](StructureDefinition-EDSPatient.html#k-Patient.identifier.7) |
| Date de naissance | [EDSPatient.birthDate](StructureDefinition-EDSPatient.html#k-Patient.birthDate) |
| Date de décès.Valeur | [EDSPatient.deceased[x]](StructureDefinition-EDSPatient.html#k-Patient.deceased_x_) |
| Date de décès.Source de la donnée | N/A |
| Rang gémellaire du bénéficiaire | [EDSPatient.multipleBirth[x]:multipleBirthInteger](StructureDefinition-EDSPatient.html#k-Patient.multipleBirth_x_.2) |

Le profil [EDSPatient] couvre 83,34% des items.

#### Environnement

| Item | FHIRPath |
|------|----------|
| Adresse géocodée.Value | [EDSAddress.extension:geolocation](StructureDefinition-EDSAddress.html#k-Address.extension.3) |
| Adresse géocodée.Date du recueil de l'information | N/A |
| IRIS de l'adresse.Value | [EDSAddress.extension:inseeCode](StructureDefinition-EDSAddress.html#k-Address.extension.2) |
| IRIS de l'adresse..Date du recueil de l'information | N/A |

Le profil [EDSAddress] couvre 50% des items.

### PMSI

| Item | FHIRPath |
|------|----------|
| Age.valeur | ? |
| Age.Date du recueil de l'information | [EDSClaimRSS.created](StructureDefinition-EDSClaimRSS.html#k-Claim.created) |
| Sexe | [EDSPatient.gender](StructureDefinition-EDSPatient.html#k-Patient.gender) |
| Code géographique de résidence | ? |
| Tous les diagnostics selon la classification CIM-10 à l’échelle du séjour | [EDSClaimRSS.diagnosis](StructureDefinition-EDSClaimRSS.html#k-Claim.diagnosis) |
| Actes | [EDSClaimRSS.procedure](StructureDefinition-EDSClaimRSS.html#k-Claim.procedure) |
| Actes.Date du recueil de l'information | [EDSClaimRSS.created](StructureDefinition-EDSClaimRSS.html#k-Claim.created) |
| Date de début du séjour | [EDSClaimRSS.billablePeriod.start](StructureDefinition-EDSClaimRSS.html#k-Claim.created) |
| Date de fin du séjour | [EDSClaimRSS.billablePeriod.end](StructureDefinition-EDSClaimRSS.html#k-Claim.created) |
| Mode d'entrée du séjour | [EDSClaimRSS.supportingInfo:ModeIn.value[x].valueString](StructureDefinition-EDSClaimRSS.html#k-Claim.supportingInfo.3) |
| Mode de sortie du séjour | [EDSClaimRSS.supportingInfo:ModeOut.value[x].valueString](StructureDefinition-EDSClaimRSS.html#k-Claim.supportingInfo.4) |

Le profil [EDSPatient] couvre 11,11% des items.
Le profil [EDSClaimRSS] couvre 72,72% des items.
La couverture totale est de 83,83% des items.

La variable `Age` n'a pas grand sens dans la mesure où l'on a la date de naissance du patient.
La variable `Code géographique de résidence` n'a pas grand sens dans le mesure où l'on des informations sur l'adresse du patient.

### Résultats d'examens biologiques

| Item | FHIRPath |
|------|----------|
| Dosage de l'urée dans le sang.Valeur |  |
| Dosage de l'urée dans le sang.Date et heure du prélèvement | |
| Dosage de l'urée dans le sang.Unité de mesure | |
| Dosage de l'urée dans le sang.Statut de validation | |
| Dosage de l'urée dans le sang.Borne inférieure de normalité du résultat | |
| Dosage de l'urée dans le sang.Borne supérieure de normalité du résultat | |
| Créatininémie.Valeur |  |
| Créatininémie.Date et heure du prélèvement | |
| Créatininémie.Unité de mesure | |
| Créatininémie.Statut de validation | |
| Créatininémie.Borne inférieure de normalité du résultat | |
| Créatininémie.Borne supérieure de normalité du résultat | |
| Débit de filtration glomérulaire (DFG).Valeur |  |
| Débit de filtration glomérulaire (DFG).Date et heure du prélèvement | |
| Débit de filtration glomérulaire (DFG).Unité de mesure | |
| Débit de filtration glomérulaire (DFG).Statut de validation | |
| Débit de filtration glomérulaire (DFG).Borne inférieure de normalité du résultat | |
| Débit de filtration glomérulaire (DFG).Borne supérieure de normalité du résultat | |
| Leucocytes.Valeur |  |
| Leucocytes.Date et heure du prélèvement | |
| Leucocytes.Unité de mesure | |
| Leucocytes.Statut de validation | |
| Leucocytes.Borne inférieure de normalité du résultat | |
| Leucocytes.Borne supérieure de normalité du résultat | |
| Hémoglobine.Valeur | |
| Hémoglobine.Date et heure du prélèvement | |
| Hémoglobine.Unité de mesure | |
| Hémoglobine.Statut de validation | |
| Hémoglobine.Borne inférieure de normalité du résultat | |
| Hémoglobine.Borne supérieure de normalité du résultat | |
| Hématocrite.Valeur |
| Hématocrite.Date et heure du prélèvement | |
| Hématocrite.Unité de mesure | |
| Hématocrite.Statut de validation | |
| Hématocrite.Borne inférieure de normalité du résultat | |
| Hématocrite.Borne supérieure de normalité du résultat | |
| Globules rouges.Valeur | |
| Globules rouges.Date et heure du prélèvement | |
| Globules rouges.Unité de mesure | |
| Globules rouges.Statut de validation | |
| Globules rouges.Borne inférieure de normalité du résultat | |
| Globules rouges.Borne supérieure de normalité du résultat | |
| Volume Globulaire Moyen (VGM).Valeur | |
| Volume Globulaire Moyen (VGM).Date et heure du prélèvement | |
| Volume Globulaire Moyen (VGM).Unité de mesure | |
| Volume Globulaire Moyen (VGM).Statut de validation | |
| Volume Globulaire Moyen (VGM).Borne inférieure de normalité du résultat | |
| Volume Globulaire Moyen (VGM).Borne supérieure de normalité du résultat | |
| Plaquettes.Valeur | |
| Plaquettes.Date et heure du prélèvement | |
| Plaquettes.Unité de mesure | |
| Plaquettes.Statut de validation | |
| Plaquettes.Borne inférieure de normalité du résultat | |
| Plaquettes.Borne supérieure de normalité du résultat | |
| Neutrophiles.Valeur | |
| Neutrophiles.Date et heure du prélèvement | |
| Neutrophiles.Unité de mesure | |
| Neutrophiles.Statut de validation | |
| Neutrophiles.Borne inférieure de normalité du résultat | |
| Neutrophiles.Borne supérieure de normalité du résultat | |
| Lymphocytes.Valeur | |
| Lymphocytes.Date et heure du prélèvement | |
| Lymphocytes.Unité de mesure | |
| Lymphocytes.Statut de validation | |
| Lymphocytes.Borne inférieure de normalité du résultat | |
| Lymphocytes.Borne supérieure de normalité du résultat | |
| Eosinophiles.Valeur | |
| Eosinophiles.Date et heure du prélèvement | |
| Eosinophiles.Unité de mesure | |
| Eosinophiles.Statut de validation | |
| Eosinophiles.Borne inférieure de normalité du résultat | |
| Eosinophiles.Borne supérieure de normalité du résultat | |
| Monocytes.Valeur | | 
| Monocytes.Date et heure du prélèvement | |
| Monocytes.Unité de mesure | |
| Monocytes.Statut de validation | |
| Monocytes.Borne inférieure de normalité du résultat | |
| Monocytes.Borne supérieure de normalité du résultat | |
| Taux de prothrombine (TP).Valeur | |
| Taux de prothrombine (TP).Date et heure du prélèvement | |
| Taux de prothrombine (TP).Unité de mesure | |
| Taux de prothrombine (TP).Statut de validation | |
| Taux de prothrombine (TP).Borne inférieure de normalité du résultat | |
| Taux de prothrombine (TP).Borne supérieure de normalité du résultat | |
| Temps de céphaline activée (TCA).Valeur | |
| Temps de céphaline activée (TCA).Date et heure du prélèvement | |
| Temps de céphaline activée (TCA).Unité de mesure | |
| Temps de céphaline activée (TCA).Statut de validation | |
| Temps de céphaline activée (TCA).Borne inférieure de normalité du résultat | |
| Temps de céphaline activée (TCA).Borne supérieure de normalité du résultat | |
| Aspartate aminotransférase (AST).Valeur | | 
| Aspartate aminotransférase (AST).Date et heure du prélèvement | |
| Aspartate aminotransférase (AST).Unité de mesure | |
| Aspartate aminotransférase (AST).Statut de validation | |
| Aspartate aminotransférase (AST).Borne inférieure de normalité du résultat | |
| Aspartate aminotransférase (AST).Borne supérieure de normalité du résultat | |
| Alanine aminotransférase (ALT).Valeur | | 
| Alanine aminotransférase (ALT).Date et heure du prélèvement | |
| Alanine aminotransférase (ALT).Unité de mesure | |
| Alanine aminotransférase (ALT).Statut de validation | |
| Alanine aminotransférase (ALT).Borne inférieure de normalité du résultat | |
| Alanine aminotransférase (ALT).Borne supérieure de normalité du résultat | |
| Gamma-glutamyl transférase (GGT).Valeur | | 
| Gamma-glutamyl transférase (GGT).Date et heure du prélèvement | |
| Gamma-glutamyl transférase (GGT).Unité de mesure | |
| Gamma-glutamyl transférase (GGT).Statut de validation | |
| Gamma-glutamyl transférase (GGT).Borne inférieure de normalité du résultat | |
| Gamma-glutamyl transférase (GGT).Borne supérieure de normalité du résultat | |
| Phosphatases alcalines (PAL).Valeur | | 
| Phosphatases alcalines (PAL).Date et heure du prélèvement | |
| Phosphatases alcalines (PAL).Unité de mesure | |
| Phosphatases alcalines (PAL).Statut de validation | |
| Phosphatases alcalines (PAL).Borne inférieure de normalité du résultat | |
| Phosphatases alcalines (PAL).Borne supérieure de normalité du résultat | |
| Bilirubine totale.Valeur | | 
| Bilirubine totale.Date et heure du prélèvement | |
| Bilirubine totale.Unité de mesure | |
| Bilirubine totale.Statut de validation | |
| Bilirubine totale.Borne inférieure de normalité du résultat | |
| Bilirubine totale.Borne supérieure de normalité du résultat | |
| Bilirubine conjuguée.Valeur | | 
| Bilirubine conjuguée.Date et heure du prélèvement | |
| Bilirubine conjuguée.Unité de mesure | |
| Bilirubine conjuguée.Statut de validation | |
| Bilirubine conjuguée.Borne inférieure de normalité du résultat | |
| Bilirubine conjuguée.Borne supérieure de normalité du résultat | |
| Glycémie à jeun.Valeur | | 
| Glycémie à jeun.Date et heure du prélèvement | |
| Glycémie à jeun.Unité de mesure | |
| Glycémie à jeun.Statut de validation | |
| Glycémie à jeun.Borne inférieure de normalité du résultat | |
| Glycémie à jeun.Borne supérieure de normalité du résultat | |
| Hémoglobine glyquée.Valeur | | 
| Hémoglobine glyquée.Date et heure du prélèvement | |
| Hémoglobine glyquée.Unité de mesure | |
| Hémoglobine glyquée.Statut de validation | |
| Hémoglobine glyquée.Borne inférieure de normalité du résultat | |
| Hémoglobine glyquée.Borne supérieure de normalité du résultat | |

### Exposition médicamenteuses

| Item | FHIRPath |
|------|----------|
| Médicament prescrit |  |
| Médicament prescrit.Libellé UCD |  |
| Médicament prescrit.Libellé DCI |  |
| Médicament prescrit.Libellé commercial |  |
| Médicament prescrit.Code UCD |  |
| Médicament prescrit.Code ATC |  |
| Médicament prescrit.Code CIP 13 |  |
| Médicament prescrit.Voie d'administration |  |
| Posologie.Valeur | |
| Posologie.Date de début de la prescription | |
| Posologie.Date de fin de la prescription | |
| Médicament administré | |
| Médicament administré.Libellé UCD |  |
| Médicament administré.Libellé DCI |  |
| Médicament administré.Libellé commercial |  |
| Médicament administré.Code UCD |  |
| Médicament administré.Code ATC |  |
| Médicament administré.Code CIP 13 |  |
| Médicament administré.Voie d'administration |  |
| Dosage.Valeur | |
| Dosage.Unité | |
| Dosage.Date et heure de début de l'adminstration | |
| Dosage.Date et heure de fin de l'adminstration | |

Il existe un GT piloté par Interop'santé, on trouvera le résultat des travaux ici : https://github.com/Interop-Sante/hl7.fhir.fr.medication

### Examen clinique

#### Dossier de soins

| Item | FHIRPath |
|------|----------|
| Taille.Date de la mesure | [EDSObservationBodyHeight.effective](StructureDefinition-EDSObservationBodyHeight.html#k-Observation.effective_x_) |
| Taille.valeur | [EDSObservationBodyHeight.value[x]:valueQuantity.value](StructureDefinition-EDSObservationBodyHeight.html#k-Observation.value_x_.value) |
| Taille.Unité de mesure | [EDSObservationBodyHeight.value[x]:valueQuantity.unit](StructureDefinition-EDSObservationBodyHeight.html#k-Observation.value_x_.unit) |
| Poids.Date de la mesure | [EDSObservationBodyWeight.effective](StructureDefinition-EDSObservationBodyWeight.html#k-Observation.effective_x_) |
| Poids.valeur | [EDSObservationBodyWeight.value[x]:valueQuantity.value](StructureDefinition-EDSObservationBodyWeight.html#k-Observation.value_x_.value) |
| Poids.Unité de mesure | [EDSObservationBodyWeight.value[x]:valueQuantity.unit](StructureDefinition-EDSObservationBodyWeight.html#k-Observation.value_x_.unit) |
| Pression artérielle systolique.Date et heure de la mesure | [EDSObservationBloodPressure.effective](StructureDefinition-EDSObservationBloodPressure.html#k-Observation.effective_x_) |
| Pression artérielle systolique.valeur | [EDSObservationBloodPressure.component:SystolicBP.value[x]:valueQuantity.value](StructureDefinition-EDSObservationBloodPressure.html#k-Observation.component.value_x_.value) |
| Pression artérielle systolique.Unité de mesure | [EDSObservationBloodPressure.component:SystolicBP.value[x]:valueQuantity.unit](StructureDefinition-EDSObservationBloodPressure.html#k-Observation.component.value_x_.unit) |
| Pression artérielle diastolique.Date et heure de la mesure | [EDSObservationBloodPressure.effective](StructureDefinition-EDSObservationBloodPressure.html#k-Observation.effective_x_) |
| Pression artérielle diastolique.valeur | [EDSObservationBloodPressure.component:DiastolicBP.value[x]:valueQuantity.value](StructureDefinition-EDSObservationBloodPressure.html#k-Observation.component.value_x_.value.2) |
| Pression artérielle diastolique.Unité de mesure | [EDSObservationBloodPressure.component:DiastolicBP.value[x]:valueQuantity.unit](StructureDefinition-EDSObservationBloodPressure.html#k-Observation.component.value_x_.unit.2) |

100% des items sont couvert par les 3 profils :

* Taille : [EDSObservationBodyHeight] ;
* Poids : [EDSObservationBodyWeight] ;
* Pression artérielle : [EDSObservationBloodPressure].

#### Style de vie

| Item | FHIRPath |
|------|----------|
| Consommation de tabac | [EDSObservationSmokingStatus] |
| Consommation d'alcool | [EDSObservationAlcoholUseStatus] |
| Consommation d'autres drogues | [EDSObservationSubstanceUseStatus] |
| Activité physique | [EDSObservationExerciceStatus] |

À partir des éléments trouvés dans le guide d'implémentation US Core, nous avons proposé les `StructureDefinition` adaptées pour chaque item de la rubrique "style de vie".

Il est difficile de réaliser un alignement précis, car les propriétés attendues n'ont pas été définies lors du groupe de travail précédent. Ce travail reste à faire, néanmoins, cette proposition contribue à l'élaboration de ces définitions.