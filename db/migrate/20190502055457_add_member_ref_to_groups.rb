class AddMemberRefToGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :member, foreign_key: true
  end
end
