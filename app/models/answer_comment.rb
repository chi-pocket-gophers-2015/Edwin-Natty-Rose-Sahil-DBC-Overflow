class AnswerComment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :commenter, class_name: "User", foreign_key: user_id
  belongs_to :answer

  validates_presence_of :comment
end
