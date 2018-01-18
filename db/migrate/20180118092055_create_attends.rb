class CreateAttends < ActiveRecord::Migration[5.1]
  def change
    create_table :attends do |t|
      t.references :user, index: true
      t.references :event, index: true
      t.string :attend_type
      t.string :comment

      t.timestamps
    end
  end
end
