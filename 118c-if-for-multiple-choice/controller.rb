require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/example1" do
  @gender = 
  @favorite_color =
  @blood_donor = 
  halt erb(:main)
end

get "/example2" do
  @gender = "Female"
  @favorite_color = "blue"
  @blood_donor =
  halt erb(:main)
end

get "/example3" do
  @gender = "Male"
  @favorite_color = "green"
  @blood_donor = "yes"
  halt erb(:main)
  halt erb(:example3)
end
