# manifest that kills a process named killmenow.
exec {'kill process':
  command => 'pkill -9 pgrep killmenow',
}
