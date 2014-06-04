class mongod {

  file {
    '/etc/yum.repos.d/mongod.repo':
      owner => 'vagrant',
      group => 'vagrant',
      mode  => '0644',
      source => 'puppet:///modules/mongod/mongod.repo';
  }

  exec { 'install mongod 2.6.1':
    command => '/usr/bin/sudo /usr/bin/yum -y install mongodb-org-2.6.1 mongodb-org-server-2.6.1 mongodb-org-shell-2.6.1 mongodb-org-mongos-2.6.1 mongodb-org-tools-2.6.1';
  }

}
