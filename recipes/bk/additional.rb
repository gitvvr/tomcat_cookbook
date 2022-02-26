#
# Cookbook:: mytomcat
# Recipe:: additional
#
# Copyright:: 2022, The Authors, All Rights Reserved.

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
    