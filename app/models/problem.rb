# frozen_string_literal: true

class Problem < ApplicationRecord
  has_many :problem_categories
  has_many :categories, through: :problem_categories

  validates :level, inclusion: { in: Enums::Level.values }

  bind_inum :level, Enums::Level
end
