require '../dvc-sinatra.rb'

get "/" do
  halt erb(:login)
end

post "/" do
# alternate way to write the if statement below:
# if params[:guest_login] == "on"
# NOTE: your form helper in your erb must match 
# i.e. "on" & "on" or "1" & "1"
  if params[:guest_login] != nil
    redirect "/welcome"
  end
  
  if params[:username] != "amy"
    @error = "Unknown username"
    @old_username = params[:username]
    halt erb(:login)
  end

  if params[:password] != "123"
    @error = "Unknown password"
    @old_username = params[:username]
    halt erb(:login)
  end

  redirect "/welcome"
end

get "/welcome" do
  halt erb(:welcome)
end
