class User < ActiveRecord::Base
  # Remember to create a migration!
  include BCrypt

  has_many :questions, foreign_key: "asker_id"
  has_many :answers
  has_many :question_comments
  has_many :answer_comments
  has_many :question_votes, foreign_key: "voter_id"
  has_many :answer_votes, foreign_key: "voter_id"

  validates_presence_of :username
  validates_uniqueness_of :username

  validates_presence_of :email
  validates_uniqueness_of :email

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


end
