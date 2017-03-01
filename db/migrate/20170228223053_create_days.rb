class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :days
      t.integer :start_time
      t.integer :end_time

      t.timestamps null: false
    end
  end
end
