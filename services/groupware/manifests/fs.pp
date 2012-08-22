# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: groupware::fs
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# include groupware::fs
#
# [Remember: No empty lines between comments and class definition]
class groupware::fs {

   file { "/data":
      ensure => "directory",
      owner  => "root",
      group  => "root",
   }

   ->

   file { "/data/mail":
      ensure => "directory",
      owner  => "root",
      group  => "root",
   }

}
