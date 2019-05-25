class Project < ApplicationRecord
  belongs_to :group
  belongs_to :member
  has_many :tasks, inverse_of: :project
  accepts_nested_attributes_for :tasks
  has_many :members

  validates :name, presence: true
end
