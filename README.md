# tomcat_cookbook
# mytomcat

TODO: Enter the cookbook description here.
1. installation of Tomdat: Refer the proces from https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-7-on-ubuntu-14-04-via-apt-get

2. Steps to follow.

a.  update your apt-get package lists: sudo apt-get update
b. ready to install Tomcat. : sudo apt-get install tomcat7
c. Open the Tomcat7 parameters file: sudo nano /etc/default/tomcat7
	>> We need to make a file (name tomcat7) with changes mentioned on above link, on our local machine and put it into files (kitchen generate file) and place this file. This fill be pushed on the server and repleced.
d. restart Tomcat with this command: sudo service tomcat7 restart	
e. Installing Additional Packages: sudo apt-get install tomcat7-docs tomcat7-admin tomcat7-examples
f. Configure Tomcat Web Management Interface: sudo nano /etc/tomcat7/tomcat-users.xml
	>> We need to make a file(name tomcat-users.xml) with changes mentioned on above link, on our local machine and put it into files (kitchen generate file) and place this file. This fill be pushed on the server and repleced.

