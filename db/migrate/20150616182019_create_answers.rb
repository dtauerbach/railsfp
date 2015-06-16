class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer_json
      t.integer :uuid

      t.timestamps null: false
    end
  end
end
