class Bids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids do |t|
      t.string :scope
      t.float :amount
      t.string :subcontractor_id
      t.integer :estimate_id
    end
  end
end
