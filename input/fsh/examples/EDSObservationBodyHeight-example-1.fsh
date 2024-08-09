Instance: body-height-example-1
InstanceOf: EDSObservationBodyHeight
Description: "Exemple de ressource taille"
Usage: #example

* status = #final
* subject = Reference(Patient/patient-example-1)
* performer = Reference(PractitionerRole/practitioner-role-example-1)
* effectiveDateTime = "2024-07-26"
* valueQuantity
  * value = 185
  * unit = "cm"
  * code = $ucum#cm