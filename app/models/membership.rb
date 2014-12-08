# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  child_id   :integer
#  program_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Membership < ActiveRecord::Base
  belongs_to :program
  belongs_to :child
end
