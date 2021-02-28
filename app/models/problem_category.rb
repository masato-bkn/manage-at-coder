# frozen_string_literal: true

class ProblemCategory < ApplicationRecord
  belongs_to :problem
  belongs_to :category
end
