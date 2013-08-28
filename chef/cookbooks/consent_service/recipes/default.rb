#
# Cookbook Name:: consent_service
# Recipe:: default
#
# Copyright 2013, SUPER_WHITE
#
# All rights reserved - Do Not Redistribute
#

bash 'install_daemon' do
    code <<-EOH
       apt-get install daemon
    EOH
end

cookbook_file '/consent.yaml' do
    source 'consent.yaml'
    mode '777'
end

cookbook_file '/consent_service.jar' do
    source 'consent_service-standalone.jar'
    mode '777'
end

cookbook_file '/etc/init.d/consent_service' do
    source 'etc_initd_consent_service'
    mode '777'
end

bash 'db_migrate' do
    code <<-EOH
        java -jar /consent_service.jar db migrate /consent.yaml
    EOH
end

service 'consent_service' do
    supports :restart => true, :start => true, :stop => true, :reload => true
    action [:enable, :start]
end