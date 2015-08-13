#!/bin/sh

aa_profiles='/etc/apparmor.d/'
aa_log='/var/log/apparmor.init.log'
/sbin/apparmor_parser -r $(find "$aa_profiles" -maxdepth 1 -type f -not -path '*/\.*') 
