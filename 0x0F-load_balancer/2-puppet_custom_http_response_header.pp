# custom http

exec { 'update':
  command => '/usr/bin/apt-get -y update',
}

package { 'nginx':
  ensure  => installed,
  require => Exec['update']
}

Exec { 'add_header':
  command  => 'sudo sed -i "/http {/a \\tadd_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf',
  provider => shell,
}

Exec { 'restart':
  command  => 'sudo service nginx restart',
  provider => shell,
}
