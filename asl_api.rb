require 'sinatra'
require 'shotgun'

get '/' do
  'Index'
end

get '/signs' do
  'return the GIF for the passed input'
end

get '/random' do
  'return a random sign'
end
