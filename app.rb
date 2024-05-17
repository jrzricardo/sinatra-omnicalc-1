require "sinatra"
require "sinatra/reloader"

get("/") do
 erb(:home)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do 
  @user_number = params.fetch("number").to_f

  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_square_root)
end

get("/square_root/results") do
  @user_number = params.fetch("number").to_f

  erb(:square_root_results)
end

get("/random/new") do

  erb(:random_number)
end

get("/random/results") do
  @min_number = params.fetch("user_min").to_i
  @max_number = params.fetch("user_max").to_i
  @rand_number = rand(@min_number..@max_number)
  
  erb(:random_number_results)
end

get("/payment/new") do

  erb(:payment)
end

get("/payment/results") do
  @apr = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_i
  @pv = params.fetch("user_pv").to_i
  
  percentage_rate = @apr / 100 
  r = percentage_rate / 12

  n = @years * 12

  payment = (r * @pv) / (1 - (1 + r) ** (n * -1)) 
  @p = payment.to_fs(:currency)
  erb(:payment_results)
end
