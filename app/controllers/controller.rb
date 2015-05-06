
###### INDEX ######

get '/' do
  # two buttons: view all posts, add a post
  ### redirect to view for one button
  ### redirect to login

  # OR

  #display all Q w/ A and comments  => this allows use of 'before' for authentication
end


###### USERS ######

get '/user/login' do
  # what it says
end

get '/user/logout' do
  # optional
end

get '/user/new' do
  # generate and save new user
  # redirect to /view after
end


###### QUESTIONS & ANSWERS ######

get '/question' do
  # Show all questions
end

get '/question/:id' do
  # Show a question with its answers and comments
end


###### AUTHENTICATE ######

before '/question/*' do
  # check user authentication
  # This should check everything 'below' question
end


####### AUTHENTICATED Q & A ######

get '/question/add' do
  # get form to add new question
end

post '/question' do
  # create new Q object in DB
  # redirects /question
end

get '/question/:id/answer' do
  # gets form to add a new ans to the specific Q
end

post '/question/:id/answer' do
  # create new A object in DB
  # redirects to /question


###### COMMENTS ######

get '/question/:id/comment' do
  # gets form to add a new comment to the specific Q
end

post '/question/:question_id/comment/:id' do
  # create a new Q-comment obj in DB
  # redirects to /question
end

get '/question/:question_id/answer/:answer_id/comment' do
  # create a new A-comment obj in DB
  # redirects to /question
end

post '/question/:question_id/answer/:answer_id/comment/:id' do
  # create a new A-comment obj in DB
  # redirects to /question
end


###### VOTING ######

post '/question/:id/vote' do
  # creates a new vote on the question
end

post '/question/:question_id/answer/:id/vote' do
  # creates a new vote on the answer
end
