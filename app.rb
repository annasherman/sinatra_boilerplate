require 'bundler'
Bundler.require

get '/' do
  {
    :message => 'This is a boilerplate'
  }.to_json
end
