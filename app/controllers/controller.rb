
###### INDEX ######

get '/' do
  erb :home
end

# get '/hello' do
#   erb :new
# end

get '/questions/new' do
  # get form to add new question

  erb :create_new_question
end

post '/questions' do
  if current_user
    title = params[:title]
    body = params[:body]
    programming_language = params[:programming_language]
    @question = Question.create!(title: title, body: body, programming_language: programming_language)

    redirect ('/questions')
  else

  end
end

get '/questions' do
  # Show all questions
  @questions = Question.all
  erb :show_questions
end

###### QUESTIONS & ANSWERS ######

get '/questions' do
  # Show all questions
end

get '/questions/:id' do
  # Show a question with its answers and comments
end


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
