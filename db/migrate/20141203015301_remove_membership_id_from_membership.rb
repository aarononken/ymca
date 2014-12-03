class RemoveMembershipIdFromMembership < ActiveRecord::Migration
  def change
    remove_column :memberships, :membership_id
  end
end
