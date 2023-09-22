# kill process
Exec { 'killmenow':
  path    => '/usr/bin/',
  command => 'pkill killmenow',
}
