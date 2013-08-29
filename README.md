super_white
===========
# Description
  super_white is project that aims at showcase building Restfull Micro Service with Dropwizard, and deploy it to cloud with Chef.

# Usage
  Make sure you have a Chef server. You can use Hosted Chef Server, sign up here https://getchef.opscode.com/signup.
  Use VirtulBox and Vagrant (http://www.vagrantup.com/) if you want to try it out on your local machine.
  Sign up AWS if you want to try it out on the cloud.
  
## Setup
  Check out the code
  
  Set environment variables (On Mac as example)
```
  # Chef Config
  export OPSCODE_USER="Your Chef user name, must be the same as your pem file name"
  export ORGNAME="Your Chef organization name created in Chef server"
  # AWS Config
  export AWS_ACCESS_KEY_ID="AWS Access Key Id"
  export AWS_SECRET_ACCESS_KEY="AWS Secret Access Key"
  export AWS_KEY_ID="AWS Key ID, must be the same as your key pair name"
```

  Test your connection to Chef server by going to 'chef' folder and using command
```
  knife client list
```
  You should see something like:
  [organization_name]-validator
  
  Upload cookbooks and roles to Chef server by using command in the project root folder
```
gradle uploadChef
```
  or simply
```
gradle uC
```
  
## Use VirtulBox to start a server and deploy the service
  Start a new Ubuntu server in your local VirtulBox with command
```
vagrant up --no-color
```
 Bootstrap the server and service with command
```
knife bootstrap localhost \
  --ssh-user vagrant \
  --ssh-password vagrant \
  --ssh-port 2222 \
  --run-list "role[consent_service_server]" \
  --sudo
```
  SSH into your server after it finishes, and test it
```
vagrant ssh
```
## Use AWS to start a EC2 server and deploy the service

## Test
  After consent_service is running, you can use curl to test whether the service is running
###  Post Consent
  ``curl -H "Content-Type: application/json" -X POST -d '{"indicator": "yes"}' http://your_server:8080/consent``
### Get Consent
  ``curl -H "Content-Type: application/json" -X GET  http://your_server:8080/consent/1``
