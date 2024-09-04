Profile: EDSObservationLaboratoryEstimatedDFG
Parent: EDSObservationLaboratoryGeneric 
Title: "Débit de filtration glomérulaire (DFG) estimé"
Description: """
Profil des estimation de DFG du socle commun des EDS
"""

* code from EDSLaboratoryEstimatedDFG (required)

* value[x] only Quantity
* valueQuantity.value ^short = "Valeur mesurée"
* valueQuantity.system = "http://unitsofmeasure.org" (exactly) 
* valueQuantity.code 1..
* valueQuantity.code from EDSLaboratoryEstimatedDFGUnit (extensible)

* referenceRange 1..
* referenceRange MS