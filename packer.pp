
class packer_provision {

  service { 'nginx':
    ensure    => running,
    enable    => true,
  }
/*
  file { '/etc/nginx/sites-enabled/default':
    ensure    => present,
    owner     => nginx,
    group     => nginx,
    source    => '/tmp/nginx.conf',
  }

  package { 'supervisor':
    ensure    => installed,
  } ~>

  file { 'app-supervisor.conf':
    ensure    => present,
    source    => '/tmp/app-supervisor.conf',
    path      => '/etc/supervisor/conf.d/app-supervisor.conf',
    mode      => 0444,
  }

  service { 'supervisord':
    ensure    => running,
    enable    => true,
    subscribe => File['app-supervisor.conf'],
  }

  file { 'app':
    ensure    => present,
    source    => '/tmp/app',
    path      => 'usr/local/bin/app',
  }
*/

}