{% include markdown-link-references.md %}

Les résultats sont présentés par groupe d'items tel que définit dans le fichier socle de données.

### Données socio-démographiques

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
| Mode d'entrée du séjour | [EDSClaimRSS.supportingInfo:ModeIn.value[x]:valueString](StructureDefinition-EDSClaimRSS.html#k-Claim.supportingInfo.3) |
| Mode de sortie du séjour | [EDSClaimRSS.supportingInfo:ModeOut.value[x]:valueString](StructureDefinition-EDSClaimRSS.html#k-Claim.supportingInfo.4) |

Le profil [EDSPatient] couvre 11,11% des items.
Le profil [EDSClaimRSS] couvre 72,72% des items.
La couverture totale est de 83,83% des items.

La variable `Age` n'a pas grand sens dans la mesure où l'on a la date de naissance du patient.
La variable `Code géographique de résidence` n'a pas grand sens dans le mesure où l'on des informations sur l'adresse du patient.

### Résultats d'examens biologiques

| Item | FHIRPath |
|------|----------|
| Dosage de l'urée dans le sang.Date et heure du prélèvement | [EDSObservationLaboratoryUremie.effective[x]:effectiveDateTime](StructureDefinition-EDSObservationLaboratoryUremie-definitions.html#key_Observation.effective[x]) |
| Dosage de l'urée dans le sang.Statut de validation | [EDSObservationLaboratoryUremie.status](StructureDefinition-EDSObservationLaboratoryUremie-definitions.html#key_Observation.status) |
| Dosage de l'urée dans le sang.Valeur | [EDSObservationLaboratoryUremie.value[x]:valueQuantity.value](StructureDefinition-EDSObservationLaboratoryUremie-definitions.html#key_Observation.value[x]) |
| Dosage de l'urée dans le sang.Code de l'unité de mesure | [EDSObservationLaboratoryUremie.value[x]:valueQuantity.code](StructureDefinition-EDSObservationLaboratoryUremie-definitions.html#key_Observation.value[x].code) |
| Dosage de l'urée dans le sang.CodeSystem de l'unité de mesure | [EDSObservationLaboratoryUremie.value[x]:valueQuantity.system](StructureDefinition-EDSObservationLaboratoryUremie-definitions.html#key_Observation.value[x].system) |
| Dosage de l'urée dans le sang.Bornes de normalité du résultat | [EDSObservationLaboratoryUremie.referenceRange](StructureDefinition-EDSObservationLaboratoryUremie-definitions.html#key_Observation.referenceRange) |
| Créatininémie.Date et heure du prélèvement | [EDSObservationLaboratoryFonctionRenale.effective[x]:effectiveDateTime](StructureDefinition-EDSObservationLaboratoryFonctionRenale-definitions.html#key_Observation.effective[x]) |
| Créatininémie.Statut de validation | [EDSObservationLaboratoryFonctionRenale.status](StructureDefinition-EDSObservationLaboratoryFonctionRenale-definitions.html#key_Observation.status) |
| Créatininémie.Valeur | [EDSObservationLaboratoryFonctionRenale.component:Creat.value[x]:valueQuantity.value](StructureDefinition-EDSObservationLaboratoryFonctionRenale-definitions.html#key_Observation.component:Creat.value[x]) |
| Créatininémie.Code de l'unité de mesure | [EDSObservationLaboratoryFonctionRenale.component:Creat.value[x]:valueQuantity.code](StructureDefinition-EDSObservationLaboratoryFonctionRenale-definitions.html#key_Observation.component:Creat.value[x].code) |
| Créatininémie.CodeSystem de l'unité de mesure | [EDSObservationLaboratoryFonctionRenale.component:Creat.value[x]:valueQuantity.system](StructureDefinition-EDSObservationLaboratoryFonctionRenale-definitions.html#key_Observation.component:Creat.value[x].system) |
| Créatininémie.Bornes de normalité du résultat | [EDSObservationLaboratoryCreatininemie.component:Creat.referenceRange](StructureDefinition-EDSObservationLaboratoryFonctionRenale-definitions.html#key_Observation.component:Creat.referenceRange) |
| Débit de filtration glomérulaire (DFG).Date et heure du prélèvement | [EDSObservationLaboratoryFonctionRenale.effective[x]:effectiveDateTime](StructureDefinition-EDSObservationLaboratoryFonctionRenale-definitions.html#key_Observation.effective[x]) |
| Débit de filtration glomérulaire (DFG).Statut de validation | [EDSObservationLaboratoryFonctionRenale.status](StructureDefinition-EDSObservationLaboratoryFonctionRenale-definitions.html#key_Observation.status) |
| Débit de filtration glomérulaire (DFG).Valeur | [EDSObservationLaboratoryFonctionRenale.component:DFG.value[x]:valueQuantity.value](StructureDefinition-EDSObservationLaboratoryFonctionRenale-definitions.html#key_Observation.component:Dfg.value[x]) |
| Débit de filtration glomérulaire (DFG).Code de l'unité de mesure | [EDSObservationLaboratoryFonctionRenale.component:DFG.value[x]:valueQuantity.code](StructureDefinition-EDSObservationLaboratoryFonctionRenale-definitions.html#key_Observation.component:Dfg.value[x].code) |
| Débit de filtration glomérulaire (DFG).CodeSystem de l'unité de mesure | [EDSObservationLaboratoryFonctionRenale.component:DFG.value[x]:valueQuantity.system](StructureDefinition-EDSObservationLaboratoryFonctionRenale-definitions.html#key_Observation.component:Dfg.value[x].system) |
| Débit de filtration glomérulaire (DFG).Bornes de normalité du résultat | [EDSObservationLaboratoryFonctionRenale.component:DFG.referenceRange](StructureDefinition-EDSObservationLaboratoryFonctionRenale-definitions.html#key_Observation.component:Dfg.referenceRange) |
| Leucocytes.Date et heure du prélèvement | |
| Leucocytes.Statut de validation | |
| Leucocytes.Valeur |  |
| Leucocytes.Code de l'unité de mesure | |
| Leucocytes.CodeSystem de l'unité de mesure | |
| Leucocytes.Bornes de normalité du résultat | |
| Hémoglobine.Date et heure du prélèvement | |
| Hémoglobine.Statut de validation | |
| Hémoglobine.Valeur | |
| Hémoglobine.Code de l'unité de mesure | |
| Hémoglobine.CodeSystem de l'unité de mesure | |
| Hémoglobine.Bornes de normalité du résultat | |
| Hématocrite.Date et heure du prélèvement | |
| Hématocrite.Statut de validation | |
| Hématocrite.Valeur |
| Hématocrite.Code de l'unité de mesure | |
| Hématocrite.CodeSystem de l'unité de mesure | |
| Hématocrite.Bornes de normalité du résultat | |
| Globules rouges.Date et heure du prélèvement | |
| Globules rouges.Statut de validation | |
| Globules rouges.Valeur | |
| Globules rouges.Code de l'unité de mesure | |
| Globules rouges.CodeSystem de l'unité de mesure | |
| Globules rouges.Bornes de normalité du résultat | |
| Volume Globulaire Moyen (VGM).Date et heure du prélèvement | |
| Volume Globulaire Moyen (VGM).Statut de validation | |
| Volume Globulaire Moyen (VGM).Valeur | |
| Volume Globulaire Moyen (VGM).Code de l'unité de mesure | |
| Volume Globulaire Moyen (VGM).CodeSystem de l'unité de mesure | |
| Volume Globulaire Moyen (VGM).Bornes de normalité du résultat | |
| Plaquettes.Date et heure du prélèvement | |
| Plaquettes.Statut de validation | |
| Plaquettes.Valeur | |
| Plaquettes.Code de l'unité de mesure | |
| Plaquettes.CodeSystem de l'unité de mesure | |
| Plaquettes.Bornes de normalité du résultat | |
| Neutrophiles.Date et heure du prélèvement | |
| Neutrophiles.Statut de validation | |
| Neutrophiles.Valeur | |
| Neutrophiles.Code de l'unité de mesure | |
| Neutrophiles.CodeSystem de l'unité de mesure | |
| Neutrophiles.Bornes de normalité du résultat | |
| Lymphocytes.Date et heure du prélèvement | |
| Lymphocytes.Statut de validation | |
| Lymphocytes.Valeur | |
| Lymphocytes.Code de l'unité de mesure | |
| Lymphocytes.CodeSystem de l'unité de mesure | |
| Lymphocytes.Bornes de normalité du résultat | |
| Eosinophiles.Date et heure du prélèvement | |
| Eosinophiles.Statut de validation | |
| Eosinophiles.Valeur | |
| Eosinophiles.Code de l'unité de mesure | |
| Eosinophiles.CodeSystem de l'unité de mesure | |
| Eosinophiles.Bornes de normalité du résultat | |
| Monocytes.Date et heure du prélèvement | |
| Monocytes.Statut de validation | |
| Monocytes.Valeur | | 
| Monocytes.Code de l'unité de mesure | |
| Monocytes.CodeSystem de l'unité de mesure | |
| Monocytes.Bornes de normalité du résultat | |
| Taux de prothrombine (TP).Date et heure du prélèvement | |
| Taux de prothrombine (TP).Statut de validation | |
| Taux de prothrombine (TP).Valeur | |
| Taux de prothrombine (TP).Code de l'unité de mesure | |
| Taux de prothrombine (TP).CodeSystem de l'unité de mesure | |
| Taux de prothrombine (TP).Bornes de normalité du résultat | |
| Temps de céphaline activée (TCA).Date et heure du prélèvement | [EDSObservationLaboratoryTCA.effective[x]:effectiveDateTime](StructureDefinition-EDSObservationLaboratoryTCA-definitions.html#key_Observation.effective[x]) |
| Temps de céphaline activée (TCA).Statut de validation | [EDSObservationLaboratoryTCA.status](StructureDefinition-EDSObservationLaboratoryTCA-definitions.html#Observation.status) |
| Temps de céphaline activée (TCA).Valeur témoin | [EDSObservationLaboratoryTCA.component:ControlTCA.value[x]:valueQuantity.value](StructureDefinition-EDSObservationLaboratoryTCA-definitions.html#key_Observation.component:ControlTCA.value[x]) |
| Temps de céphaline activée (TCA).Code de l'unité de la valeur témoin | [EDSObservationLaboratoryTCA.component:ControlTCA.value[x]:valueQuantity.code](StructureDefinition-EDSObservationLaboratoryTCA-definitions.html#key_Observation.component:ControlTCA.value[x].code) |
| Temps de céphaline activée (TCA).CodeSystem de l'unité de la valeur témoin | [EDSObservationLaboratoryTCA.component:ControlTCA.value[x]:valueQuantity.system](StructureDefinition-EDSObservationLaboratoryTCA-definitions.html#key_Observation.component:ControlTCA.value[x].system) |
| Temps de céphaline activée (TCA).Valeur patient | [EDSObservationLaboratoryTCA.component:PatientTCA.value[x]:valueQuantity.value](StructureDefinition-EDSObservationLaboratoryTCA-definitions.html#key_Observation.component:PatientTCA.value[x]) |
| Temps de céphaline activée (TCA).Code de l'unité de la valeur patient | [EDSObservationLaboratoryTCA.component:PatientTCA.value[x]:valueQuantity.code](StructureDefinition-EDSObservationLaboratoryTCA-definitions.html#key_Observation.component:PatientTCA.value[x].code) |
| Temps de céphaline activée (TCA).CodeSystem de l'unité de la valeur patient | [EDSObservationLaboratoryTCA.component:PatientTCA.value[x]:valueQuantity.system](StructureDefinition-EDSObservationLaboratoryTCA-definitions.html#key_Observation.component:PatientTCA.value[x].system) |
| Temps de céphaline activée (TCA).ratio | [EDSObservationLaboratoryTCA.component:TCARatioPonC.value[x]:valueQuantity.value](StructureDefinition-EDSObservationLaboratoryTCA-definitions.html#key_Observation.component:TCARatioPonC) |
| Temps de céphaline activée (TCA).Bornes de normalité du ratio | [EDSObservationLaboratoryTCA.component:TCARatioPonC.referenceRange](StructureDefinition-EDSObservationLaboratoryTCA-definitions.html#key_Observation.component:TCARatioPonC.referenceRange) |
| Temps de céphaline activée (TCA).indice de Rosner | [EDSObservationLaboratoryTCA.component:TCARatioPonC.value[x]:valueQuantity.value](StructureDefinition-EDSObservationLaboratoryTCA-definitions.html#key_Observation.component:TCARatioPonC.value[x]) |
| Aspartate aminotransférase (AST).Date et heure du prélèvement | |
| Aspartate aminotransférase (AST).Statut de validation | |
| Aspartate aminotransférase (AST).Valeur | | 
| Aspartate aminotransférase (AST).Code de l'unité de mesure | |
| Aspartate aminotransférase (AST).CodeSystem de l'unité de mesure | |
| Aspartate aminotransférase (AST).Bornes de normalité du résultat | |
| Alanine aminotransférase (ALT).Date et heure du prélèvement | |
| Alanine aminotransférase (ALT).Statut de validation | |
| Alanine aminotransférase (ALT).Valeur | | 
| Alanine aminotransférase (ALT).Code de l'unité de mesure | |
| Alanine aminotransférase (ALT).CodeSystem de l'unité de mesure | |
| Alanine aminotransférase (ALT).Bornes de normalité du résultat | |
| Gamma-glutamyl transférase (GGT).Date et heure du prélèvement | |
| Gamma-glutamyl transférase (GGT).Statut de validation | |
| Gamma-glutamyl transférase (GGT).Valeur | | 
| Gamma-glutamyl transférase (GGT).Code de l'unité de mesure | |
| Gamma-glutamyl transférase (GGT).CodeSystem de l'unité de mesure | |
| Gamma-glutamyl transférase (GGT).Bornes de normalité du résultat | |
| Phosphatases alcalines (PAL).Date et heure du prélèvement | |
| Phosphatases alcalines (PAL).Statut de validation | |
| Phosphatases alcalines (PAL).Valeur | | 
| Phosphatases alcalines (PAL).Code de l'unité de mesure | |
| Phosphatases alcalines (PAL).CodeSystem de l'unité de mesure | |
| Phosphatases alcalines (PAL).Bornes de normalité du résultat | |
| Bilirubine totale.Date et heure du prélèvement | |
| Bilirubine totale.Statut de validation | |
| Bilirubine totale.Valeur | | 
| Bilirubine totale.Code de l'unité de mesure | |
| Bilirubine totale.CodeSystem de l'unité de mesure | |
| Bilirubine totale.Bornes de normalité du résultat | |
| Bilirubine conjuguée.Date et heure du prélèvement | |
| Bilirubine conjuguée.Statut de validation | |
| Bilirubine conjuguée.Valeur | | 
| Bilirubine conjuguée.Code de l'unité de mesure | |
| Bilirubine conjuguée.CodeSystem de l'unité de mesure | |
| Bilirubine conjuguée.Bornes de normalité du résultat | |
| Glycémie à jeun.Date et heure du prélèvement | |
| Glycémie à jeun.Statut de validation | |
| Glycémie à jeun.Valeur | | 
| Glycémie à jeun.Code de l'unité de mesure | |
| Glycémie à jeun.CodeSystem de l'unité de mesure | |
| Glycémie à jeun.Bornes de normalité du résultat | |
| Hémoglobine glyquée.Date et heure du prélèvement | |
| Hémoglobine glyquée.Statut de validation | |
| Hémoglobine glyquée.Valeur | | 
| Hémoglobine glyquée.Code de l'unité de mesure | |
| Hémoglobine glyquée.CodeSystem de l'unité de mesure | |
| Hémoglobine glyquée.Bornes de normalité du résultat | |

Seul quatre analyses ont été traitées : urémie, créatininémie, estimation du DFG et TCA. L'approche est a priori simple à généraliser pour les données du socle commun. 



### Exposition médicamenteuses

| Item | FHIRPath |
|------|----------|
| Médicament prescrit.Libellé UCD | [MedicationRequest.medication\[x\]:FrMedicationUcd.code.text](StructureDefinition-EDSMedicationRequest.html#k-MedicationRequest.medication_x_) |
| Médicament prescrit.Libellé DCI | [MedicationRequest.medication\[x\]:FrMedicationNonproprietaryName.code.text](StructureDefinition-EDSMedicationRequest.html#k-MedicationRequest.medication_x_) |
| Médicament prescrit.Libellé commercial | [MedicationRequest.medication\[x\].code.text](StructureDefinition-EDSMedicationRequest.html#k-MedicationRequest.medication_x_) |
| Médicament prescrit.Code UCD | [MedicationRequest.medication\[x\]:FrMedicationUcd.code.coding\[0\].code](StructureDefinition-EDSMedicationRequest.html#k-MedicationRequest.medication_x_) |
| Médicament prescrit.Code ATC | [MedicationRequest.medication\[x\].code.coding\[0\].code](StructureDefinition-EDSMedicationRequest.html#k-MedicationRequest.medication_x_) |
| Médicament prescrit.Code CIP 13 | [MedicationRequest.medication\[x\].code.coding\[0\].code](StructureDefinition-EDSMedicationRequest.html#k-MedicationRequest.medication_x_) |
| Médicament prescrit.Voie d'administration | [MedicationRequest.dosageInstruction.route](StructureDefinition-EDSMedicationRequest.html#k-MedicationRequest.dosageInstruction.route) |
| Posologie.Valeur | [MedicationRequest.dosageInstruction.doseAndRate](StructureDefinition-EDSMedicationRequest.html#k-MedicationRequest.dosageInstruction.doseAndRate) |
| Posologie.Date de début de la prescription | [MedicationRequest.dosageInstruction.timing](StructureDefinition-EDSMedicationRequest.html#k-MedicationRequest.dosageInstruction.timing) |
| Posologie.Date de fin de la prescription | [MedicationRequest.dosageInstruction.timing](StructureDefinition-EDSMedicationRequest.html#k-MedicationRequest.dosageInstruction.timing) |
| Médicament administré.Libellé UCD | [MedicationAdministration.medication\[x\]:FrMedicationUcd.code.text](StructureDefinition-EDSMedicationAdministration.html#k-MedicationAdministration.medication_x_) |
| Médicament administré.Libellé DCI | [MedicationAdministration.medication\[x\]:FrMedicationNonproprietaryName.code.text](StructureDefinition-EDSMedicationAdministration.html#k-MedicationAdministration.medication_x_) |
| Médicament administré.Libellé commercial | [MedicationAdministration.medication\[x\].code.text](StructureDefinition-EDSMedicationAdministration.html#k-MedicationAdministration.medication_x_) |
| Médicament administré.Code UCD | [MedicationAdministration.medication\[x\]:FrMedicationUcd.code.coding\[0\].code](StructureDefinition-EDSMedicationAdministration.html#k-MedicationAdministration.medication_x_) |
| Médicament administré.Code ATC | [MedicationAdministration.medication\[x\].code.coding\[0\].code](StructureDefinition-EDSMedicationAdministration.html#k-MedicationAdministration.medication_x_) |
| Médicament administré.Code CIP 13 | [MedicationAdministration.medication\[x\].code.coding\[0\].code](StructureDefinition-EDSMedicationAdministration.html#k-MedicationAdministration.medication_x_) |
| Médicament administré.Voie d'administration | [MedicationAdministration.dosage.route](StructureDefinition-EDSMedicationAdministration.html#k-MedicationAdministration.dosage.route) |
| Dosage.Valeur | [MedicationAdministration.dosage.dose.value](StructureDefinition-EDSMedicationAdministration.html#k-MedicationAdministration.dosage.dose) |
| Dosage.Unité | [MedicationAdministration.dosage.dose.unit](StructureDefinition-EDSMedicationAdministration.html#k-MedicationAdministration.dosage.dose) |
| Dosage.Date et heure de début de l'adminstration | [MedicationAdministration.effective\[x\]](StructureDefinition-EDSMedicationAdministration.html#k-MedicationAdministration.effective_x_) |
| Dosage.Date et heure de fin de l'adminstration | [MedicationAdministration.effective\[x\]](StructureDefinition-EDSMedicationAdministration.html#k-MedicationAdministration.effective_x_) |

Cet alignement s'appuie sur les travaux du GT Medication piloté par Interop'santé, on trouvera le résultat des travaux [ici](https://github.com/Interop-Sante/hl7.fhir.fr.medication).

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