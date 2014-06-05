class baseconfig {
  exec { 'yum update':
    command => '/usr/bin/sudo /usr/bin/yum -y update';
  }

  service {'iptables':
    ensure => stopped,
  }
}
