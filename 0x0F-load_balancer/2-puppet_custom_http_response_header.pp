# custom http

exec { 'update':
  command  => 'apt update',
  path     => '/usr/bin',
  provider => shell,
}

package { 'nginx':
  ensure  => installed,
  require => Exec['update'],
}

file { '/etc/nginx/nginx.conf':
  ensure  => present,
  content => "add_header X-Served-By $hostname;",
  require => Package['nginx'],
}

service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/nginx.conf'],
}
