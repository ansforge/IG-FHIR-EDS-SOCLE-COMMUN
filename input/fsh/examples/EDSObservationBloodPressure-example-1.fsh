Instance: observation-blood-pressure-example-1
InstanceOf: EDSObservationBloodPressure
Description: "Exemple de ressource pression artérielle"
Usage: #example

* status = #final
* subject = Reference(Patient/patient-example-1)
* performer = Reference(PractitionerRole/practitioner-role-example-1)
* effectiveDateTime = "2024-07-26"
* bodySite = $fr-core-cs-TRE_R309-FMA#24890 "Bras"
* component[SystolicBP]
  * valueQuantity
    * value = 107
    * unit = "mm[Hg]"
* component[DiastolicBP]
  * valueQuantity
    * value = 60
    * unit = "mm[Hg]"