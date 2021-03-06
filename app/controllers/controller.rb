enable :sessions

get '/' do
  erb :home
end

get '/questions/new' do
  if current_user
    erb :"/questions_and_answers/create_new_question"
  else
    redirect '/users/new'
  end
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


get '/questions/:id' do
  @question = Question.find_by_id(params[:id])
  @answers = Answer.where(question_id: params[:id])
  erb :'questions_and_answers/show_question'
end


post '/questions/:id/answers' do
  if current_user
    Answer.create(title: params[:title], body: params[:body], answerer_id: current_user.id, question_id: params[:id] )
    redirect ('/questions')
  else
    redirect "/users/new"
  end

  user = current_user
  current_question(current_user, id)
end


get '/questions/:id/answers/new' do
  if current_user
    @question = Question.find_by_id(params[:id])
    erb :"/questions_and_answers/create_answer"
  else
    redirect "/users/new"
  end
end



