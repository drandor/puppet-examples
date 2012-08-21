# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: apt::run::update
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# class { "apt::run::update": stage => "prepackage" }
#
# [Remember: No empty lines between comments and class definition]
class apt::run::update {

   exec { "apt-get-update":
      command => "/usr/bin/apt-get update",
   }

}
