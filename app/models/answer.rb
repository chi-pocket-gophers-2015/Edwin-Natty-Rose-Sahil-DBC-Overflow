class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question
  belongs_to :answerer, class_name: "User"
  has_many :answer_votes
  validates_presence_of :title
  validates_presence_of :body
end
