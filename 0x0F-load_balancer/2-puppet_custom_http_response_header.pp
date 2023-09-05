# Custom HTTP Response Header

exec { 'update server':
  command => '/usr/bin/apt-get update',
}

package { 'nginx':
  ensure  => 'present'.
}

file_line { 'header':
  path  => '/etc/nginx/nginx.conf',
  match => ''http {',
  line  => "http {\n\tadd_header X-Served-By \"${hostname}\";",
}

exec { 'execute':
  command => '/usr/sbin/service nginx restart',
}
