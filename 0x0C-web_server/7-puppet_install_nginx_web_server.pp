# install nginx

Exec { 'update':
  command  => 'sudo apt update ; sudo apt install -y nginx',
  provider => shell,
}

Exec { 'hello_world':
  command  => 'echo "Hello World!" | sudo tee /var/www/html/index.html',
  provider => shell,
}

Exec { 'redirect_me':
  command  => 'sudo sed -i "s/listen 80 default_server;/listen 80 default_server;\\n\    location /redirect_me {\\n\    return 301  https://www.youtube.com/watch?v=QH2-TGUlwu4;\\n\    }/" /etc/nginx/sites-available/default',
  provider => shell,
}

Exec { 'restart':
  command  => 'sudo service nginx restart',
  provider => shell,
}
