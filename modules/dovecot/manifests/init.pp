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
class dovecot {

   define user($ensure = "present", $email) {
      notify { "Creating dovecot user: ${name} with ${email}": }
   }

   define address($ensure = "present", $user) {
      notify { "Creating dovecot address: ${name} for ${user}": }
   }

   define forward($ensure = "present", $email, $to) {
      notify { "Creating dovecot forward: ${name} for ${user}": }
   }

}
