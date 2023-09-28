# Install Nginx package
package { 'nginx':
  ensure => 'installed',
}

# Ensure Nginx service is enabled and running
service { 'nginx':
  ensure => 'running',
  enable => true,
}

# Configure Nginx server block
file { '/etc/nginx/sites-available/default':
  ensure => file,
  content => template('nginx/default.conf.erb'),
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Create an HTML file with "Hello World!"
file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
  require => Package['nginx'],
}

# Create a 301 redirect for /redirect_me
nginx::resource::location { 'redirect_me':
  location => '/redirect_me',
  ensure   => 'present',
  alias    => '/var/www/html',
  rewrite  => '^/redirect_me$ / permanent;',
  require  => File['/var/www/html/index.html'],
}
