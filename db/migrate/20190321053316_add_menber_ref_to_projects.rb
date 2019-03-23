class AddMenberRefToProjects < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :menber, foreign_key: true
  end
end
