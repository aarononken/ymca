class Family < ActiveRecord::Base
  has_many :children
  has_many :memberships
  has_many :programs
  belongs_to :check
  belongs_to :admin
end
