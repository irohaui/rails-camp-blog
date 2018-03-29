require 'redis'

# Redis.current = Redis.new(:host => '127.0.0.1', :port => 6379)
uri = URI.parse('localhost:6379')
REDIS = Redis.new(host: uri.host, port: uri.port)
