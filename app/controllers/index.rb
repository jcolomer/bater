get '/' do
  if session[:user_id] == nil
    erb :welcome
  else
    erb :home
  end
end




# get '/users/:id/feed' do
#   erb :feed
# end
