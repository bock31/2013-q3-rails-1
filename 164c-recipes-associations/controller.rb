require '../dvc-sinatra.rb'

get "/" do
  @recipes = Recipe.order(:id).all
  @title = "All recipes"
  halt erb(:index)
end

get "/recipe/:name" do
  @recipe = Recipe.where(name: params[:name]).first
  halt erb(:show)
end

get "/by-author/:name" do
  author = Author.where(full_name: params[:name]).first
  @recipes = author.recipes.all
  
# Can also write the above as follows: 
# @recipes = Recipe.where(author_id: author.id).all

  @title = "Recipes by #{author.full_name}"
  halt erb(:index)
end
