class AnswerComment < ActiveRecord::Base
  def change
    create_table :answer_comments do |t|
      t.text    :comment, null: false
      belongs_to :commenter, class_name: "User", foreign_key: user_id
      belongs_to :answer

      t.timestamps null: false
    end
  end
end
