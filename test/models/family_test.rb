# == Schema Information
#
# Table name: families
#
#  id                :integer          not null, primary key
#  parent_first_name :string
#  parent_last_name  :string
#  spouse_name       :string
#  phone             :string
#  address           :string
#  password          :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class FamilyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
