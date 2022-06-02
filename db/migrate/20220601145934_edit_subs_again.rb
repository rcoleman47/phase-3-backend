class EditSubsAgain < ActiveRecord::Migration[7.0]
  def change
    remove_column :subcontractors, :password_digest, :decimal
    add_column :subcontractors, :phone_number, :string
  end
end
