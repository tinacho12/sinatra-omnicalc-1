require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  erb(:square)
 end

 get("/square/results") do
  @the_num = params.fetch("number").to_f
  @the_result = @the_num ** 2
  erb(:square_results_simplified)
 end
