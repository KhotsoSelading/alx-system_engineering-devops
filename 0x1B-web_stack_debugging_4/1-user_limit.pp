# Fix problem of high amount files opened

# Hard file limit increase for Holberton user.
exec {'replace-1':
  provider => shell,
  command  => 'sudo sed -i "s/nofile 5/nofile 50000/" /etc/security/limits.conf',
  before   => Exec['replace-2'],
}

# Soft file limit increase for Holberton user.
exec {'replace-2':
  provider => shell,
  command  => 'sudo sed -i "s/nofile 4/nofile 40000/" /etc/security/limits.conf',
}
