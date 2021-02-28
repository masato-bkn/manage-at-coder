class ChangeColumnsAddUniquenessOnCategory < ActiveRecord::Migration[6.0]
  def change
    change_column :categories, :value, :string, uniqueness: true
  end
end
