enable :sessions


get '/' do
  erb :home
end

get '/questions/new' do
  # get form to add new question

  erb :'/questions_and_answers/create_new_question'
end

post '/questions' do

  Question.create(title: params[:title], body: params[:body], programming_language: params[:programming_language])
  redirect ('/questions')

end

get '/questions' do
  # Show all questions
  @questions = Question.all
  @answers = Answer.all
  erb :'questions_and_answers/show_questions'
end

###### QUESTIONS & ANSWERS ######

get '/questions' do
  # Show all questions
end

get '/questions/:id' do
  # Show a question with its answers and comments
end


get '/questions/:id/answers/new' do
  # Question.
  # @question = params[:id]
  @question = Question.find_by_id(params[:id])

  erb :"/questions_and_answers/create_answer"
end


post '/questions/:id/answers' do
  # create new A object in DB
  Answer.create(title: params[:title], body: params[:body], answerer_id: sessions[:user_id], question_id: params[:id] )

  redirect ('/questions')

end
