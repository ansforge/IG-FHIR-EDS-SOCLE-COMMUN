Profile: EDSObservationLaboratoryUremie
Parent: EDSObservationLaboratoryGeneric 
Title: "Urémie"
Description: """
Profil des résultats d'urémie du socle commun des EDS
"""

* code = $loinc#22664-7

* value[x] only Quantity
* valueQuantity.value ^short = "Valeur mesurée"
* valueQuantity.system 1..
* valueQuantity.system = "http://unitsofmeasure.org" 
* valueQuantity.code 1..
* valueQuantity.code = $ucum#mmol/L

* referenceRange 1..