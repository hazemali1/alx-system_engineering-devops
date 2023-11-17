# user limit
exec { 'sed':
  command  => 'sudo sed -i "s/holberton/foo/" /etc/security/limits.conf;
  sudo service nginx restart',
  provider => shell
}
