Profile: EDSObservationLaboratoryEstimatedDFG
Parent: EDSObservationLaboratoryGeneric 
Title: "Débit de filtration glomérulaire (DFG) estimé"
Description: """
Profil des estimation de DFG du socle commun des EDS
"""

* code from EDSLaboratoryEstimatedDFG (required)

* value[x] only Quantity
* valueQuantity.value ^short = "Valeur mesurée"
* valueQuantity.system 1..
* valueQuantity.system = "http://unitsofmeasure.org" 
* valueQuantity.code 1..
* valueQuantity.code from EDSLaboratoryEstimatedDFGUnit (extensible)

* referenceRange 1..