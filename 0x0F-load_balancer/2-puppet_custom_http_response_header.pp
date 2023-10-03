# custom http

exec { 'add_header':
  command  => 'sudo apt update;
  sudo apt install -y nginx;
  sudo sed -i "/server_name _/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default;
  sudo service nginx restart',
  provider => 'shell',
}
