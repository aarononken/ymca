class Family < ActiveRecord::Base
<<<<<<< HEAD
=======
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :children
  has_many :memberships
  has_many :programs
  belongs_to :check
  belongs_to :admin
>>>>>>> f3fcb4e1563cc7c81b002febee9a9d8676ab0d0a
end
