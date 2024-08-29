Profile: EDSObservationLaboratoryCreatininemie
Parent: EDSObservationLaboratoryGeneric 
Title: "Créatininémie"
Description: """
Profil des résultats de créatininémie du socle commun des EDS
"""

* code = $loinc#14682-9

* value[x] only Quantity
* valueQuantity.value ^short = "Valeur mesurée"
* valueQuantity.system 1..
* valueQuantity.system = "http://unitsofmeasure.org" 
* valueQuantity.code 1..
* valueQuantity.code = $ucum#umol/L

* referenceRange 1..