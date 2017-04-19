#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


if node['platform_family'] == "rhel"
	custom_pkg = "httpd"
elsif node['platform_family'] == "debian"
	custom_pkg = "apache2"
end


package 'apache2' do
	package_name custom_pkg #hard-coded for RHEL family is 'httpd'
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:enable, :start]
end

