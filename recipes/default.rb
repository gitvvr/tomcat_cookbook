#
# Cookbook:: tomcat_cookbook
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.


apt_update 'update'  do
    action :update
end

#include_recipe 'mytomcat::install'

apt_update "update" do
    action :update
end

apt_package "tomcat7" do
 action :install
end


#include_recipe 'mytomcat::configure'

cookbook_file '/etc/default/tomcat7' do
    source 'tomcat7'
    action :create
 #   notifies :restart, 'service[tomcat7]'
end

service 'tomcat7' do
    action :restart
end


#include_recipe 'mytomcat::additional'
package_names = ["tomcat7-docs", "tomcat7-admin" , "tomcat7-examples"]

package_names.each do |package_name| 
 package package_name do
     action :install
 end
end

#service 'tomcat7' do
#    action :restart
#end

cookbook_file '/etc/tomcat7/tomcat-users.xml' do
 source 'tomcat-users.xml'
 action :create
 notifies :restart, 'service[tomcat7]'
end


#service 'tomcat7' do
#    action :restart
#end
 