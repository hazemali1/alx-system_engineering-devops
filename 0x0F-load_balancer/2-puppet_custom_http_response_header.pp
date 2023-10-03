# custom http


exec { 'add_header':
  command  => 'apt-get update && apt-get -y install nginx && sed -i "/server_name _/a add_header X-Served-By $hostname;" /etc/nginx/sites-available/default && service nginx restart',
  path     => '/usr/bin',
  provider => shell,
}
