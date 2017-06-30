module Openapi
  class EnumerableObject < BaseObject
    include Enumerable

    def each
      return to_enum unless block_given?

      data.inject({}) do |hash, (key, value)|
        element = build_element(key)
        yield([key, element])

        hash[key] = element
        hash
      end
    end

    def build_element(key)
      escaped_key = key.gsub(/~/, "~0").gsub(/\//, "~1")
      element_class.new(source, pointer + "/#{escaped_key}")
    end

    def element_class
      raise NotImplementedError
    end
  end
end
