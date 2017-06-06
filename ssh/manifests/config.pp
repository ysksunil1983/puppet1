class ssh::config {
		    file { '/etc/ssh/sshd_config':
			    source => 'puppet:///modules/ssh/sshd_config',
			 }
}
