require 'sinatra'

# TODO: add your GET handlers here

get "/page1" do
  halt erb(:page1)
end

get "/page2" do
  halt erb(:page2)
end
