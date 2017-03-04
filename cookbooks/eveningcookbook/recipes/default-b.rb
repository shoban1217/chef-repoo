#
# Cookbook Name:: eveningcookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
group 'devops' do
  action :create
  members ['javahome','vagrant']
  append true
end

user 'creating javahome user' do
  username 'javahome'
  home '/home/javahome'
  manage_home true
  shell '/bin/bash'
  password '$1$.Po3asNV$2mWslI47VzME9h6.dJtsi/'
  action :create
end
