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
<<<<<<< HEAD
  belongs_to :child
  belongs_to :family
  belongs_to :check
  has-many :memberships
=======
  has_many :memberships
  has_many :checks
>>>>>>> 3e8371bfd78407cedf23a48539e4d20fe6e4a58b
end
