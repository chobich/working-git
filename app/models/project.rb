class Project < ApplicationRecord
  belongs_to :group
  belogns_to :menber
  has_many :tasks
  has_many :menbers
end
