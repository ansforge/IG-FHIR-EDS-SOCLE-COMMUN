Invariant: eds-0
Description: "Observation.code 72166-2|Tobacco smoking status or 11367-0|History of Tobacco use SHALL use valueCodeableConcept"
* severity = #error
* expression = "code.coding.where(code in '72166-2'|'11367-0').exists() implies value.is(CodeableConcept)"

Invariant: eds-1
Description: "For Observation.code 401201003|Cigarette pack-years or 782516008|Number of calculated smoking pack years SHOULD use valueQuantity"
* severity = #warning
* expression = "code.coding.where(code in '401201003'|'782516008').exists() implies value.is(Quantity)"

Invariant: eds-exercice-minutes-per-day
Description: "Observation.code 68516-4|On those days that you engage in moderate to strenuous exercise, how many minutes, on average, do you exercise use valueQuantity and valueQuantity.unit is minutes per day"
* severity = #error
* expression = "code.coding.where(code in '68516-4').exists() implies (value.is(Quantity) and value.ofType(Quantity).code = 'min/d')"

Invariant: eds-exercice-days-per-week
Description: "Observation.code 89555-7|How many days per week did you engage in moderate to strenuous physical activity in the last 30 days use valueQuantity and valueQuantity.unit is days per week"
* severity = #error
* expression = "code.coding.where(code in '89555-7').exists() implies (value.is(Quantity) and value.ofType(Quantity).code = 'd/wk')"

Invariant: eds-lab-1
Description: "SHALL use UCUM for coded quantity units"
Severity: #error
Expression: "ofType(Quantity).system.empty() or ofType(Quantity).system = 'http://unitsofmeasure.org'"

Invariant: eds-lab-2
Description: "Value and referenceRange SHALL have the same unit"
Severity: #error
Expression: "((referenceRange.low.code in (value.ofType(Quantity).code)) or referenceRange.low.code.empty()) and ((referenceRange.high.code in (value.ofType(Quantity).code)) or referenceRange.high.code.empty())"