yum_package 'httpd' do
  action :install
end
remote_file '/var/www/html/index.html' do
  source 'http://www.icesi.edu.co/'
end
service 'httpd' do
  action :start
end
