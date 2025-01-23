Instance: substance-use-status-example-1
InstanceOf: EDSObservationSubstanceUseStatus
Description: """Cet exemple illustre l'usage du profil EDSObservationSubstanceUseStatus.<br />
Le 03/08/2023, la patiente déclare avoir consommé d'amphetamine 3 fois dans l'année (sans ordonnance).
"""
Usage: #example

* status = #final
* subject = Reference(Patient/patient-example-1)
* performer = Reference(Patient/patient-example-1)
* effectiveDateTime = "2023-08-03"
* valueCodeableConcept = $sct#44870007 "Misused drugs in past (finding)"
* valueCodeableConcept.text = "other possible values - Misuses drugs (finding), Does not misuse drugs (finding), Has never misused drugs"
* component[0]
  * code
    * coding = $sct#410942007 "Drug or medicament (substance)"
    * text = "Drug or medicament"
  * valueCodeableConcept
    * coding = $sct#703842006 "Amphetamine"
    * text = "Amphetamine"
* component[+]
  * code
    * coding = $sct#228390007 "Frequency of drug misuse (observable entity)"
    * text = "Frequency of drug misuse"
  * valueString = "3 times a year"