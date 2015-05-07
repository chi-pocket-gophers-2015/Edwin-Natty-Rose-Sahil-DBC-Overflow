###### VOTING ######

get '/questions/:id/votes' do
  @questions = Question.all
  @answers = Answer.all
  erb :"/questions_and_answers/question_votes"
  # @upvote = QuestionVote.find(params[:id])
  # @downvote = QuestionVote.find(params[:id])
end

post '/questions/:id/upvotes' do
  # creates a new vote on the question
  question = Question.find_by(id: params[:id])
  question.question_votes.create(value: 1, voter_id: current_user.id)

  content_type :json
  {upvote: question.up_vote_count}.to_json

  # @questions = Question.all
  # @answers = Answer.all
  # erb :"/questions_and_answers/question_votes"
end

post '/questions/:id/downvotes' do
  question = Question.find_by(id: params[:id])
  question.question_votes.create(value: -1, voter_id: current_user.id)

  content_type :json
  {downvote: question.down_vote_count}.to_json
end

get '/questions/:question_id/answers/:id/votes' do
  # creates a new vote on the answer
end
