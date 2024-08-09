Profile: EDSObservationExerciceStatus
Parent: Observation
Title: "Activité physique"
Description: """
. It specifies which core elements, extensions, vocabularies, and value sets **SHALL** be present and constrains how the elements are used. Providing the floor for standards development for specific use cases promotes interoperability and adoption.
"""

* obeys eds-exercice-minutes-per-day and eds-exercice-days-per-week
* . ^alias = "Obs"
* . ^mustSupport = false

* status MS

* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains 
  SocialHistory 1..1 MS
  and PhysicalActivity 1..1 MS

* category[SocialHistory] = $observation-category#social-history (exactly)
* category[PhysicalActivity] = $observation-category#activity (exactly)

* code MS
* code from EDSExerciceStatusType (extensible)
* code ^short = "Exercice Status"
* code ^condition[0] = "eds-exercice-minutes-per-day"
* code ^condition[+] = "eds-exercice-days-per-week"
* code ^binding.description = "Exercice status type"

* subject 1..1 MS
* subject only Reference(EDSPatient)
* subject ^type[0].targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* subject ^type[=].targetProfile[=].extension.valueBoolean = true

* effective[x] only dateTime or Period or Timing or instant
* effective[x] MS
* effective[x] ^type[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type[=].extension.valueBoolean = true

* performer only Reference($fr-core-practitioner or $fr-core-organization or EDSPatient or PractitionerRole or CareTeam or RelatedPerson)
* performer MS
* performer ^type[0].targetProfile[0].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* performer ^type[=].targetProfile[=].extension.valueBoolean = false
* performer ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* performer ^type[=].targetProfile[=].extension.valueBoolean = false
* performer ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* performer ^type[=].targetProfile[=].extension.valueBoolean = false
* performer ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* performer ^type[=].targetProfile[=].extension.valueBoolean = false
* performer ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* performer ^type[=].targetProfile[=].extension.valueBoolean = false
* performer ^type[=].targetProfile[+].extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* performer ^type[=].targetProfile[=].extension.valueBoolean = false

* value[x] only Quantity
* value[x] MS
* value[x] ^condition[0] = "eds-exercice-minutes-per-day"
* value[x] ^condition[+] = "eds-exercice-days-per-week"

* valueQuantity 0..1 MS
* valueQuantity ^short = "Quantitative Response"