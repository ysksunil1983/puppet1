class ssh::install {
		    #if $::osfamily == 'RedHat'
			#{
			 # $pack = 'openssh'
			#}
		    #else
			#{
			 # $pack = 'ssh'
			#}	
		     #case $::osfamily {
				 # 'RedHat': { $pack = 'openssh' }
				  #'Debian': { $pack = 'ssh' }
				  # default: { warning ("could not install the ssh packaage") }
				#}
		    $pack = $::osfamily?
			{
			 'RedHat' => 'openssh',
			 'Debian' => 'ssh',
			}
								
	             package { 'open ssh installation':
				name => $pack,
				ensure => present,
			     }
}
