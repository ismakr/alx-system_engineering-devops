# install flask from pip3 Version must be 2.1.0
exec { 'install flask':
  command => 'pip install flask == 2.1.0',
  path    => '/usr/bin:/bin',
}
