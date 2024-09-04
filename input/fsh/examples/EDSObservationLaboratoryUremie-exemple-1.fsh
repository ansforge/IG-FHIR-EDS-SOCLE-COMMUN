Instance: laboratory-uremie-example-1
InstanceOf: EDSObservationLaboratoryUremie
Usage: #example

* status = #final
* subject = Reference(Patient/patient-example-1)
* performer = Reference(PractitionerRole/practitioner-role-example-1)
* effectiveDateTime = "2024-08-27T09:00:00+01:00"
* valueQuantity = 7.4 'mmol/L' "milimole par litre"
* referenceRange.low = 2.5 'mmol/L' "millimole par litre"
* referenceRange.high = 7 'mmol/L' "millimole par litre"