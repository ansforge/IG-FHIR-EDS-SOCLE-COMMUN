Profile: Patient
Parent: FRCorePatientProfile
Title: "EDS Patient"
Description: "Profil Patient du socle commun des EDS"

* identifier contains
    INS-NIR 0..*

* identifier[INS-NIR] ^short = "INS-NIR - The patient national health identifier INS obtained by requesting the national patient identification service (CNAM) called the INSi teleservice. Identifiant national de santé (NIR) du patient INS provenant du téléservice INSi (service national d'identification des patients (CNAM))"
* identifier[INS-NIR].use = #official
* identifier[INS-NIR].type = $fr-core-v2-0203#INS-NIR
* identifier[INS-NIR].system = "urn:oid:1.2.250.1.213.1.4.8"
* identifier[INS-NIR].system ^short = "Autorité d'affectation des INS-NIR"
* identifier[INS-NIR].value 1..
* identifier[INS-NIR] MS

* gender MS
* gender from $fr-core-vs-patient-gender-INS (required)
* gender ^short = "male | female | unknown"

* birthDate MS
* deceased[x] MS

* address MS 
  * ^type.profile = https://interop.esante.gouv.fr/ig/fhir/eds/StructureDefinition/Address

* multipleBirth[x] MS