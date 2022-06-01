class AddContractAmount < ActiveRecord::Migration[7.0]
  def change
    add_column :contracts, :amount, :float
  end
end
