set :stage, :production

server 'picard.randomoracle.com', user: 'deploy', roles: %w{web app db}
