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

  @number_of_periods = @years * 12
  @apr_percentage = @apr / 100
  @rate_per_period = @apr_percentage / 12

  @monthly_payment_numerator = @rate_per_period * @principal
  @monthly_payment_denominator = 1 - (1 + @rate_per_period) ** (-1 * @number_of_periods)

  @payment_result = @monthly_payment_numerator / @monthly_payment_denominator
  erb(:payment_results)
 end
