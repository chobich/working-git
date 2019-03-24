class Member < ApplicationRecord
  belongs_to :group
  has_many :projects
  has_many :tasks
end
