class QuestionComment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :commenter, class_name: "User"
  belongs_to :question

  validates_presence_of :comment
end

