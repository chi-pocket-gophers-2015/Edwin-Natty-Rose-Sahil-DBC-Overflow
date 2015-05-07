class CreateAnswerVotes < ActiveRecord::Migration
  def change
    create_table :answer_votes do |t|
      t.integer  :value, null: false
      t.belongs_to :voter, class_name: "User"
      t.belongs_to :answer

      t.timestamps null: false

    end
  end
end
