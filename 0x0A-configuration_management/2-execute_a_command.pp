exec { 'kill_killmenow':
  command => 'pkill -f killmenow',
  path    => '/usr/bin:/usr/sbin:/bin',
  before  => Service['killmenow'],
}

service { 'killmenow':
  ensure => 'stopped',
  enable => false,
}
