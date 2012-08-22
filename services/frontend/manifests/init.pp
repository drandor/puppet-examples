# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: frontend
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# include frontend
#
# [Remember: No empty lines between comments and class definition]
class frontend {

   class {
      "frontend::fs":            stage => "postpackage";
      "frontend::configuration": stage => "configuration";
   }

   #include frontend::fs
   #include frontend::configuration
   #
   # Class["frontend::fs"] 
   #   -> Class["frontend::configuration"]

}
