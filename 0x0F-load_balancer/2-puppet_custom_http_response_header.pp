# custom http

exec { 'add_headerr':
  command  => 'sudo apt-get update;
  sudo apt-get -y install nginx'
  provider => 'shell',
}

exec { 'add_header':
  command  => 'sudo sed -i "/server_name _/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default
  sudo service nginx restart',
  provider => 'shell',
}
