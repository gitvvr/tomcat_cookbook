#
# Cookbook:: mytomcat
# Recipe:: install
#
# Copyright:: 2022, The Authors, All Rights Reserved.

apt_update "update" do
    action :update
end

apt_package "tomcat7" do
 action :install
end
