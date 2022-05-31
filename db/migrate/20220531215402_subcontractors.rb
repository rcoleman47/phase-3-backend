class Subcontractors < ActiveRecord::Migration[7.0]
  def change
    create_table :subcontractors do |t|
      t.string :company_name
      t.string :trade
      t.string :address
      t.string :email
      t.string :password
    end
  end
end
