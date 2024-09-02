Instance: LabComparator
InstanceOf: ConceptMap
Usage: #definition

* status = #active
* group[0]
  * source = "http://hl7.org/fhir/quantity-comparator"
  * target = "https://fhir-terminology.ohdsi.org"
  * element[0]
    * code = #<
    * display = "Less than"
    * target[0]
      * code = #4171756
      * display = "<" 
      * equivalence = #equivalent
  * element[+]
    * code = #<=
    * display = "Less or Equal to"
    * target[0]
      * code = #4171754
      * display = "<="
      * equivalence = #equivalent
  * element[+]
    * code = #>=
    * display = "Greater or Equal to"
    * target[0]
      * code = #4171755
      * display = ">="
      * equivalence = #equivalent
  * element[+]
    * code = #>
    * display = "Greater than"
    * target[0]
      * code = #4172704
      * display = ">"
      * equivalence = #equivalent