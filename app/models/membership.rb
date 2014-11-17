# == Schema Information
#
# Table name: memberships
#
#  id            :integer          not null, primary key
#  membership_id :integer
#  child_id      :integer
#  program_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Membership < ActiveRecord::Base
  belongs_to :family
  belongs_to :program
  has_many :children
end
