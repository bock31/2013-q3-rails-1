require '../dvc-sinatra.rb'

get "/" do
  redirect "/1"
end

get "/1" do
  @question_num = "1"
  @question = "8 + 5"
  @answer_a = "15"
  @answer_b = "40"
  @answer_c = "13"
  halt erb(:question)
end

post "/1" do
  if params[:selected_answer] == "c"
    redirect "/2"
  else
    redirect "/1"
  end
end

get "/2" do
  @question_num = "2"
  @question = "5 - 3"
  @answer_a = "2"
  @answer_b = "3"
  @answer_c = "8"
  halt erb(:question)
end

post "/2" do
  if params[:selected_answer] == "a"
    redirect "/done"
  else
    redirect "/2"
  end
end

get "/done" do
  halt erb(:done)
end

# NOTE: could have written my if statement as:
#       if params[:selected_answer] == "13" or "2"