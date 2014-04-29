
role :app, %w{188.226.209.205}
role :web, %w{188.226.209.205}
role :db,  %w{188.226.209.205}

server "188.226.209.205", user: 'deployer', roles: %w{web app db}
set :deploy_to, "/home/deployer"
set :ssh_options, { :forward_agent => true, :port => 22 }