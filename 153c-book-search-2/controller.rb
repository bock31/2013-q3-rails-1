require '../dvc-sinatra.rb'

get "/" do
  @books = Book.all
  @topics = ['JavaScript', 'jQuery', 'Ruby', 'CSS']

  @authors = []
  @books.each do |book|
    @authors << book.author
  end
  @authors = @authors.sort.uniq

  @years = []
  @books.each do |book|
    @years << book.publication_year
  end
  @years = @years.sort.uniq

  halt erb(:search)
end

post "/" do
  topic = params[:topic]
  author = params[:author]
  year = params[:year]
  
  if params[:topic] != ""
    redirect "/topic/#{topic}"
  elsif params[:author] != ""
    redirect "/author/#{URI.escape(author)}"
  elsif params[:year] != ""
    redirect "/year/#{year}"
  end
end

get "/year/:year" do
  year = params[:year]
  @books = Book.where(publication_year: year).order(:id).all
  @header = "Books published in #{year}"
  halt erb(:index)
end

get "/author/:author" do
  author = params[:author]
  @books = Book.where("author ilike ?", "%#{author}%").order(:id).all
  @header = "Books by #{author}"
  halt erb(:index)
end

get "/topic/:topic" do
  topic = params[:topic]
  @books = Book.where("title ilike ?", "%#{topic}%").order(:id).all
  @header = "Books about #{topic}"
  halt erb(:index)
end

get "/isbn/:isbn" do
  @book = Book.where(isbn: params[:isbn]).first
  halt erb(:show)
end
# TODO: Write a GET handler for routes like /isbn/0596517742.  It will
# use the show.erb page, which has been supplied to you.
