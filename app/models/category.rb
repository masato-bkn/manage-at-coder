# frozen_string_literal: true

class Category < ApplicationRecord
  validates :value, presence: true
end
