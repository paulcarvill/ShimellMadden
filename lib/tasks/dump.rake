require 'erb'
require 'yaml'

namespace :dump do
  

  task :barrier do
    system "scp root@178.62.4.10:/tmp/dump_production.sql.gz tmp/dump_production.sql.gz"
  end

  desc "Export the database"
  task :export do
    file = ENV['FILE']
    raise "Need a FILE" unless file

    env = ENV['RAILS_ENV']
    raise "Need a RAILS_ENV" unless env

    db_config = current_db_config(env)
    system "#{mysqldump(db_config)} | gzip -c > #{file}"
  end

  desc "Import a database"
  task :import => :barrier do
    
    env = ENV['RAILS_ENV']
    raise "Need a RAILS_ENV" unless env
    raise "Import on production is forbidden" if env == "production"

    db_config = current_db_config(env)
    system "gzip -d -c tmp/dump_production.sql.gz | #{mysql(db_config)}"
  end

  def current_db_config(env)
    YAML::load(ERB.new(IO.read(File.join(File.dirname(__FILE__), '../../config/database.yml'))).result)[env]
  end

  def mysql(config)
    sql_cmd('mysql', config)
  end

  def mysqldump(config)
    sql_cmd('mysqldump', config) + " --add-drop-table --extended-insert=TRUE --disable-keys --complete-insert=FALSE --triggers=FALSE"
  end

  def sql_cmd(sql_command, config)
    "".tap do |cmd|
      cmd << sql_command
      cmd << " "
      cmd << "-u#{config['username']} " if config['username']
      cmd << "-p#{config['password']} " if config['password']
      cmd << "-h#{config['host']} " if config['host']
      cmd << "-P#{config['port']} " if config['port']
      cmd << "--default-character-set utf8 "
      cmd << config['database'] if config['database']
    end
  end
end