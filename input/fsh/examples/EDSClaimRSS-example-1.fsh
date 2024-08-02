Instance: claim-example-1
InstanceOf: EDSClaimRSS
Description: "Exemple de ressource RSS"
Usage: #example

* status = #active
* created = "2024-10-10"
* patient = Reference(Patient/patient-example-1)
* provider = Reference(Organization/organization-psl)

* supportingInfo[ModeIn]
  * sequence = 1
  * valueString = "8 Domicile"
* supportingInfo[ModeOut]
  * sequence = 2
  * valueString = "6 Mutation"

* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage = Reference(Coverage/coverage-example-1)


* diagnosis[dp]
  * diagnosisCodeableConcept = #S09
  * sequence = 1
* diagnosis[da][+]
  * diagnosisCodeableConcept = #I10
  * sequence = 2
* diagnosis[da][+]
  * diagnosisCodeableConcept = #I44
  * sequence = 3
