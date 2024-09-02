Profile: EDSObservationLaboratoryTCA
Parent: EDSObservationLaboratoryGeneric 
Title: "Temps de céphaline activée"
Description: """
Profil des résultats de TCA - socle commun des EDS
"""

* code = $loinc#50197-3 "Temps de céphaline activée panel [-] Plasma pauvre en plaquettes ; Numérique"

* component ^slicing.discriminator[0].type = #value
* component ^slicing.discriminator[=].path = "code"
* component ^slicing.rules = #open
* component ^short = "Permet de rapporter le temps patient, le temps témoins et le ratio."
* component contains
    PatientTCA 1..1 MS and
    ControlTCA 1..1 MS and
    TCARatioPonC 1..1 MS

* component[PatientTCA] ^short = "pour rapporter le TCA patient."
* component[PatientTCA].code = $loinc#14979-9 
* component[PatientTCA].value[x] only Quantity
* component[PatientTCA].valueQuantity ^short = "Valeur mesurée"
* component[PatientTCA].valueQuantity = $ucum#s

* component[ControlTCA] ^short = "pour rapporter le TCA témoin."
* component[ControlTCA].code = $loinc#13488-2 
* component[ControlTCA].value[x] only Quantity
* component[ControlTCA].valueQuantity ^short = "Valeur mesurée"
* component[ControlTCA].valueQuantity = $ucum#s

* component[TCARatioPonC] ^short = "pour rapporter le ratio des TCA P/T."
* component[TCARatioPonC].code = $loinc#63561-5 
* component[TCARatioPonC].value[x] only Quantity
* component[TCARatioPonC].valueQuantity ^short = "Valeur mesurée"