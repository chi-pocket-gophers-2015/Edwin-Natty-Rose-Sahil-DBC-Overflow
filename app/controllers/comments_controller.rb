

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


