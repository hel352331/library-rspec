# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    date { Faker::Date.backward }

    association :book, strategy: :build
    association :reader, strategy: :build
  end
end
