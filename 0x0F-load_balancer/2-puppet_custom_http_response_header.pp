# custom http

exec { 'add_header':
  command  => 'sudo apt-get update;
  sudo apt-get -y install nginx;
  sudo sed -i "/http {/a \\tadd_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf
  sudo service nginx restart',
  provider => 'shell',
}
