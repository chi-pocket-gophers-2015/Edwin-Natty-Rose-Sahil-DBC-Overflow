class AnswerComment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :commenter, class_name: "User"
  belongs_to :answer

  validates_presence_of :comment
end
