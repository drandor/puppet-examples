# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: apache::service
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# class { "apache::service": stage => "service", ensure => "started|stopped" }
#
# [Remember: No empty lines between comments and class definition]
class apache::service($ensure = "running") {

   service { "apache2":
      ensure => $ensure,
   }

}
