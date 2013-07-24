require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/art/1" do
  @art = 
"
       /|
      / | 
     /| |
    / | |
   /  | |
  /___| |
 /____| | 
"
  halt erb(:art)
end

get "/art/2" do
  @art =
"
^_ _ _ _^
| .   . | 
|   3   |
\\- - - -/
"
  
  halt erb(:art)
end
