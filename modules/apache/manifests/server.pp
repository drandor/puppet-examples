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

}
