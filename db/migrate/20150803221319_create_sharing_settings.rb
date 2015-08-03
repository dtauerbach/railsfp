class CreateSharingSettings < ActiveRecord::Migration
  def change
    create_table :sharing_settings do |t|
      t.string :title
      t.string :description
      t.string :extra_description

      t.timestamps null: false
    end
  end
end
