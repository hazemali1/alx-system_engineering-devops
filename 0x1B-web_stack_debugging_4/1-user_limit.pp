# user limit
exec { 'sed':
  command  => 'sudo sed -i "s/4/4096/" /etc/security/limits.conf;
	sudo sed -i "s/5/8192/" /etc/security/limits.conf',
  provider => shell
}
