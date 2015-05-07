get '/questions/:question_id/answers/:id/upvotes' do
  @question = Question.find_by_id(params[:question_id])
  @answers = Answer.where(question_id: params[:question_id])
  AnswerVote.create(value: 1, answer_id: params[:id], voter_id: current_user.id )
  erb :'questions_and_answers/show_question'
end

get '/questions/:question_id/answers/:id/downvotes' do
  @question = Question.find_by_id(params[:question_id])
  @answers = Answer.where(question_id: params[:question_id])
  AnswerVote.create(value: -1, answer_id: params[:id], voter_id: current_user.id )
  erb :'questions_and_answers/show_question'
end
