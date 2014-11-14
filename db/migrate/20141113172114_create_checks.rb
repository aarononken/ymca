class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.integer :family_id
      t.integer :child_id
      t.boolean :checked_in

      t.timestamps null: false
    end
  end
end
