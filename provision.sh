vagrant.configure("2") do |config|
		config.vm.provision "shell":path "provision.sh"
end
