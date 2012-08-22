# -*- tab-width:3;indent-tabs-mode:nil;  -*-
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
# Class: repository::epel
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
# class { "repository::epel": stage => "file" }
#
# [Remember: No empty lines between comments and class definition]
class repository::epel {

   file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6":
      source => "puppet:///modules/repository/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6",
   }

   yumrepo {"epel":
      baseurl => "http://download.fedoraproject.org/pub/epel/6/\$basearch",
      enabled => 1,
      gpgcheck => 1,
      gpgkey => "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6",
      require => File["/etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-6"],
   }

}
