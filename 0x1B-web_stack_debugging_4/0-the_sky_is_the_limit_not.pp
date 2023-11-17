# http request
exec { 'sed':
	command => 'sudo sed -i /15/4096/ /etc/default/nginx ;
	sudo service nginx restart'
}