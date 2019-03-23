class Task < ApplicationRecord
  belongs_to :group
  belongs_to :menber
  belongs_to :project
end
