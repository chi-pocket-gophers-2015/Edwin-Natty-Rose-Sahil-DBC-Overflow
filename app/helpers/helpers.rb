
def current_user
  @user ||= User.find_by_id(session[:user_id])
end

# def current_answer(answer_id)
#   @answer ||= Answer.find_by_id(answer_id)
# end
