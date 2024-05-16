require "sinatra"
require "sinatra/reloader"

get("/") do
 erb(:home)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do 

end

get("/square_root/new") do

end

get("/square_root/results") do

end

get("/random/new") do

end

get("/random/results") do

end

get("payment/new") do

end

get("payment/results") do

end
