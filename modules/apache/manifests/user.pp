# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: apache::user
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# class { "apache::user": stage => "bootstrap" }
#
# [Remember: No empty lines between comments and class definition]
class apache::user($ensure = "present") {

   group { "www-data":
      system => true,
      gid    => 33,
      ensure => $ensure,
   }

   user { "www-data":
      system => true,
      uid    => 33,
      gid    => 33,
      ensure => $ensure,
      require => Group["www-data"],
   }

}
