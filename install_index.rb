yum_package 'httpd' do
  action :install
end

service 'httpd' do
  action :start
end

remote_file '/var/www/html/index.html' do
  source 'http://www.icesi.edu.co/'
  action :create
end
