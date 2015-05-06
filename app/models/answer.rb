class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question
  belongs_to :answerer, class_name: "User", foreign_key: user_id
  validates_presence_of :title
  validates_presence_of :body
end
