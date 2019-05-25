class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :projects
  has_many :tasks
  has_one :group, inverse_of: :member

  accepts_nested_attributes_for :group

  validates :name, presence: true

end
