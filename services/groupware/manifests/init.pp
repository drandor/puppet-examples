# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: groupware
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# include groupware
#
# [Remember: No empty lines between comments and class definition]
class groupware {

   class {
      "groupware::fs":              stage => "postpackage";
      "groupware::configuration":   stage => "configuration";
   }

}
