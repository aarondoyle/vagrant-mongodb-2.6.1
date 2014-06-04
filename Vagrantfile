Vagrant.configure("2") do |config|

  #Vagrant Box
  config.vm.box = 'CentOS-6.4-x86_64-puppet-chef-vboxguest'
  config.vm.box_url = 'http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20131103.box'

  #Networking
  config.vm.network "private_network", ip: "10.0.0.2"

  #Puppet provisioning
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.manifest_file = 'site.pp'
    puppet.module_path = 'puppet/modules'
  end
end
