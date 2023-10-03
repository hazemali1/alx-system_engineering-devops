# custom http

Exec { 'update':
  command  => 'sudo apt update ; sudo apt install -y nginx',
  provider => shell,
}

Exec { 'add_header':
  command  => 'sudo sed -i "/http {/a \\tadd_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf',
  provider => shell,
}

Exec { 'restart':
  command  => 'sudo service nginx restart',
  provider => shell,
}
