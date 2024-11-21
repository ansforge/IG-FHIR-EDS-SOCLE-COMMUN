Profile: EDSObservationLaboratoryGeneric
Parent: Observation // pas de profil ANS (et le profil mesure glucose me semble inadapté), pas de profil FHIR, uscore propose un profil lab générique.
Title: "Résultat de laboratoire"
Description: """
Profil générique des résultats de laboratoire du socle commun des EDS.
"""

* ^abstract = true

* status MS // restreindre à final, amended et corrected ? Enfait, le GT demande un status, mais il n'y a pas de place dans OMOP pour cela. 

* category MS
* category 1..1
* category = $observation-category#laboratory (exactly)

* code MS
* code from EDSLaboratory (required)

* subject MS
* subject only Reference(EDSPatient)
* subject ^short = "L'observation concerne la personne que l'on analyse."

* effective[x] MS

* value[x] MS

* obeys eds-lab-1
* obeys eds-lab-2
* obeys eds-lab-3
* obeys eds-lab-4
* obeys eds-lab-5
* obeys eds-lab-6

* component MS
  * code MS
  * code from EDSLaboratory (required) // créer le VS et le CS

  * value[x] MS

  * referenceRange MS