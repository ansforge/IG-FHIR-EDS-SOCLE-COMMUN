Instance: alcohol-use-status-example-1
InstanceOf: EDSObservationAlcoholUseStatus
Description: """Cet exemple illustre l'usage du profil EDSObservationAlcoholUseStatus.<br />
A la date du 03/08/2023, le patient a déclaré être un consommateur d'alcohol occasionel.
"""
Usage: #example

* status = #final
* subject = Reference(Patient/patient-example-1)
* performer = Reference(Patient/patient-example-1)
* effectiveDateTime = "2023-08-03"
* valueCodeableConcept = $sct#228276006 "Occasional drinker"
* valueCodeableConcept.text = "other choices - non-drinker, former drinker, current drinker"