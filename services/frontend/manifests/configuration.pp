# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: frontend::configuration
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# class { "apache::server": ensure => "present|absent" }
#
# [Remember: No empty lines between comments and class definition]
class frontend::configuration {

   apache::server::vhost{ "simple": }

   php::configuration { "simple":
      path => "/var/www/simple/conf",
   }

   apache::server::configuration{ "simple":
      conf => {
         "keep_alive_timeout" => 15,
      }
   }

}
