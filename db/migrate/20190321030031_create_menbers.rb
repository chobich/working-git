class CreateMenbers < ActiveRecord::Migration[5.2]
  def change
    create_table :menbers do |t|
      t.string :name
      t.string :mail
      t.timestamps
    end
  end
end
