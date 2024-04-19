#!/usr/lib/python3/dist-packages/pip
# install flask from pip3
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
