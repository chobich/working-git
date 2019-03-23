class AddProjectRefToMenbers < ActiveRecord::Migration[5.2]
  def change
    add_reference :menbers, :project, foreign_key: true
  end
end
