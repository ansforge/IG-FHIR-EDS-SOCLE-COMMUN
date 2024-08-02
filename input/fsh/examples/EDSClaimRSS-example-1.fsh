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
  * code = $ClaimMode#0
  * valueString = "8 Domicile"
* supportingInfo[ModeOut]
  * sequence = 2
  * code = $ClaimMode#1
  * valueString = "6 Mutation"

* insurance
  * sequence = 1
  * focal = true
  * coverage = Reference(Coverage/coverage-example-1)


* diagnosis[dp]
  * diagnosisCodeableConcept = CIM10#S09
  * sequence = 1
* diagnosis[da][+]
  * diagnosisCodeableConcept = CIM10#I10
  * sequence = 2
* diagnosis[da][+]
  * diagnosisCodeableConcept = CIM10#I44
  * sequence = 3

* procedure[0]
  * sequence = 1
  * date = "2023-11-15"
  * procedureCodeableConcept = CCAM#NZFA010···01·
* procedure[+]
  * sequence = 2
  * date = "2023-11-15"
  * procedureCodeableConcept = CCAM#NZFA010···04·