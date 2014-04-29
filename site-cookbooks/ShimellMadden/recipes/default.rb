include_recipe "mysql::client"
include_recipe "mysql::server"
include_recipe "database::mysql"

mysql_creds = Chef::EncryptedDataBagItem.load("pass", "mysql")
root_pw = mysql_creds["root"]
railuser_pw = mysql_creds["railsuser"]

mysql_service node['mysql']['service_name'] do
  port node['mysql']['port']
  data_dir node['mysql']['data_dir']
  server_root_password root_pw
  server_debian_password node['mysql']['server_debian_password']
  server_repl_password node['mysql']['server_repl_password']
  allow_remote_root node['mysql']['allow_remote_root']
  remove_anonymous_users node['mysql']['remove_anonymous_users']
  remove_test_database node['mysql']['remove_test_database']
  root_network_acl node['mysql']['root_network_acl']
  action :create
end

mysql_database 'ShimellMadden' do
  connection ({:host => 'localhost', :username => 'root', :password => root_pw})
  action :create
end

mysql_database_user "railsuser" do
  connection ({:host => 'localhost', :username => 'root', :password => root_pw})
  password railuser_pw
  database_name "ShimellMadden"
  privileges [:select,:update,:insert,:create,:delete, :index]
  action :grant
end