# Ensure that bundle is used for rake tasks
SSHKit.config.command_map[:rake] = "bundle exec rake"

# config valid only for Capistrano 3.2.1
lock '3.2.1'


set :application, "ShimellMadden"
set :repo_url, "git@github.com:paulcarvill/ShimellMadden.git"
set :branch, "master"
set :ssh_options, { :port => 22 }
set :scm, :git
set :use_sudo, false
set :deploy_via, :copy
set :keep_releases, 2
set :rails_env, 'production'
#set :tmp_dir, "/home/deployer/tmp"

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
# set :deploy_to, '/var/www/my_app'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# set up symlink for database connection details, so we don't have to store
# them in version control (they're added manually to the server)
set :linked_files, %w{config/database.yml config/secrets.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
      execute "sudo service unicorn restart"
      execute "sudo service nginx restart"
    end
  end

  task :setup_config do
    on roles(:app), in: :sequence, wait: 5 do
      execute "sudo ln -nfs #{current_path}/config/nginx.conf /etc/nginx/sites-enabled/default"
      execute "sudo ln -nfs #{current_path}/config/unicorn_init.sh /etc/init.d/unicorn"
    end
  end

  after :publishing, "deploy:setup_config"

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
