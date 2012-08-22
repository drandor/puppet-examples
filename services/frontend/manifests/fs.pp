# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: frontend::fs
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# class { "frontend::fs": ensure => "present|absent" }
#
# [Remember: No empty lines between comments and class definition]
class frontend::fs {

   file { "/var/www":
      ensure => "directory",
      owner  => "www-data",
      group  => "www-data",
   }

   ->

   file { "/var/www/simple":
      ensure => "directory",
      owner  => "www-data",
      group  => "www-data",
   }

   ->

   file { "/var/www/simple/htdocs":
      ensure => "directory",
      owner  => "www-data",
      group  => "www-data",
   }

   ->

   file { "/var/www/simple/conf":
      ensure => "directory",
      owner  => "www-data",
      group  => "www-data",
   }

}
