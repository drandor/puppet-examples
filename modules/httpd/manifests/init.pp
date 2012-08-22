# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: httpd
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# include httpd
#
# [Remember: No empty lines between comments and class definition]
class httpd {

   define configuration() {
   }

   define vhost() {
      
      if $globals::httpd_server_class == "apache" {
         apache::server::vhost{ $name: caller => $caller_module_name }
      }

   }

}
