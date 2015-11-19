require 'bundler'
Bundler.require

get '/' do
  erb :hello
end

get '/world' do
  erb :world
end

get '/mom' do
  {
    :message => 'Your momma so fat'
  }.to_json
end
