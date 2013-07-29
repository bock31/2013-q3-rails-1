require '../dvc-sinatra.rb'

get "/" do
  @patients = Patient.all
  halt erb(:index)
end

get "/patients/:id" do
  id = params[:id]
  @patient = Patient.find(id)
  halt erb(:edit)
end
