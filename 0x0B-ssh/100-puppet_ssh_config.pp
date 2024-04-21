# make changes to our configuration file
file_line { 'IdentityFile':
  path   => '/etc/ssh/sshd_config',
  line   => '    IdentityFile ~/.ssh/school',
}
file_line { 'PasswordAuthentication':
  path   => '/etc/ssh/sshd_config',
  line   => '    PasswordAuthentication no',
}
