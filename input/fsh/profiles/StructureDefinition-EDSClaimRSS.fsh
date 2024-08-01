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

* diagnosis
  * diagnosis[x] only CodeableConcept
  * diagnosisCodeableConcept from CIM10PMSI
* diagnosis MS

* procedure
  * procedure[x] only CodeableConcept
  * procedureCodeableConcept from CCAM
* procedure MS