yum_package 'httpd' do
 action :install
end
execute 'init_apache' do
 comand 'systemctl start httpd'
end
execute 'ena_apache' do
 comand 'systemctl enable httpd'
end

execute 'status_apache' do
 comand 'systemctl status httpd'
end
remote_file '/var/www/index.html'
 source 'http://www.icesi.edu.co/'
end
 
