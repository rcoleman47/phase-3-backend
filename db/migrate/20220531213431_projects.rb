class Projects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :location
      t.string :description
      t.string :type
      t.string :phase
      t.integer :size
      t.integer :duration
      t.date :start_date
      t.integer :general_contractor_id
    end
  end
end
