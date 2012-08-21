# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: apache::configuration
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# class { "apache::configuration": stage => "configuration", conf => {} }
#
# [Remember: No empty lines between comments and class definition]
class apache::configuration($ensure = "present", $conf = {}) {

   file { "/etc/apache2/apache2.conf":
      ensure  => $ensure,
      mode    => 600,
      owner   => "root",
      group   => "root",
      content => template("apache/etc/apache2/apache2.conf.erb"),
      notify  => Service["apache2"],
   }

}
