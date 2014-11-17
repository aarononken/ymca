# == Schema Information
#
# Table name: checks
#
#  id         :integer          not null, primary key
#  family_id  :integer
#  child_id   :integer
#  checked_in :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  program_id :integer
#

class Check < ActiveRecord::Base
  belongs_to :admin
  belongs_to :child
  belongs_to :family
end
