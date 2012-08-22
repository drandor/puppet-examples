# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#

class mailserver {

   class {
      "dovecot::server":            stage => "main";
      "mailserver::configuration":  stage => "configuration";
   }

}
