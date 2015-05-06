class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string  :title, null: false
      t.text    :body, null: false
      t.belongs_to :asker, class_name: "User"
      t.string  :programming_language

      t.timestamps null: false
    end
  end
end
