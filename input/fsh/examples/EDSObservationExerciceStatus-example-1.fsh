Instance: exercise-status-example-1
InstanceOf: EDSObservationExerciceStatus
Usage: #example

* status = #final
* code = $loinc#89555-7 "How many days per week did you engage in moderate to strenuous physical activity in the last 30 days"
* code.text = "Exercise Days Per Week"
* subject = Reference(Patient/patient-example-1)
* performer = Reference(PractitionerRole/practitioner-role-example-1)
* effectiveDateTime = "2023-08-03"
* valueQuantity = 3 'd/wk' "days per week"