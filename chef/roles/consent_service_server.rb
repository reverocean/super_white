name 'consent_service_server'
description 'A single consent service server'

default_attributes(
  :java => {
  	 :install_flavor => 'oracle',
     :oracle => {
       "accept_oracle_download_terms" => true
     }
   }
)

run_list(
  'recipe[java]',
  'recipe[consent_service]',
)
