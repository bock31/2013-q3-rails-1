require '../dvc-sinatra.rb'

get "/" do 
  @teams = Team.all
  halt erb(:teams)
end

post "/" do
  if params[:new_team] != ""
    new_team = Team.new
    new_team.color = params[:new_team]
    new_team.save!
  end
  
  redirect "/"
end

get "/team/:color" do
  color = params[:color]
  @team = Team.where(color: color).first
  @members = Member.where(team_id: @team.id).all
  halt erb(:members)
end


post "/team/:color" do
  color = params[:color]
  name  = params[:new_team_member]
  team = Team.where(color: color).first
  
  if params[:new_team_member] != ""
    new_member       = Member.new
    new_member.name  = name
    new_member.team_id = team.id
    new_member.save!
  end
    
  redirect "/team/#{color}"
end