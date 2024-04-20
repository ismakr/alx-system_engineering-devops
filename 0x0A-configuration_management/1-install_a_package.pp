# install flask v2.1.0 from pip3 Using Puppet.
package { ['python3-pip']:
  ensure => installed,
}
package { 'pip':
  ensure   => latest,
  require  => Package['python3-pip'],
  provider => 'pip',
}
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}
