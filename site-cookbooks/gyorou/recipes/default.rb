#
# Cookbook Name:: gyorou
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
include_recipe "ndenv::default"
include_recipe 'vim'

#install tar(only for docker container)
yum_package 'tar'

#install ruby
rbenv_ruby "2.1.5" do
  global true
end

#install node
ndenv_node "v0.12.6" do
  global true
end

#install git
package 'git' do
    action :install
end

# install neobundle
bash 'install_neobundle' do
  environment 'HOME' => '/home/' + node['gyorou']['user']
  cwd '/home/' + node['gyorou']['user']
  user node['gyorou']['user']
  code <<-EOH
    curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
    sh ./install.sh 
    EOH
  not_if { ::Dir.exists?('/home/'+node['gyorou']['user']+'/.vim') }
end

#config vim and vim plugin
template "/home/#{node['gyorou']['user']}/.vimrc" do
  source '.vimrc'
  owner node['gyorou']['user']
  mode '0755'
end
