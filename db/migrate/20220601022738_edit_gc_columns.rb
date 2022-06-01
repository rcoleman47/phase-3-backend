class EditGcColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :general_contractors, :password, :string
    add_column :general_contractors, :password_digest, :string
  end
end
