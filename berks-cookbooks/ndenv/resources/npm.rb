# -*- coding: utf-8 -*-
#
# Cookbook Name:: ndenv
# Resource:: npm
#
# Copyright 2014, Numergy
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :install, :upgrade, :remove

attribute :package_name,  kind_of: String, name_attribute: true
attribute :version,       kind_of: String
attribute :source,        kind_of: String
attribute :node_version,  kind_of: String
attribute :response_file, kind_of: String

def initialize(*args)
  super
  @action = :install
  @resource_name = :ndenv_npm
  @provider = Chef::Provider::Package::NdenvNpm
end
