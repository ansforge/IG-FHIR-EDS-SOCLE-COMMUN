Profile: EDSObservationLaboratoryCreatininemie
Parent: EDSObservationLaboratoryGeneric 
Title: "Créatininémie"
Description: """
Profil des résultats de créatininémie du socle commun des EDS
"""

* code = $loinc#14682-9 "Créatinine [Moles/Volume] Sérum/Plasma ; Numérique" (exactly)

* value[x] only Quantity
* valueQuantity.value ^short = "Valeur mesurée"
* valueQuantity.system = "http://unitsofmeasure.org" (exactly) 
* valueQuantity.code 1..
* valueQuantity.code = $ucum#umol/L (exactly)

* referenceRange 1..
* referenceRange MS