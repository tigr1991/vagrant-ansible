Vagrant.require_version ">= 1.8.0"
Vagrant.configure("2") do |config|

	config.vm.box = "ubuntu/xenial64"
	config.vm.provider :virtualbox do |v|
		v.memory = 1024
		v.cpus = 1
	end

	project_name = "test"
	project_root = "/vagrant"

	config.vm.network "private_network", type: "dhcp"

	config.vm.provision "shell",
		path: "build/main.sh",
		env: {
			"PROJECT_ROOT": project_root,
			"PROJECT_NAME": project_name,
		},
		keep_color: true

end
