require 'sinatra'

get '/' do
  @todos = ['Build a time machine', 'Go back in time', 'Meet parents', 'Convince them to fall in love', 'Go Back to the Future']
  erb :index
end
