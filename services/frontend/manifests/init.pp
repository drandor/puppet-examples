# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: frontend
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# include frontend
#
# [Remember: No empty lines between comments and class definition]
class frontend {

   class { "apache::server": }

   class { "apache::configuration":
      stage => "configuration",
      
      conf => {
         "keep_alive_timeout" => 15,
      }
   }

   class { "apache::service": stage => "service" }

   $user = "jan"
   $home = "home_$user"
   $home_path = inline_template("<%= scope.lookupvar('::$home') %>")

   file { "$home_path/test.txt":
      content => "huhu",
   }

}
