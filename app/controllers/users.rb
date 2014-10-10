get '/users/new' do
  @sign_up_error = "Please enter a password with 6 or more characters" if params[:tooshort]
  erb :welcome
end

post '/users/new' do
  form = params[:user]
  ## implement User.new
  user = OpenStruct.new
  user.name = form[:name]
  user.username = form[:username]
  user.email = form[:email]
  if form[:password].length >= 6
    user.password = form[:password]
    session[:user_id] = user.id
    redirect '/users/:id/feed'
  else
    redirect '/users/new?tooshort=true'
  end
end

get '/sessions/new' do
  @sign_in_error = "Invalid password or email address" if params[:invalid]
  redirect '/'
end

post '/sessions' do
  user = User.find_by_email(params[:email])
  if user && user.password == params[:password]
    session[:user_id] == user.id
    session[:email] == params[:email]
    erb :feed
  # else
  #   redirect '/sessions/new?invalid=true'
  end
end


