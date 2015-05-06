class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string  :title, null: false
      t.text    :body, null: false
      belongs_to :asker, class_name: "User", foreign_key: user_id
      t.string  :programming_language

      t.timestamps null: false
    end
  end
end
