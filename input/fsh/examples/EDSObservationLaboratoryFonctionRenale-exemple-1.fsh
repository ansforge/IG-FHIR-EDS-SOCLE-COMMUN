Instance: laboratory-fonction-renale-example-1
InstanceOf: EDSObservationLaboratoryFonctionRenale
Usage: #example

* status = #final
* subject = Reference(Patient/patient-example-1)
* performer = Reference(PractitionerRole/practitioner-role-example-1)
* effectiveDateTime = "2024-08-27T14:00:00+01:00"

* component[Creat].valueQuantity = 80 'umol/L' "micromole par litre"
* component[Creat].referenceRange.low = 50 'umol/L' "micromole par litre"
* component[Creat].referenceRange.high = 100 'umol/L' "micromole par litre"

* component[Dfg].code = $loinc#77147-7 // "Filtration glomérulaire corrigée/1,73m2 calculée [Volume arbitraire/Temps] Sérum/Plasma/Sang ; Numérique ; Formule MDRD"
* component[Dfg].valueQuantity = 80 'mL/min' "millilitre par minute"
* component[Dfg].referenceRange.low = 60 'mL/min' "millilitre par minute"