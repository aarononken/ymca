# == Schema Information
#
# Table name: programs
#
#  id           :integer          not null, primary key
#  program_name :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Program < ActiveRecord::Base
  has_many :memberships
  has_many :children, through: :memberships
  has_many :checks
end
