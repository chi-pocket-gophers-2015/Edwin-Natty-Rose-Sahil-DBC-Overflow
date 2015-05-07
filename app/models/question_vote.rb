class QuestionVote < ActiveRecord::Base
  belongs_to :voter, class_name: "User"

  validates_presence_of :value
end
