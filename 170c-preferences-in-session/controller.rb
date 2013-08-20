require '../dvc-sinatra.rb'

get "/" do
  @letter = session[:letter]
  halt erb(:main)
end

post "/" do
  session[:color]  = params[:favorite_color]  
  session[:letter] = params[:favorite_letter]
  session[:number] = params[:favorite_number]
  redirect "/"
end

get "/logout" do
  session.clear
  redirect "/"
end
