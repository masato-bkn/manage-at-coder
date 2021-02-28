# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    value { Enums::Level::A }
  end
end
