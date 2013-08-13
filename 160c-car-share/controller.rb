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