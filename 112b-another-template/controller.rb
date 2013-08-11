require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/projects/1" do
  @project = "Project Dolphin"
  @status = "ON SCHEDULE"
  
  halt erb(:project1)
end

get "/projects/2" do
  @project = "Project Nitro"
  @status = "BEHIND SCHEDULE"
  
  halt erb(:project2)
end
