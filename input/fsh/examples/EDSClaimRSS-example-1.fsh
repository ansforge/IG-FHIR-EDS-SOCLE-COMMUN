Instance: rss-example-1
InstanceOf: EDSClaimRSS
Description: "Exemple de ressource rss"
Usage: #example

* status = #active
* created = "2024-10-10"
* patient = Reference(Patient/patient-example-1)
* provider = Reference(Provider/provider)
* supportingInfo[ModeIn].sequence = 1
* supportingInfo[ModeOut].sequence = 2
* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage = Reference(Coverage/test)


* diagnosis[dp].diagnosisCodeableConcept = #S09
* diagnosis[dp].sequence = 1
* diagnosis[da][+]
  * diagnosisCodeableConcept = #I10
  * sequence = 2
* diagnosis[da][+]
  * diagnosisCodeableConcept = #I44
  * sequence = 3
