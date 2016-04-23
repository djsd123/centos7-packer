# Install additional packages
  $packages = ['nginx','nmap','bind-utils','git','tree','telnet','lsof']



  #Start the nginx webserver

  service { 'nginx':
    ensure    => running,
    enable    => true,
    require   => $packages,
  }

  ensure_packages($packages)