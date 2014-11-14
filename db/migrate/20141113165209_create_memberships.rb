class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :membership_id
      t.integer :child_id
      t.integer :program_id

      t.timestamps null: false
    end
  end
end
