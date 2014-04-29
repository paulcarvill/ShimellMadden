
role :app, %w{127.0.0.1}
role :web, %w{127.0.0.1}
role :db,  %w{127.0.0.1}

server "127.0.0.1", user: 'deployer', roles: %w{web app db}
set :deploy_to, "/home/deployer"
set :ssh_options, { :forward_agent => true, :port => 2222 }