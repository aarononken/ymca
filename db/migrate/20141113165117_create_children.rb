class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :child_first_name
      t.string :child_last_name
      t.integer :family_id

      t.timestamps null: false
    end
  end
end
