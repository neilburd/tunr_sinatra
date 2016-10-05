require "sinatra"
require "sinatra/reloader"
require "active_record"

require_relative "db/connection"
require_relative "models/instructor"
require_relative "models/student"

get "/instructors" do
  @instructors = Instructor.all
  erb :"instructors/index"
end

get "/instructors/new" do
  erb :"instructors/new"
end

post "/instructors" do
  @instructor = Instructor.create(params[:instructor])
  redirect "/instructors/#{@instructor.id}"
end

get "/instructors/:id" do
  @instructor = Instructor.find(params[:id])
  erb :"instructors/show"
end
