class Task < ApplicationRecord
  belongs_to :group
  belongs_to :member
  belongs_to :project, optional: true, inverse_of: :tasks
end
