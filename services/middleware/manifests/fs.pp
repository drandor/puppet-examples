# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: middleware::fs
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# class { "middleware::fs": ensure => "present|absent" }
#
# [Remember: No empty lines between comments and class definition]
class middleware::fs {

   file { "/var/www/middleware":
      ensure => "directory",
      owner  => "www-data",
      group  => "www-data",
   }

   ->

   file { "/var/www/middleware/htdocs":
      ensure => "directory",
      owner  => "www-data",
      group  => "www-data",
   }

   ->

   file { "/var/www/middleware/conf":
      ensure => "directory",
      owner  => "www-data",
      group  => "www-data",
   }

}
