Profile: PatientTIMessengerEncounter
Parent: Patient
Description: "A profile of the Patient resource for TI-Messenger communication related to an encounter with a patient."
* insert Meta
* id MS
* identifier 1..* MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains KVNR 1.. MS
* identifier[KVNR] only $IdentifierKVID10
  * ^patternIdentifier.type = $v2-0203#PRN
  * type 1..1 MS
    * text = "KVNR"
  * system 1..1 MS
  * value 1..1 MS
* identifier contains PKVID 0.. MS
* identifier[PKVID] only $IdentifierPKVID
  * ^patternIdentifier.type = $v2-0203#PRN
  * type 1..1 MS
    * text = "PKVNR"
  * system 1..1 MS
  * value 1..1 MS
/* todo
Auftragsnummer für Kommunikation mit dem Labor
Interne Patientennummer (nicht KVRN!).
Patienten haben in Krankenhäusern eigene Kennungen.
Wir sollten die Verwendung ermöglichen da diese intern Maßgeblich zur
Identifikation eines Menschen verwendet wird.
(Die Fälle werden an den Patientenstamm verlinkt)
*/

* name 1..1 MS
* gender 0..1 MS
* birthdate 0..1 MS
* address 0.. MS
* photo 0.. MS
* contact 0.. MS
* communication 0.. MS
* generalPractitioner 0.. MS


Instance: PatientExample
InstanceOf: MyPatient
Description: "An example of a patient with a license to krill."
* identifier
  * type.text = "KVNR"
  * system = "http://fhir.de/StructureDefinition/identifier-kvid-10"
  * value = "1234567890"
* name
  * given[0] = "August"
  * family = "Fröhlich"
* gender = "male"
* birthdate = "2000-02-21"
* communication
  * language
    * coding
      * code = "de"