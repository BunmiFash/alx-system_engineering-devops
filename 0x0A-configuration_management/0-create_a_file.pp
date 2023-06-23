#Creating a file

$str = 'I love Puppet'

file { '/tmp/school':
  ensure  => present,
  group   => 'www-data',
  owner   => 'www-data',
  content => $str,
  mode    => '0744',
}
