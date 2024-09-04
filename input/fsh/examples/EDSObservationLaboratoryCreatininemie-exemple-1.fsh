Instance: laboratory-creatininemie-example-1
InstanceOf: EDSObservationLaboratoryCreatininemie
Usage: #example

* status = #final
* subject = Reference(Patient/patient-example-1)
* performer = Reference(PractitionerRole/practitioner-role-example-1)
* effectiveDateTime = "2024-08-27T14:00:00+01:00"
* valueQuantity = 80 'umol/L' "micromole par litre"
* referenceRange.low = 50 'umol/L' "micromole par litre"
* referenceRange.high = 100 'umol/L' "micromole par litre"