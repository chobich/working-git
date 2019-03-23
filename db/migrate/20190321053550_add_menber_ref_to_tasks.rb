class AddMenberRefToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :menber, foreign_key: true
  end
end
