module Jekyll
  module Filters
    def where(input, property, value)
      return input unless input.is_a?(Enumerable)
      input = input.values if input.is_a?(Hash)
      input.select { |object| Array(item_property(object, property)).map(&:to_s).include?(value.to_s) }
    end
  end
end
