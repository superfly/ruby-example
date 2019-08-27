require 'sinatra'

set :bind, '0.0.0.0'

get '/' do
  name = ENV['NAME'] || 'World'
  "Hello #{name}!"
end
