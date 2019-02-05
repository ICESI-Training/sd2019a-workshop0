yum_package 'httpd' do
 action :install
end

remote_file '/var/www/html/index.html' do
  source 'http://www.icesi.edu.co/'
  action :create
end

service 'httpd' do
  action :start
end

