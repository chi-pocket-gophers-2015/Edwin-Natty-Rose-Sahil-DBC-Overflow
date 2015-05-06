class AnswerVote < ActiveRecord::Base
  belongs_to :voter, class_name: "User", foreign_key: user_id
  belongs_to :answer
  validates_presence_of :value
end
