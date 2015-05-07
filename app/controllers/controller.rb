
###### INDEX ######

get '/' do
  # two buttons: view all posts, add a post
  ### redirect to view for one button
  ### redirect to login

  # OR
erb :home
  #display all Q w/ A and comments  => this allows use of 'before' for authentication
end

# get '/hello' do
#   erb :new
# end

get '/questions/new' do
  # get form to add new question

  erb :create_new_question
end

post '/questions' do
  title = params[:title]
  body = params[:body]
  programming_language = params[:programming_language]
  @question = Question.create!(title: title, body: body, programming_language: programming_language)

  redirect ('/questions')
end

get '/questions' do
  # Show all questions
  @questions = Question.all
  erb :show_questions

end

###### USERS ######

get '/users/login' do
  # what it says
end

get '/users/logout' do
  # optional
end

get '/users/new' do
  # show the new user form
  # redirect to /view after
end

post '/users' do
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
  # send new user to database
  # redirect to /view after
end


###### QUESTIONS & ANSWERS ######

get '/questions' do
  # Show all questions
end

get '/questions/:id' do
  # Show a question with its answers and comments
end


###### AUTHENTICATE ######

# before '/questions/*' do            # Authenticate will show/hide edit not prevent access
#   # check user authentication
#   # This should check everything 'below' question

# redirect '/' unless current_user

  # @user = User.find_by_email(params[:email])
  # if @user.password == params[:password]
  #   # sessions[:user] = @user.id
  # else
  #   #redirect '/'
  # end
# end


####### AUTHENTICATED Q & A ######

# get '/questions/new' do
#   # get form to add new question
#   # title = params[:title]
#   # body = params[:body]
#   # @question = Question.create(title: title, body: body)
#   p "hello"
#   erb :new
# end

# post '/questions' do
#   # create new Q object in DB
#   # redirects /question
# end

# get '/questions/:id/answers' do
#   # gets form to add a new ans to the specific Q
# end

post '/questions/:id/answers' do
  # create new A object in DB
  # redirects to /question
end


###### COMMENTS ######

get '/questions/:id/comments/new' do
  # gets form to add a new comment to the specific Q
end

post '/questions/:question_id/comments' do
  # create a new Q-comment obj in DB
  # redirects to /question
end

# get '/questions/:question_id/answers/:answer_id/comments' do
#   # create a new A-comment obj in DB
#   # redirects to /question
# end

post '/questions/:question_id/answers/:answer_id/comments' do
  # create a new A-comment obj in DB
  # redirects to /question
end


###### VOTING ######

post '/questions/:id/votes' do
  # creates a new vote on the question
end

post '/questions/:question_id/answers/:id/votes' do
  # creates a new vote on the answer
end
