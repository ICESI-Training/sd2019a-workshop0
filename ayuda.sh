Vagrant.configure("2") do |config|
	config.vm.provision "shell", path: "ayuda.sh"
end
