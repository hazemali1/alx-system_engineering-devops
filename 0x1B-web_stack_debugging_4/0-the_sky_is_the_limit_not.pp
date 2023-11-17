# http request
exec { 'sed':
  command  => 'sudo sed -i s/15/4096/ /etc/default/nginx;
	sudo service nginx restart',
	provider => shell
}
