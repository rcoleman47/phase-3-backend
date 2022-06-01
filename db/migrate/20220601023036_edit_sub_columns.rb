class EditSubColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :subcontractors, :password, :string
    add_column :subcontractors, :password_digest, :string
  end
end
