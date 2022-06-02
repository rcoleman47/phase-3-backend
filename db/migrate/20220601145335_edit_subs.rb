class EditSubs < ActiveRecord::Migration[7.0]
  def change
    change_column :subcontractors, :password_digest, :phone_number
  end
end
