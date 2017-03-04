#
# Cookbook Name:: eveningcookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

# Deside the package name based on the node platform
package_name = ''
package 'Install Apache' do
  case node[:platform]
  when 'redhat', 'centos'
    package_name 'httpd'
  when 'ubuntu', 'debian'
    package_name 'apache2'
  end
end

package package_name do
  action :install
end

# start and enable httpd
service package_name do
  action [:start,:enable]
end
# create index.html on apache server
file '/var/www/html/index.html' do
   content '<h1>Deployed by Chef</h1>'
end
