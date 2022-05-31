class Contracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.boolean :executed
      t.integer :general_contractor_id
      t.integer :project_id
      t.integer :subcontractor_id
    end
  end
end
