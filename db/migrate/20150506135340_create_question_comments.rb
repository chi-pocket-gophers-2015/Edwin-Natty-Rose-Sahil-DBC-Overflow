class CreateQuestionComments < ActiveRecord::Migration
  def change
    create_table :question_comments do |t|
      t.text    :comment, null: false
      t.belongs_to :commenter, class_name: "User"
      t.belongs_to :question

      t.timestamps null: false
    end
  end
end
