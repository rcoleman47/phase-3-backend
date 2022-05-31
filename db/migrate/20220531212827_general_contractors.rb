class GeneralContractors < ActiveRecord::Migration[7.0]
  def change
    create_table :general_contractors do |t|
      t.string :company_name
      t.string :address
      t.string :email
      t.string :password
    end
  end
end
