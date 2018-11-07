# frozen_string_literal: true

FactoryBot.define do
  factory :library do
    after(:build) do |library|
      book   = build(:book)
      reader = build(:reader)

      library.books   << book
      library.readers << reader
      library.authors << book.author
      library.orders  << build(:order, book: book, reader: reader)
    end
  end
end
