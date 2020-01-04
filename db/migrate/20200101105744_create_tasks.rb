class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :details
      t.references :user, foreign_key: true
      
      add_index :tasks, [:user_id, :created_at]

      t.timestampsz
    end
  end
end
