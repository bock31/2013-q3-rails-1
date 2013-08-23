require '../dvc-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/login" do
  halt erb(:login)
end

post "/login" do
  user = Person.where(name: params[:name]).first
  
  if params[:password] == ""
    redirect "/login"
  elsif user.authenticate(params[:password]) != false
    session[:person_id] = user.id
    redirect "/followers"
  else
    halt erb(:login)
  end
end

get "/followers" do
  @person = Person.find(session[:person_id])
  
  halt erb(:followers)
end

post "/followers" do
  @person = Person.find(session[:person_id])

  if params[:commit] == "Follow"
    following                = Following.new
    following.from_person_id = @person.id
    following.to_person_id   = Person.where(name: params[:person_to_follow]).first.id
    following.save!
  end
  
  redirect "/followers"
end

get "/logout" do
  session.clear
  redirect "/"
end
