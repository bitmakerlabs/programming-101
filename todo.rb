require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, ENV['DATABASE_URL'] || 'postgres://localhost/todos')

class Todo
  include DataMapper::Resource

  property :id,           Serial    # An auto-incremented unique integer key
  property :task,         String    # A short string of characters
  property :completed_at, DateTime  # Stores the date and time that the task was completed
end

DataMapper.finalize
DataMapper.auto_upgrade!

get '/' do
  @todos = Todo.all
  erb :index
end

post '/todos' do
  @todo = Todo.create(:task => params['task'])
  redirect to('/')
end
