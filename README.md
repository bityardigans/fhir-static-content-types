# fhir-static-content-types
Demonstrate serving the FHIR specification statically with nginx, respecting content types — Edit

## Run it
```
$ git clone https://github.com/jmandel/fhir-static-content-types
$ cd fhir-static-content-types && sh example.sh
```

## Test it
```
$ curl -s -H "Accept: application/fhir+xml"  http://localhost:8000/patient-example | head -n 5
<?xml version="1.0" encoding="UTF-8"?><Patient xmlns="http://hl7.org/fhir">
  <id value="example"/>
  <text>
    <status value="generated"/>
    <div xmlns="http://www.w3.org/1999/xhtml">

    
$ curl -s -H "Accept: application/fhir+json"  http://localhost:8000/patient-example | head -n 5
{
  "resourceType": "Patient",
  "id": "example",
  "text": {
    "status": "generated",
