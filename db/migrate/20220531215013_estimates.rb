class Estimates < ActiveRecord::Migration[7.0]
  def change
    create_table :estimates do |t|
      t.float :total
      t.integer :project_id
      t.timestamps
    end
  end
end
