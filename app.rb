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

 get("/square_root/new") do
  erb(:square_root)
 end

 get("/square_root/results") do
  @the_num = params.fetch("number").to_f
  @the_result = Math.sqrt(@the_num)
  erb(:square_root_results)
 end

 get("/payment/new") do
  erb(:payment)
 end

 get("/payment/results") do
  @apr = params.fetch("apr").to_f
  @years = params.fetch("years").to_f
  @principal = params.fetch("principal").to_f
  erb(:payment_results)
 end
