class AnswerVote < ActiveRecord::Base
  belongs_to :voter, class_name: "User"
  belongs_to :answer
  validates_presence_of :value
end
