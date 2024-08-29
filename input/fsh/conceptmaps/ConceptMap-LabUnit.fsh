Instance: LabUnit
InstanceOf: ConceptMap
Usage: #definition

* status = #active
* group[0]
  * source = $ucum
  * target = "https://fhir-terminology.ohdsi.org"
  * element[+]
    * code = #umol/L
    * target[0]
      * code = #8749
      * display = "micromole per liter" 
      * equivalence = #equivalent
  * element[+]
    * code = #mL/min
    * target[0]
      * code = #8795
      * display = "milliliter per minute" 
      * equivalence = #equivalent
  * element[+]
    * code = #s
    * target[0]
      * code = #8555
      * display = "second" 
      * equivalence = #equivalent
  * element[+]
    * code = #mmol/L
    * target[0]
      * code = #8753
      * display = "millimole per liter" 
      * equivalence = #equivalent