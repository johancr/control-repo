class profile::ssh_server {
  package {'openssh-server':
    ensure => present
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDGFSyA+s3o5iQAPKQ7ARTifYI6bZbfN5LZtOICwk97WJLdpMpEkv46KvYMUwEV/nNS+VzlJC+t7wezsMzFynBphl0PB0y6SNqosQeBJkhDUiC2Ku1NQIqhi+/UX7k8EW87bixmIF6YZLDM6R7QXQYPueuh1mjt1Y3GBhEW5vcOrjSzoieo3V70/spuA5X6309gFYHqzP+XFPOsQNhZQCDLY/cffPwvl7Ghm8zM2cxwc6GdTVzYCyHBgw0UWrsSWJ/tfTmUmdqziN/Db3EvE12tqMqqUmjZp2sj4lwmx5Pqerpw8jRAKk4/UMAz67Uf8jsh7CthB1ZAzf7C39hfKVIR',
  }
}
