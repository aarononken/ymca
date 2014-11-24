# == Schema Information
#
# Table name: children
#
#  id               :integer          not null, primary key
#  child_first_name :string
#  child_last_name  :string
#  family_id        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Child < ActiveRecord::Base
  belongs_to :family
  has_many :memberships
  has_many :programs, through: :memberships
  has_many :checks
end
