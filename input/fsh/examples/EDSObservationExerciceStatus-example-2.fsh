Instance: exercise-status-example-2
InstanceOf: EDSObservationExerciceStatus
Usage: #example

* status = #final
* code = $loinc#68516-4 "On those days that you engage in moderate to strenuous exercise, how many minutes, on average, do you exercise"
* code.text = "Exercise Minutes Per Day"
* subject = Reference(Patient/patient-example-1)
* performer = Reference(PractitionerRole/practitioner-role-example-1)
* effectiveDateTime = "2023-08-03"
* valueQuantity = 60 'min/d' "minutes per day"