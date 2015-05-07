
###### INDEX ######

get '/' do
  erb :home
end

get '/questions/new' do
  # get form to add new question

  :"/questions_and_answers/create_question"
end

post '/questions' do

  Question.create(title: params[:title], body: params[:body], programming_language: params[:programming_language])
  redirect ('/questions')

end

get '/questions' do
  # Show all questions
  @questions = Question.all
  erb :'questions_and_answers/show_questions'
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

get '/questions/:id/answers/new' do
  # Question.
  # @question = params[:id]
  @question = Question.find_by_id(params[:id])

  erb :"/questions_and_answers/create_answer"
end


post '/questions/:id/answers' do
  # create new A object in DB
  Answer.create(title: params[:title], body: params[:body])

  redirect ('/questions')

end
