class ssh::service {
			service { 'sshd':
			           ensure => running,
				}
}
