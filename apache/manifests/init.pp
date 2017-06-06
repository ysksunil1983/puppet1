class apache inherits motd{
		package { 'httpd':
			  ensure => present,
			  before => File['/var/www/html/index.html'],
			}
		file { '/var/www/html/index.html':
			  source => 'puppet:///modules/apache/index.html',
			  notify => Service['httpd'],
		     }
		service { 'httpd':
			  ensure => running,
			  require => Package['httpd'],
			}
		$name2 = "cricket"
		$game = $name3
		$name4 = $name5
	        notify { "the  variable  we are acessing is  {$name2}":}
	        notify { "the  variable game is  we are acessing is  {$game}":}
	        notify { "the  os vvariable game is  we are acessing is  {$::osfamily}":}
	        notify { "the  site  vvariable game is  we are acessing is  {$name4}":}
                       
}
