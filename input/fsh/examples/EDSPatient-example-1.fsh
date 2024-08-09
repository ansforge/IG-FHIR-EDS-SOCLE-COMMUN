Instance: patient-example-1
InstanceOf: EDSPatient
Description: "Exemple de ressource patient"
Usage: #example

* gender = #female
* birthDate = "1948-07-12"
* deceasedDateTime = "2024-07-12T12:00:00+01:00"
* address[0]
  * use = #home
  * text = "12 Bd Picpus, 75012 Paris"
  * line[0] = "12 Bd Picpus"
  * city = "Paris"
  * postalCode = "75012"
  * extension[geolocation]
    * extension[latitude].valueDecimal = 48.840031428873175
    * extension[longitude].valueDecimal = 2.4008115174942795