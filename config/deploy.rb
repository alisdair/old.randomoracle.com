set :application, 'randomoracle.com'
set :repo_url, 'git@github.com:alisdair/randomoracle.com.git'
set :branch, 'master'

set :deploy_to, '/home/deploy/randomoracle.com'

# set :format, :pretty
# set :log_level, :debug
# set :pty, true

set :linked_files, %w{.env}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :finishing, 'deploy:cleanup'

end
