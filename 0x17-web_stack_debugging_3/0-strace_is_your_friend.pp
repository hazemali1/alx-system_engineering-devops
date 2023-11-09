# debugging 3

exec { 'exec':
  command => "sed -i 's/phpp/php/' /var/www/html/wp-settings.php",
  path    => '/bin:/usr/bin',
}