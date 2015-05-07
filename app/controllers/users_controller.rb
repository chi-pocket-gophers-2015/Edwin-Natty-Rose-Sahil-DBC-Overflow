enable :sessions

get '/users/login' do
  # what it says
end


get '/users/logout' do
  # optional
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
