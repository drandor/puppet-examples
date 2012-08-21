# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: apt::fs
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# class { "apt::fs": stage => "file" }
#
# [Remember: No empty lines between comments and class definition]
class apt::fs {

   file { "/etc/apt/sources.list":
      owner  => "root",
      group  => "root",
      mode   => 0644,
      source => "puppet:///apt/etc/apt/sources.list",
      notify => Exec["apt-get-update"],
   }

}
