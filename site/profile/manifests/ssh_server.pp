class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDfDXQ1BVpcXkxw0zZHfBPRLY8FQllYmyXnZ56dy7LzzlQPBetQGzFTk1AXY88JgAl/7LW7DwfA9SFmEZp9dotuFUblvvBF9SyARTpE/Xb4r5l5hoiuE9IopqoCuP3OGpTQDYtD5XizBWQnbLqQ9Oj2yZ3k5D6Wxj6q9ZbrFU5SilHVDkAM+eRCb0Y+MzAQuOpJqBoIYAkxhHc6CnTMnOBdy10bseRZ7xHDX4H2GJLnwp5RrZQwA+sJCtwjZliB0+ZI9FpBwFMAyxMgV+XueUXpXOf3AH8Q9OLCcyCHFfS6nvkfLvIBZOA35p3z4K2+HQphiMz+Yqw2KlInfY3WY5Gj',
	}  
}
