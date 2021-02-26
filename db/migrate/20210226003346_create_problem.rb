# frozen_string_literal: true

class CreateProblem < ActiveRecord::Migration[6.0]
  def change
    create_table :problems do |t|
      t.string :title, null: false
      t.integer :level, null: false
      t.timestamp :date, null: false
    end
  end
end
