class RenameProjectType < ActiveRecord::Migration[7.0]
  def change
    rename_column :projects, :type, :sector
  end
end
