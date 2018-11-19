# frozen_string_literal: true

module Validator
  def check_empty(str)
    raise EmptyStringError if str.empty?
  end

  def check_class(entity, clas)
    raise WrongClassError unless entity.is_a? clas
  end
end
