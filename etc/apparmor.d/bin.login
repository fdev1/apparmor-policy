# For now we use an unconfined profile for
# login. This is so that it can read the ~/.ssh
# directory to decrypt SSH keys (pam_ssh.so)

profile login  /bin/login {
	#include <noexec-policy.d/capsall>
	/{,**} rwmklpx,
}
