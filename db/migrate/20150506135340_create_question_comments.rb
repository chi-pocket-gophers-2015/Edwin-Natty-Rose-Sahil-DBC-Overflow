class CreateQuestionComments < ActiveRecord::Migration
  def change
    create_table :question_comments do |t|
      t.text    :comment, null: false
      belongs_to :commenter, class_name: "User", foreign_key: user_id
      belongs_to :question

      t.timestamps null: false
    end
  end
end
