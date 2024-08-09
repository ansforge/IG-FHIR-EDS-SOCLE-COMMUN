Instance: smoke-use-status-example-1
InstanceOf: EDSObservationSmokingStatus
Usage: #example

* status = #final
* code = $sct#401201003 "Cigarette pack-years (observable entity)"
* code.text = "Cigarette pack-years"
* subject = Reference(Patient/patient-example-1)
* performer = Reference(Patient/patient-example-1)
* effectiveDateTime = "2023-08-03"
* valueQuantity = 26 '{pack-years}' "pack-years"