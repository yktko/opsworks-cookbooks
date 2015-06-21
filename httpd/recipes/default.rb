#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
package "httpd" do
  action :install
end

service "httpd" do
  action [ "enable", "start" ]
end

template "/var/www/html" do
  source "index.html.erb"
end

