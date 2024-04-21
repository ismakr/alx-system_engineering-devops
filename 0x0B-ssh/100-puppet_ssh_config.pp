# make changes to our configuration file
file { '/root/.ssh/config':
  ensure  => 'present',
  content => 'Host *
  IdentityFile ~/.ssh/school
  PasswordAuthentication no',
}
