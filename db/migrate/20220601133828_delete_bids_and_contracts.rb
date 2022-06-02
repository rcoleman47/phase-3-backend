class DeleteBidsAndContracts < ActiveRecord::Migration[7.0]
  def change
    drop_table :bids
    drop_table :contracts
  end
end
