class Group < ApplicationRecord
  has_many :members
  belongs_to :project
  belongs_to :member, inverse_of: :group, optional: true

  validates :name, presence: true, uniqueness: true
end
