class ChangeUuidToStringInAnswers < ActiveRecord::Migration
  def up
    change_table :answers do |t|
      t.change :uuid, :string
    end
  end

  def down
    change_table :answers do |t|
      t.change :uuid, :integer
    end
  end
end
