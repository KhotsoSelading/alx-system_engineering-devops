# Fix problem of high amount of requests


# The increased ULIMIT of the default configuration
exec {'fix--nginx':
  provider => shell,
  command  => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx',
  before   => Exec['restart'],
}


# Reloads the configuration
exec {'restart--nginx':
  provider => shell,
  command  => 'sudo service nginx restart',
}
