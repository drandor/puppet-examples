# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: php
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# class { "php": ensure => "present|absent" }
#
# [Remember: No empty lines between comments and class definition]
class php($ensure="present") {

   package { "php":
      ensure => $ensure,
   }

   define configuration($conf={}, $path="/etc") {

      file { "${path}/php.ini":
         content => template("${caller_module_name}/php/${name}.ini.erb"),
         owner  => "root",
         group  => "root",
         mode   => 0644,
      }

   }

}
