
  #Install and start the nginx webserver

  package { 'nginx':
    ensure    => installed,
  } ->

  service { 'nginx':
    ensure    => running,
    enable    => true,
  }
