AppArmor Policies
=================

Collection of AppArmor policies based on the AppArmor
base policy and scripts and systemd unit files for
loading/unloading profiles.

This policy includes a catch-all policy (noexec-policy) that
prevents execution of code on all world writeable directories.
It also prevents access to sensitive directories such as .ssh,
.gnupg, etc. This policy is applied to all process except init
and whatever is started before the policy is loaded.

To run a program unconfined a script (aa-uexec) is included that
runs the program under the "unconfined" profile which has no
restrictions. This is useful for development.

The script aa-uexec must be executed via sudo (even if you're root) 
but it executes the command as a regular user. The result is that in 
order to run anything unconfined you need to be authorized to run aa-uexec
via sudo. To run a program unconfined and as root via sudo you must
invoke sudo again in the command as follows:

sudo aa-uexec sudo /bin/bash

The above command starts an unconfined bash shell as root. To start
an unconfined shell as yourself run:

sudo aa-uexec /bin/bash
