class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_title
      t.timestamps null: false
    end

    create_table :answers do |t|
      t.belongs_to :question, index: true
      t.string :answer_json
      t.integer :uuid
      t.timestamps null: false
    end

    create_table :question_inputs do |t|
      t.belongs_to :question, index: true
      t.string :answer_label
      t.string :answer_type
      t.timestamps null: false
    end
  end
end
