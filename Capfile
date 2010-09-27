load 'deploy' if respond_to?(:namespace) # cap2 differentiator

set :user, 'mmm'
set :application, "mtc"

set :repository, "git@november.openminds.be:mtc.git"

server "pro-004.openminds.be", :app, :web, :db, :primary => true

ssh_options[:forward_agent] = true

DatabaseYml = %Q{# By capistrano
production:
  adapter: mysql
  database: mmm_mtc
  username: mmm_mtc
  password: PuprAecR
  host: mysql-006.openminds.be
}

require 'gorilla-capistrano-recipes/deploy'
require 'gorilla-capistrano-recipes/mysql'
require 'gorilla-capistrano-recipes/passenger'
require 'gorilla-capistrano-recipes/radiant'