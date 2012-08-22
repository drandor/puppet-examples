# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: middleware
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# include middleware
#
# [Remember: No empty lines between comments and class definition]
class middleware {

   class {
      "middleware::fs":            stage => "postpackage";
      "middleware::configuration": stage => "configuration";
   }

}
