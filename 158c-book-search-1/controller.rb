require '../dvc-sinatra.rb'

get "/" do
  halt erb(:browse)
end

get "/year/:year" do
  @books = Book.where(publication_year: params[:year]).all # params[:X] must match 
  @header = "Books published in #{params[:year]}"          # variable name in get route
  halt erb(:index)                                         # e.g. get "/:X"
end
                                                           
get "/topic/:topic" do
  @books = Book.where("title ilike ?", "%#{params[:topic]}%").all
  @header = "Books about #{params[:topic]}"
  halt erb(:index)
end

get "/author/:author" do
  @books = Book.where("author ilike ?", "%#{params[:author]}%").all
  @header = "Books by #{params[:author]}"
  halt erb(:index)
end  