
def current_user
  @user ||= User.find_by_id(session[:user_id])
end

def current_question(questioner, question_id)
  @current_question = Question.find_by_id(question_id)
end
