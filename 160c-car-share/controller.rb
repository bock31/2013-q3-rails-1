require '../dvc-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/login" do 
  @username = params[:username]

  halt erb(:login)
end

post "/login" do 
  @username = params[:username]
  @password = params[:password]
  
  Member.all.each do |member|
    if @username == member.username 
      if @password == member.password
        redirect "/reservations/#{member.id}"
      else
        @error = "Wrong password"
        halt erb(:login)
      end
    end
  end

  @error = "Unknown username"
  halt erb(:login)
end

get "/reservations/:id" do
  @member = Member.find(params[:id])
  @reservation = 
    Car.where(reserving_member_id: @member.id).all
  halt erb(:reservations)
end

post "/reservations/:member_id" do
  member_id = params[:member_id]
  
  if params[:commit] == "Logout"
    redirect "/login"
  end

  Car.all.each do |car|
    if params[:commit] == "Return car #{car.id}"
      car.reserving_member_id = nil
      car.save!
    end
 end
 
  Car.all.each do |car|
    if params[:commit] == "Reserve car #{car.id}"
      car.reserving_member_id = "#{params[:id]}"
      car.save!
    end
  end
        
  redirect "/reservations/#{params[:member_id]}"
end