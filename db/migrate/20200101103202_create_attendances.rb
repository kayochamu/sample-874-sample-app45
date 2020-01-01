class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.string :name
      t.string :details
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
