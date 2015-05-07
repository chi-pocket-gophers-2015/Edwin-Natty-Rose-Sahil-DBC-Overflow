###### VOTING ######

get '/questions/:id/votes' do
  @questions = Question.all
  @answers = Answer.all
  erb :"/questions_and_answers/question_votes"
  # @upvote = QuestionVote.find(params[:id])
  # @downvote = QuestionVote.find(params[:id])
end

get '/questions/:id/upvotes' do
  # creates a new vote on the question
  @questions = Question.all
  @answers = Answer.all
  erb :"/questions_and_answers/question_votes"
end

get '/questions/:id/downvotes' do
  # creates a new vote on the question
  @questions = Question.all
  @answers = Answer.all
  erb :"/questions_and_answers/question_votes"
end

post '/questions/:question_id/answers/:id/votes' do
  # creates a new vote on the answer
end
