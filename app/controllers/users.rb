get '/users/new' do
  @sign_up_error = "Please enter a password with 6 or more characters" if params[:tooshort]
  erb :welcome
end

post '/users/new' do
  form = params[:user]
  user = User.new
  user.name = form[:name]
  user.username = form[:username]
  user.email = form[:email]
  if form[:password].length >= 6
    user.password = form[:password]
    session[:user_id] = user.id
    user.save
    redirect "/users/#{user.id}/profile"
  else
    redirect '/users/new?tooshort=true'
  end
end

get '/users/:id/profile' do
  @user = User.find(params[:id])
  @user_email = @user.email
  erb :profile
end

get '/users/:id/feed' do
  @user = User.find(params[:id])
  @user_email = @user.email
  @followers_squeaks = @user.squeaks_from_who_i_follow
  erb :feed
end

post '/users/:id/profile' do
  squeak = Squeak.create(user_id: params[:id], content: params[:content])
  @user = User.find(params[:id])
  @user_email = @user.email
  erb :profile
end

get '/users/:id/followers' do
  @user = User.find(params[:id])
  erb :followers
end

get '/users/:id/following' do
  @user = User.find(params[:id])
  erb :following
end

get '/sessions/new' do
  @sign_in_error = "Invalid password or email address" if params[:invalid]
  erb :welcome
end

post '/sessions' do
  @user = User.find_by_email(params[:email])
  if @user && @user.password == params[:password]
    session[:user_id] == @user.id
    @user_email = params[:email]
    redirect "/users/#{@user.id}/feed"
  else
    redirect '/sessions/new?invalid=true'
  end
end

get '/logout' do
  session[:user_id] == nil
  redirect '/'
end


