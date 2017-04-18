#
# Cookbook Name:: StockWorks2CookBook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'git'
include_recipe 'nginx'

application '/srv/myapp' do
  git 'https://github.com/example/myapp.git'
  virtualenv
  pip_requirements
  django do
    migrate true
  end
  gunicorn do
    port 8000
  end
end
