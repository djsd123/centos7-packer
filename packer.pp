
class packer_provision {

  #Install and start the nginx webserver

  service { 'nginx':
    ensure    => running,
    enable    => true,
    require   => Package['nginx'],
  }

  package { 'nginx':
    ensure    => installed,
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
  } ->

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