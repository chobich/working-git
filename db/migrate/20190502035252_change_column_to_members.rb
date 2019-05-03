class ChangeColumnToMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :mail, :string
  end
end
