# custom http

exec { 'add_header':
  command  => 'sudo apt update;
  sudo apt install -y nginx;
  sudo sed -i "/http {/a add_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf;
  sudo service nginx restart',
  provider => shell
}
