class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question_text, null: false
      t.integer :poll_id
    end
  end
end
