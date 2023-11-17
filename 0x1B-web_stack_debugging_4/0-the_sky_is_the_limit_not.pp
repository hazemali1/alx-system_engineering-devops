# http request
exec { 'sed':
  command => 'sudo sed -i s/15/1000/ /etc/default/nginx;
	sudo service nginx restart'
}
