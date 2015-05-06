class CreateAnswerComments < ActiveRecord::Migration
  def change
    create_table :answer_comments do |t|
      t.text    :comment, null: false
      t.belongs_to :commenter, class_name: "User"
      t.belongs_to :answer

      t.timestamps null: false
    end
  end
end
