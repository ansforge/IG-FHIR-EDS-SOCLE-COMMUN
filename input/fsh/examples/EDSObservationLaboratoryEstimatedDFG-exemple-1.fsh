Instance: laboratory-estimated-dfg-example-1
InstanceOf: EDSObservationLaboratoryEstimatedDFG
Usage: #example

* status = #final
* category = $observation-category#laboratory
* code = $loinc#77147-7 "Filtration glomérulaire corrigée/1,73m2 calculée [Volume arbitraire/Temps] Sérum/Plasma/Sang ; Numérique ; Formule MDRD"
* code.text = "DFG (MDRD)"
* subject = Reference(Patient/patient-example-1)
* performer = Reference(PractitionerRole/practitioner-role-example-1)
* effectiveDateTime = "2024-08-27T09:00:17+01:00"
* valueQuantity = 80 'mL/min' "millilitre par minute"
* referenceRange.low = 60 'mL/min' "millilitre par minute"