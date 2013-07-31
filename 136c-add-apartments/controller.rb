require '../dvc-sinatra.rb'

get "/" do
  @apartments = Apartment.all
  halt erb(:root)
end

post "/" do
  new_apartment                 = Apartment.new
  new_apartment.address         = params[:address]
  new_apartment.rent_per_month  = params[:rent_per_month]
  new_apartment.does_allow_pets = params[:does_allow_pets]
  new_apartment.url             = params[:url]
  new_apartment.save!
  redirect "/"
end  
