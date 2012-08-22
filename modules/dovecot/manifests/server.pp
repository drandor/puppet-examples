# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: dovecot
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# class { "dovecot": }
#
# [Remember: No empty lines between comments and class definition]
class dovecot::server($ensure="present") {

   package {
      "dovecot-imapd":
         ensure => $ensure;
      "dovecot-pop3d":
         ensure => $ensure;
   }

   define configuration($path="/etc/dovecot", $conf={}) {

      file { "${path}/dovecot.conf":
         content => template("${caller_module_name}/dovecot/${name}.conf.erb"),
         owner   => "root",
         group   => "root",
         #notify  => Service["dovecot"],
      }

   }

}
