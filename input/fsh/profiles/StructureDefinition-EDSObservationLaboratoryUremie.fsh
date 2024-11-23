Profile: EDSObservationLaboratoryUremie
Parent: EDSObservationLaboratoryGeneric 
Title: "Urémie"
Description: """
Profil des résultats d'urémie du socle commun des EDS
"""

* code = $loinc#22664-7 "Urea [Moles/volume] in Serum or Plasma" (exactly)

* value[x] only Quantity
* valueQuantity.value ^short = "Valeur mesurée"
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..
* valueQuantity.code = $ucum#mmol/L (exactly)

* referenceRange 1..
* referenceRange MS