class User < ActiveRecord::Base
  # Remember to create a migration!

  has_many :questions
  has_many :answers
  has_many :question_comments
  has_many :answer_comments
  has_many :question_votes
  has_many :answer_votes

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :email
  validates_uniqueness_of :email
end
