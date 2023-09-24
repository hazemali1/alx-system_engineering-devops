# puppet
file_line { 'turn_off':
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
  }
file_line { 'declare_file':
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/holberton',
  }
