# frozen_string_literal: true

FactoryBot.define do
  factory :problem do
    title { 'hoge' }
    level { 0 }
    date { Time.zone.now }
  end
end
