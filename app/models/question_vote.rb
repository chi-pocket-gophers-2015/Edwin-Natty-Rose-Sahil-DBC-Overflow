class QuestionVote < ActiveRecord::Base
  belongs_to :voter, class_name: "User", foreign_key: user_id
  belongs_to :question

  validates_presence_of :value
end
