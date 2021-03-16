class RenameColumnsOnCategory < ActiveRecord::Migration[6.0]
  def change
    rename_column :categories, :value, :name
  end
end
