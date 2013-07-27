require '../dvc-sinatra.rb'

get "/" do
  @types = Bird.all
  halt erb(:index)
end

get "/birds/:id" do
  id = params[:id]
  @birds = Bird.find(id)
  halt erb(:root)
end