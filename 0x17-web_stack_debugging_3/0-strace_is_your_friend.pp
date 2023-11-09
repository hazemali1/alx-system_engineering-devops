# debugging 3

exec { 'exec':
	command 'sed -i /phpp/php/ /var/www/html/wp-settings.php'
}