#
# Cookbook:: mytomcat
# Recipe:: configure
#
# Copyright:: 2022, The Authors, All Rights Reserved.

cookbook_file '/etc/default/tomcat7' do
    source 'tomcat7'
    action :create
 #   notifies :restart, 'service[tomcat7]'
end

service 'tomcat7' do
    action :restart
end
