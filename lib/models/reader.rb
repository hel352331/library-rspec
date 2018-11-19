# frozen_string_literal: true

class Reader
  include Validator
  attr_accessor :name, :email, :city, :city, :street, :house

  def initialize(name:, email:, city:, street:, house:)
    validate(name: name, email: email, city: city, street: street, house: house)
    @name = name
    @email = email
    @city = city
    @street = street
    @house = house
  end

  private

  def validate(name:, email:, city:, street:, house:)
    [name, email, city, street].each do |data|
      check_class(data, String)
      check_empty(data)
    end
    check_class(house, Integer)
  end
end
