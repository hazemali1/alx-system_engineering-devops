# install nginx

Exec { 'update':
  command  => 'sudo apt update ; sudo apt install -y nginx',
  provider => shell,
}

Exec { 'hello_world':
  command  => 'echo "Hello World!" | sudo tee /var/www/html/index.html',
  provider => shell,
}

exec {'sudo sed -i "s/listen 80 default_server;/listen 80 default_server;\\n\\tlocation \/redirect_me {\\n\\t\\treturn 301 https:\/\/oluwaseundasilva.hashnode.dev\/;\\n\\t}/" /etc/nginx/sites-available/default':
  provider => shell,
}

Exec { 'restart':
  command  => 'sudo service nginx restart',
  provider => shell,
}
