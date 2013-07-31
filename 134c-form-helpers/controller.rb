require '../dvc-sinatra.rb'

get "/" do
  halt erb(:root)
end

post "/" do
  new_email         = Email.new
  new_email.subject = params[:subject]
  new_email.body     = params[:body]
  new_email.save!
  redirect "/"
end

# raise "variable".inspect (i.e. raise new_email.inspect 
# or raise new_email.subject.inspect) will produced a "Runtime Error" 
# and show you the value that has been assigned to the variable