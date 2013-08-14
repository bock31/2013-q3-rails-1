require '../dvc-sinatra.rb'

get "/" do
  halt erb(:questions)
end

post "/" do
  @collectibles = Collectible.all
  halt erb(:answers)
end
