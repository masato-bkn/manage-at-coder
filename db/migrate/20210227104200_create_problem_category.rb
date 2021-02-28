class CreateProblemCategory < ActiveRecord::Migration[6.0]
  def change
    create_table :problem_categories do |t|
      t.references :problem, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
    end
  end
end
