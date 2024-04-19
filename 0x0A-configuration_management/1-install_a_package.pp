# install flask from pip3 Version must be 2.1.0
# ensure: state the package should be in
# provider: The specific backend to use for this package
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
