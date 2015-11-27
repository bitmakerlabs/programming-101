require "sinatra"
require "firebase"

# This is our custom Todo class
# * Each every item in our list will be a Todo object
# * It groups together all of the properties and functionality of a Todo item
# * It also simplifies saving and retrieving data from the database by putting
#   all of that work in one, centralized place

class Todo
  attr_accessor :id, :task, :completed_at

  @@firebase = Firebase::Client.new("https://programming-101.firebaseio.com/mina-mikhail")

  def initialize(id = nil, options)
    @id = id
    @task = options["task"]
    @completed_at = options["completed_at"]
  end

  def self.all
    todos = []

    response = @@firebase.get("todos")

    response.body.each do |id, todo|
      todos << Todo.new(id, todo)
    end

    todos
  end

  def self.create(new_task)
    response = @@firebase.push("todos", new_task)
    Todo.new(response.body["name"], new_task)
  end

  def update(changes)
    puts "Updating todos/#{id}"
    @@firebase.update("todos/#{id}", changes);
  end
end


# The sinatra web server code starts below
# * Each block below represents a "route"
# * Routes are the URLs on the server where we can perform actions on our Todo list

get "/" do
  @todos = Todo.all
  erb :index
end

post "/todos" do
  if !params["task"].empty?
    @todo = Todo.create(task: params["task"])
  end

  redirect to("/")
end

patch "/completed" do
  if params["todos"]
    Todo.all.each do |todo|
      if params["todos"].include?(todo.id.to_s)
        todo.update(completed_at: Time.now)
      else
        todo.update(completed_at: nil)
      end
    end
  end

  redirect to("/")
end
