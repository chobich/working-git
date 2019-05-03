class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :content
      t.string :priority_type
      t.references :project, foreign_key: true
      t.references :group, foreign_key: true
      t.references :member, foreign_key: true
      t.timestamps
    end
  end
end
