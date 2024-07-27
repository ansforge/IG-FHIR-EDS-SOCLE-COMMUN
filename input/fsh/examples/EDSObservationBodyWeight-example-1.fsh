Instance: observation-body-weight-example-1
InstanceOf: EDSObservationBodyWeight
Description: "Exemple de ressource poids"
Usage: #example

* status = #final
* subject = Reference(Patient/patient-example-1)
* performer = Reference(PractitionerRole/practitioner-role-example-1)
* effectiveDateTime = "2024-07-26"
* valueQuantity
  * value = 96
  * unit = "Kg"
  * code = $ucum#kg