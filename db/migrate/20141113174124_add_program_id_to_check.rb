class AddProgramIdToCheck < ActiveRecord::Migration
  def change
    add_column :checks, :program_id, :integer
  end
end
