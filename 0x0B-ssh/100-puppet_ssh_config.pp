# make changes to our configuration file
file_line { 'IdentityFile':
  ensure  => 'present',
  path    => '/etc/ssh/sshd_config',
  line    => 'IdentityFile ~/.ssh/school',
}
file_line { 'PasswordAuthentication':
  ensure  => 'present',
  path    => '/etc/ssh/sshd_config',
  line    => 'PasswordAuthentication no',
}
