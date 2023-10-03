# custom http

exec { 'update':
  command  => 'sudo apt update ; sudo apt install -y nginx',
  provider => shell,
}

package { 'nginx':
  ensure  => installed,
  require => Exec['update']
}

exec { 'add_header':
  command  => 'sudo sed -i "/server_name _;/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default',
  provider => shell,
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
