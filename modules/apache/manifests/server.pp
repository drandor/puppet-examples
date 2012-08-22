# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: apache::server
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
class apache::server($ensure = "present") {

   class { "apache::user": stage => "bootstrap" }

   package { "apache2":
      ensure => $ensure,
   }

   define vhost($path="/etc/apache2/sites-enabled") {

      file { "${path}/${name}.conf":
         content => template("${caller_module_name}/apache/vhost/${name}.conf.erb"),
         owner   => "root",
         group   => "root",
         mode    => 0644,
         notify  => Service["apache2"],
      }

   }

   define configuration($path="/etc/apache2", $conf={}) {
      
      file { "${path}/${name}.conf":
         mode    => 600,
         owner   => "root",
         group   => "root",
         content => template("${caller_module_name}/apache/${name}.conf.erb"),
         notify  => Service["apache2"],
      }

   }

}
