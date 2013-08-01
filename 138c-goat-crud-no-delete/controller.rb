require '../dvc-sinatra.rb'

get "/" do
  @goats = RacingGoat.all
  halt erb(:index)
end

get "/new-goat" do
  @goat = RacingGoat.new
  halt erb(:edit)
end

post "/new-goat" do
  new_goat                    = RacingGoat.new
  new_goat.name               = params[:name]
  new_goat.gender             = params[:gender]
  new_goat.best_100m_time     = params[:best_100m_time]
  new_goat.dietary_preference = params[:dietary_preference]
  new_goat.save!
  redirect "/"
end

get "/:id" do
  id = params[:id]
  @goat = RacingGoat.find(id)
  halt erb(:edit)
end

post "/:id" do  
  edit_goat                     = RacingGoat.find(params[:id])
  edit_goat.name                = params[:name]
  edit_goat.gender              = params[:gender]
  edit_goat.best_100m_time      = params[:best_100m_time]
  edit_goat.dietary_preference  = params[:dietary_preference]
  edit_goat.save!
  redirect "/"
end