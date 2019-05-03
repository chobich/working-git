class AddMemberRefToProjects < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :member, foreign_key: true
  end
end
