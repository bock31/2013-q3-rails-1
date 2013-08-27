require '../dvc-sinatra.rb'

get "/" do
  redirect "/login"
end

get "/login" do
  halt erb(:login)
end

post "/login" do
  named_user = User.where(username: params[:username]).first

  if named_user == nil 
    flash[:error] = "Unknown username"
    redirect "/login"
  elsif named_user.authenticate(params[:password]) == false
    flash[:error] = "Wrong password"
    redirect "/login"
  else
    session[:user_id] = named_user.id
    flash[:success] = "You have successfully logged in"
    redirect "/welcome"
  end
end

get "/welcome" do
  @user = User.find(session[:user_id])
  halt erb(:welcome)
end

get "/logout" do
  session.clear
  # TODO: Redirect to /login with message "You have successfully logged out"
end
