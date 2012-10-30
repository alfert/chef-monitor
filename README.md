Description
===========

Monitor is a cookbook for monitoring services, using Sensu, a
monitoring framework. The default recipe installs & configures the
Sensu client (monitoring agent), as well as common service check
dependencies. The server recipe installs & configures the Sensu server
(event handler) & its dependencies. The remaining recipes are intended
to put monitoring checks in place in order to monitor specific
services.

Learn more about Sensu [Here](https://github.com/sensu/sensu/wiki).

Requirements
============

The [Sensu cookbook](http://community.opscode.com/cookbooks/sensu).

Attributes
==========

There are currently no attributes.

Usage
=====

Example: To monitor the Redis service running on a Chef node, include
"recipe[monitor::redis]" in its run list.