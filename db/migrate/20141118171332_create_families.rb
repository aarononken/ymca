class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :parent_first_name
      t.string :parent_last_name
      t.string :spouse_name
      t.string :phone
      t.string :address
      t.string :password
      
      t.timestamps null: false
    end
  end
end
