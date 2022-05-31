class LineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.integer :number
      t.string :unit
      t.float :cost_per_unit
      t.float :total_cost
      t.boolean :subbed_out
      t.integer :estimate_id
    end
  end
end
