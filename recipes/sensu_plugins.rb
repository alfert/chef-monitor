#
# Cookbook Name:: monitor
# Recipe:: sensu_plugins
#
# Copyright 2012, Klaus Alfert
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#


# This recipe installs all sensu community plugins 
include_recipe "monitor::default"

# we need git here
package "git" do
	action :install
end

# sync the entire git repository
git "/etc/sensu/sensu-community-plugins" do
	repository "https://github.com/sensu/sensu-community-plugins.git"
	reference node["monitor"]["plugin_revision"] 
	action :sync
end

# create symbolic links to shorten paths
link "/etc/sensu/plugins/community" do
	to "/etc/sensu/sensu-community-plugins/plugins"
end

link "/etc/sensu/handlers/community" do
	to "/etc/sensu/sensu-community-plugins/handlers"
end
