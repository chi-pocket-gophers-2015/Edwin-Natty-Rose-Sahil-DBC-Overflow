class Question < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :asker, class_name: "User"
  has_many :answers
  has_many :question_votes
  has_many :question_comments

  validates_presence_of :title
  validates_presence_of :body

  def up_vote_count
    array = self.question_votes
    upvotes = array.select{|i| i.value == 1 }
    upvotes.length
  end

  def down_vote_count
    array = self.question_votes
    upvotes = array.select{|i| i.value == -1 }
    upvotes.length
  end
end
