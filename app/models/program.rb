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
  belongs_to :child
  belongs_to :family
  belongs_to :check
  has-many :memberships
end
