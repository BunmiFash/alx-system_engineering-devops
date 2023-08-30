# Install Nginx with puppet

package { 'nginx':
  ensure   => 'present',
}

exec { 'install':
  command  => 'sudo apt-get -y update ; sudo apt-get -y install nginx',
  provider => shell,
}

exec { 'hello':
  command  => 'echo "Hello World!" | sudo tee /usr/share/nginx/html/index.html',
  provider => shell,
}

exec { 'sudo sed -i "s/listen 80 default_server;/listen 80 \
  default_server;\\n\\tlocation \/redirect_me {\\n\\t\\treturn 301 https:\/\/www.github.com/BunmiFash\/;\\n\\t}/" \
  /etc/nginx/sites-available/default':
  provider => shell,
}

exec { 'run':
  command  => 'sudo service nginx restart',
  provider => shell,
}
