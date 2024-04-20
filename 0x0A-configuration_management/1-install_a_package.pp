# install flask v2.1.0 from pip3 Using Puppet.
include python
include python::virtualenv
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
