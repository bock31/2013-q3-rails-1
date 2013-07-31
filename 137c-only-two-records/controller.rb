require '../dvc-sinatra.rb'

get "/" do
  @bracelet_lines = BraceletLine.order("id").all
  halt erb(:root)
end

get "/line1" do
  @bracelet_line = BraceletLine.find(1)
  halt erb(:edit)
end

post "/line1" do
  line_edit           = BraceletLine.find(1)
  line_edit.font_size = params[:font_size]
  line_edit.text      = params[:text]
  line_edit.save!
  redirect "/"
end

get "/line2" do
  @bracelet_line = BraceletLine.find(2)
  halt erb(:edit)
end

post "/line2" do
  line_edit           = BraceletLine.find(2)
  line_edit.font_size = params[:font_size]
  line_edit.text      = params[:text]
  line_edit.save!
  redirect "/"
end