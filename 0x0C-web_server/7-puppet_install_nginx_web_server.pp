# install nginx

Exec { 'update',
  command  => 'sudo apt update',
  provider => shell,
}

Package { 'nginx':
  provider => 'apt',
}

Exec { 'hello_world':
  command => 'echo "Hello World!" | sudo tee /var/www/html/index.html',
  provider => shell,
}

Exec { 'redirect_me':
  command => 'echo "server {
      listen 80 default_server;
      listen [::]:80 default_server;
      root   /etc/nginx/html;
      index  index.html index.htm;
      location /redirect_me {
          return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
      }
  }" > /etc/nginx/sites-available/default',
  provider => shell,
}

Exec { 'restart':
  command => 'sudo service nginx restart',
  provider => shell,
}
