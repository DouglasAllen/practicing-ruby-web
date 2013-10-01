set :deploy_to, "/home/deploy"
set :user, "deploy"
set :repository, "https://github.com/mlafeldt/practicing-ruby-web.git"
set :branch, "vagrant"
set :rails_env, "development"
set :default_environment, { "PATH" => "/opt/rubies/2.0.0-p247/bin:$PATH" }

server "practicingruby.local", :app, :web, :db, :primary => true

after "deploy:restart", "unicorn:restart"
