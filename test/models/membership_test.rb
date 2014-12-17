# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  child_id   :integer
#  program_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  family_id  :integer
#

require 'test_helper'

class MembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
