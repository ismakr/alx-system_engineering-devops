file { '/root/.ssh/config':
  ensure  => file,
  content => 'Host *
  IdentityFile ~/.ssh/school
  PasswordAuthentication no',
}
