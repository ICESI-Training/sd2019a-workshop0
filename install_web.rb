yum_package 'httpd' do
  action:install
end

yum_package 'wget' do
  action:install
end

execute 'wget' do
  command 'wget -P /var/www/html http://icesi.edu.co/'
end

execute 'service' do
  command 'sudo service httpd start'
end
