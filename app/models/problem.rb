# frozen_string_literal: true

class Problem < ApplicationRecord
  validates :level, inclusion: { in: Enums::Level.values }

  bind_inum :level, Enums::Level
end
