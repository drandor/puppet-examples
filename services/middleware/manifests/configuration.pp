# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: middleware::configuration
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# class { "middleware::configuration": ensure => "present|absent" }
#
# [Remember: No empty lines between comments and class definition]
class middleware::configuration {

   php::configuration { "middleware":
      path => "/var/www/middleware/conf",
   }

}
