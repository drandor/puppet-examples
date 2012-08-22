# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: groupware::configuration
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# include groupware::configuration
#
# [Remember: No empty lines between comments and class definition]
class groupware::configuration {

   mail::user { "joe": email => "joe@doe.de", }
   mail::user { "baz": email => "baz@doe.de", }

}
