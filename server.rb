require 'sinatra'

set :bind, '0.0.0.0'
set :port, 8080

get '/' do
  name = ENV['NAME'] || 'World'
  "Hello #{name}!"
end
