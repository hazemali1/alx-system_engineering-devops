# custom http

exec { 'update':
  command  => 'sudo apt update ; sudo apt install -y nginx',
  provider => shell,
}

exec { 'add_header':
  command  => 'sudo sed -i "/http {/a \\tadd_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf',
  provider => shell,
}

exec { 'restart':
  command  => 'sudo service nginx restart',
  provider => shell,
}
