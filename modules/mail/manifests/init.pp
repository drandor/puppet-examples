# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: mail
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# include mail
#
# [Remember: No empty lines between comments and class definition]
class mail {

   define user($ensure = "present", $email) {

      if $mail_server_class == "dovecot" {
         dovecot::user { $name: ensure => $ensure, email => $email }
      }

      else {
         fail("No mail class defined! (${mail_server_class}")
      }

   }

   define address($ensure = "present", $user) {
   }

   define forward($ensure = "present", $email, $to) {
   }

}
