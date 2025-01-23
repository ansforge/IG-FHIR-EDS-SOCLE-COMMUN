Instance: exercise-status-example-2
InstanceOf: EDSObservationExerciceStatus
Description: """Cet exemple illustre l'usage du profil EDSObservationExerciceStatus.<br />
Le 03/08/2023, un Praticien hospitalier temps plein déclare que la patiente fait de l'exercice 60 minutes par jour.
"""
Usage: #example

* status = #final
* code = $loinc#68516-4 "On those days that you engage in moderate to strenuous exercise, how many minutes, on average, do you exercise"
* code.text = "Exercise Minutes Per Day"
* subject = Reference(Patient/patient-example-1)
* performer = Reference(PractitionerRole/practitioner-role-example-1)
* effectiveDateTime = "2023-08-03"
* valueQuantity = 60 'min/d' "minutes per day"