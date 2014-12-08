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

class Family < ActiveRecord::Base
  has_many :children
  has_many :checks
  
  validates :password, uniqueness: true
  validates :parent_first_name, :parent_last_name, :password, :phone, :address, presence: true
    
  def self.authenticate(parent_last_name, password)
    family = find_by_parent_last_name(parent_last_name)
    
    if family && family.password == password
      family
    else
      nil
    end
  end
end
