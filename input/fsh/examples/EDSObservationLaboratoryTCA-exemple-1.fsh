Instance: laboratory-tca-example-1
InstanceOf: EDSObservationLaboratoryTCA
Usage: #example

* status = #final
* subject = Reference(Patient/patient-example-1)
* performer = Reference(PractitionerRole/practitioner-role-example-1)
* effectiveDateTime = "2024-08-27T14:25:00+01:00"
//* component[PatientTCA].code = $loinc#14979-9 "Temps de céphaline activée [Temps] Plasma pauvre en plaquettes ; Numérique ; Coagulation"
* component[PatientTCA].valueQuantity = 33 's' "Secondes"

//* component[ControlTCA].code = $loinc#13488-2
* component[ControlTCA].valueQuantity = 31 's' "Secondes"

//* component[TCARatioPonC].code = $loinc#63561-5
* component[TCARatioPonC].valueQuantity.value = 1.06