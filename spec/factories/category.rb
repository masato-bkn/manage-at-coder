# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    name { Enums::Level::A }
  end
end
