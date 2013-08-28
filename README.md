super_white
===========
# Description
  super_white is project that aims at 

# Usage
  You MUST make sure you have correctly setting two enviornment variable in your system: ``OPSCODE_USER`` and ``ORGNAME``. These two variables are used by chef.
  You can modify the consent_service code then generate a new chef cookbook, then upload it to chef server by using command
  ``gradle uploadChef``
  or simply
  ``gradle uC``
  at the root of project.
  
# Test
  After consent_service is running, you can use curl to test whether the service is running
###  Post Consent
  ``curl -H "Content-Type: application/json" -X POST -d '{"indicator": "yes"}' http://your_server:8080/consent``
### Get Consent
  ``curl -H "Content-Type: application/json" -X GET  http://your_server:8080/consent/1``

# Tech
## DropWizard
  Generate a micro service
## Chef
  Chef is Iaas as Code
## Micro Service
  Please see http://yobriefca.se/blog/2013/04/29/micro-service-architecture/ 
## Amazon Cloud
  
 
