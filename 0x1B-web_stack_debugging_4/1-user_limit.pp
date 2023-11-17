# user limit
exec { 'sed':
  command  => 'sudo sed -i "s/holberton/foo/" /etc/security/limits.conf',
  provider => shell
}
