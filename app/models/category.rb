# frozen_string_literal: true

class Category < ApplicationRecord
  validates :value, presence: true, uniqueness: { case_sensitive: false }

  before_save { value.strip! }
end
