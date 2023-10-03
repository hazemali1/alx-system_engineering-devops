# custom http

Exec { 'update':
  command  => 'sudo apt update ; sudo apt install -y nginx',
  provider => shell,
}

exec { 'add_header':
  command  => 'sudo sed -i "/server_name _/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default
  sudo service nginx restart',
  provider => 'shell',
}
