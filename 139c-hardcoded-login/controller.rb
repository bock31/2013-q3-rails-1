require '../dvc-sinatra.rb'

get "/" do
  halt erb(:login)
end

post "/" do
  @old_username = params[:username]

  if params[:username] != "amy"
    @error = "Unknown username."
    halt erb(:login)
  end
  
  if params[:password] != "123"
    @error = "Incorrect password."
    halt erb(:login)
  end
  
  redirect "/welcome"
end

get "/welcome" do
  halt erb(:welcome)
end
