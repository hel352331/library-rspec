# frozen_string_literal: true

class Order
  include Validator
  attr_reader :book, :reader, :date

  def initialize(book, reader, date)
    validate(book, reader, date)
    @book = book
    @reader = reader
    @date = date
  end

  private

  def validate(book, reader, date)
    check_class(book, Book)
    check_class(reader, Reader)
    check_class(date, Time)
  end
end
