Invariant: eds-0
Description: "Observation.code 72166-2|Tobacco smoking status or 11367-0|History of Tobacco use SHALL use valueCodeableConcept"
* severity = #error
* expression = "code.coding.where(code in '72166-2'|'11367-0').exists() implies value.is(CodeableConcept)"

Invariant: eds-1
Description: "For Observation.code 401201003|Cigarette pack-years or 782516008|Number of calculated smoking pack years SHOULD use valueQuantity"
* severity = #warning
* expression = "code.coding.where(code in '401201003'|'782516008').exists() implies value.is(Quantity)"