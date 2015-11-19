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

get '/submit' do
  erb :submit
end

post '/submit_form' do
 # log params to console
 #SECRET
 #params is a Hash (kvp key value pair) built into Sinatra
 p params
 return params.to_json
end

get '/happy' do
  happy_things = Dictionary.new({
    :theworld => 'is awesome'
    })
  return happy_things.to_json
end
