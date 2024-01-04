# SSH Client configuration with puppet

file { '/home/ubuntu/.ssh/config':
  ensure  => present,
  content => "
    Host 429998-web-01
    HostName 34.205.65.61
    User ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
  ",
  mode    => '0600',
  owner   => 'ubuntu',
  group   => 'ubuntu',
}

