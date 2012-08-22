# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#

class web_portal {

   include apache::server
   include frontend

   class { "web_portal::configuration":  stage => "configuration"; }

}
