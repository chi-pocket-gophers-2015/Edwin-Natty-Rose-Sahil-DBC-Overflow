
###### INDEX ######

get '/' do
  # two buttons: view all posts, add a post
  ### redirect to view for one button
  ### redirect to login

  # OR

  #display all Q w/ A and comments  => this allows use of 'before' for authentication
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
# end


####### AUTHENTICATED Q & A ######

get '/questions/new' do
  # get form to add new question
end

post '/questions' do
  # create new Q object in DB
  # redirects /question
end

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
