require "sinatra"
require "sinatra/reloader"

get("/") do
 erb(:home)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do 
  @user_number = params.fetch("number").to_i

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

end

get("/random/results") do

end

get("payment/new") do

end

get("payment/results") do

end
