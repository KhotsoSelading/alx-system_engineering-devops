# Fix problem of high amount of requests


# The increased ULIMIT of the default configuration
exec {'fix--nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
}


# Reloads the configuration
exec {'restart--nginx':
  provider => shell,
  command  => 'sudo service nginx restart',
}
