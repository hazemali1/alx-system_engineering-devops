# custom http

Exec { 'update':
  command  => 'sudo apt update',
  provider => shell,
}

package { 'nginx':
  ensure  => installed,
  require => Exec['update']
}

file_line { 'header':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => 'add_header X-Served-By "$HOSTNAME";',
  require => Package['nginx'],
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
