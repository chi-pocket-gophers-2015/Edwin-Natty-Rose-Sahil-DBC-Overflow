enable :sessions

get '/users/login' do
  erb :'users/login_user'
end


post '/users/login' do
  if user = User.authenticate(params[:user][:email], params[:user][:password])
    session[:user_id] = user.id
    redirect '/questions'
  else
    @error = 'Login Failed'
    erb :'/users/login_user'
  end

end


get '/users/logout' do
  session.delete(:user_id)
  redirect '/questions'
end

get '/users/new' do
  # show the new user form
  # redirect to /view after
  erb :'users/create_user'
end


post '/users' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect '/questions'
  else
    @error = 'Login Failed'
    erb :'/user/create_user'
  end

  # send new user to database
  # redirect to /view after
end
