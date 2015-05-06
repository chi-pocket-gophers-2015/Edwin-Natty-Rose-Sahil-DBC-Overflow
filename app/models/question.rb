class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :asker, class_name: "User", foreign_key: user_id
  has_many :answers
  has_many :question_votes
  has_many :question_comments

  validates_presence_of :title
  validates_presence_of :body

end
