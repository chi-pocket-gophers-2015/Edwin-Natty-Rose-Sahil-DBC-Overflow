class CreateQuestionVotes < ActiveRecord::Migration
  def change
    create_table :question_votes do |t|
      t.integer  :value, null: false
      belongs_to :voter, class_name: "User", foreign_key: user_id
      belongs_to :question

      t.timestamps null: false
    end
  end
end
