Profile: EDSObservationSmokingStatus
Parent: Observation
Title: "Consommation de tabac"
Description: "Profil pour la consommation de tabac."

* obeys eds-0 and eds-1
* . ^alias = "Obs"
* . ^mustSupport = false

* status MS
* status from EDSObservationSmokingStatusStatus (required)
* status ^short = "final | entered-in-error"

* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains SocialHistory 1..1 MS
* category[SocialHistory] = $observation-category#social-history

* code MS
* code from EDSSmokingStatusType (extensible)
* code ^short = "Smoking Status"
* code ^condition[0] = "eds-0"
* code ^condition[+] = "eds-1"
* code ^binding.description = "Smoking status type"

* subject 1.. MS
* subject only Reference(EDSPatient)
* effective[x] 1.. MS
* effective[x] only dateTime or Period

* value[x] 1.. MS
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* value[x] ^condition[0] = "eds-0"
* value[x] ^condition[+] = "eds-1"

* valueQuantity 0..1 MS
* valueQuantity only Quantity
* valueQuantity from UnitsOfMeasureCaseSensitive (required)
* valueQuantity ^sliceName = "valueQuantity"
* valueQuantity ^short = "Quantitative Response"

* valueCodeableConcept 0..1 MS
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from EDSSmokingStatusComprehensive (extensible)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^short = "Coded Response"
* valueCodeableConcept ^binding.description = "Smoking status comprehensive"