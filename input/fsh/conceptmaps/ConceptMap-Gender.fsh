Instance: Gender
InstanceOf: ConceptMap
Usage: #definition

* status = #active
* group[0]
  * source = "https://hl7.fr/ig/fhir/core/ValueSet/fr-core-vs-patient-gender-INS"
  * target = "https://fhir-terminology.ohdsi.org"
  * element[0]
    * code = #male
    * display = "Male"
    * target[0]
      * code = #8507
      * display = "MALE" 
      * equivalence = #equivalent
  * element[+]
    * code = #female
    * display = "Female"
    * target[0]
      * code = #8532
      * display = "FEMALE"
      * equivalence = #equivalent