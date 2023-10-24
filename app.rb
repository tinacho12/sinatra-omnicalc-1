require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end
