require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/patients/1" do
  @systolic = 110
  @diastolic = 75
  
  halt erb(:show)
end

get "/patients/2" do
  @systolic = 120
  @diastolic = 79
  
  halt erb(:show)
end

get "/patients/3" do
  @systolic = 118
  @diastolic = 82
  
  halt erb(:show)
end

get "/patients/4" do
  @systolic = 140
  @diastolic = 90
  
  halt erb(:show)
end