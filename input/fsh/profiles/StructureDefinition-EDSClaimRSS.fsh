Alias: $ClaimMode = https://interop.esante.gouv.fr/ig/fhir/eds/CodeSystem/FrClaimMode
Profile: EDSClaimRSS
Parent: EDSClaimPMSIMCO
Title: "RSS du PMSI MCO"
Description: "Profil pour les Résumés de Sortie Standardisé (RSS) du PMSI MCO."

* billablePeriod.start ^short = "date d'entrée dans la première unité médicale visitée"
* billablePeriod.end ^short = "date de sortie de la dernière unité médicale visitée"
* billablePeriod MS

* supportingInfo ^slicing.discriminator[0].type = #value
* supportingInfo ^slicing.discriminator[=].path = "code.coding.code"
* supportingInfo ^slicing.discriminator[+].type = #value
* supportingInfo ^slicing.discriminator[=].path = "code.coding.system"
* supportingInfo ^slicing.description = "Slicing de supportingInfo"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^short = "supportingInfo"
* supportingInfo contains
    ModeIn 1..1 and
    ModeOut 1..1

* supportingInfo[ModeIn]
  * category = FrClaimSupInfoCategoryPMSIMCO#RUM (exactly)
  * code
    * coding ^slicing.discriminator[0].type = #value
    * coding ^slicing.discriminator[=].path = "code"
    * coding ^slicing.discriminator[+].type = #value
    * coding ^slicing.discriminator[=].path = "system"
    * coding ^slicing.rules = #open
    * coding contains 
        ModeInCode 1..1

    * coding[ModeInCode]
      * code = #0 (exactly)
      * system = $ClaimMode (exactly)

  * value[x] only string
  * valueString ^short = "valeur du mode d'entrée"
  * valueString MS

* supportingInfo[ModeOut]
  * category = FrClaimSupInfoCategoryPMSIMCO#RUM (exactly)
  * code
    * coding ^slicing.discriminator[0].type = #value
    * coding ^slicing.discriminator[=].path = "code"
    * coding ^slicing.discriminator[+].type = #value
    * coding ^slicing.discriminator[=].path = "system"
    * coding ^slicing.rules = #open
    * coding contains 
        ModeOutCode 1..1

    * coding[ModeOutCode]
      * code = #1 (exactly)
      * system = $ClaimMode (exactly)

  * value[x] only string
  * valueString ^short = "valeur du mode de sortie"
  * valueString MS

* diagnosis ^slicing.discriminator[+].type = #value
* diagnosis ^slicing.discriminator[=].path = "type"
* diagnosis ^slicing.description = "slicing permettant de préciser le binding terminologique des codes diagnostics en fonction de leur type"
* diagnosis ^slicing.rules = #open
* diagnosis contains
  dp 1..1 and
  dr 0..1 and
  da 0..* and
  dad 0..*

* diagnosis MS

* diagnosis[dp].diagnosis[x] only CodeableConcept
* diagnosis[dp].diagnosisCodeableConcept from CIM10PMSIDP

* diagnosis[dr].diagnosis[x] only CodeableConcept
* diagnosis[dr].diagnosisCodeableConcept from CIM10PMSIDR

* diagnosis[da].diagnosis[x] only CodeableConcept
* diagnosis[da].diagnosisCodeableConcept from CIM10PMSIDA

* diagnosis[dad].diagnosis[x] only CodeableConcept
* diagnosis[dad].diagnosisCodeableConcept from CIM10PMSI




* procedure
  * procedure[x] only CodeableConcept
  * procedureCodeableConcept from CCAM
* procedure MS