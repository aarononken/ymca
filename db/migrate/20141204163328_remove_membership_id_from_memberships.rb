class RemoveMembershipIdFromMemberships < ActiveRecord::Migration
  def change
    remove_column :memberships, :membership_id, :integer
  end
end
