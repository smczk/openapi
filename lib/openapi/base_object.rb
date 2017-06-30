module Openapi
  class BaseObject
    attr_reader :source, :pointer

    def initialize(source, pointer)
      @source = source
      @pointer = pointer
    end

    def data
      resolve_pointer(pointer) || {}
    end

    def resolve_pointer(pointer)
      JsonPointer.evaluate(source, pointer)
    end

    def inspect
      to_s
    end

    def build_object_map(key, object_class)
      if (map = data[key.to_s]) && map.is_a?(Hash)
        map.keys.inject({}) do |hash, string|
          escaped_string = string.gsub(/~/, "~0").gsub(/\//, "~1")
          hash[string] = object_class.new(source, pointer + "/#{key}/#{escaped_string}")
          hash
        end
      else
        {}
      end
    end

    def build_object_list(key, object_class)
      if (list = data[key.to_s]) && list.is_a?(Array)
        list.map.with_index do |value, index|
          object_class.new(source, pointer + "/#{key}/#{index}")
        end
      else
        []
      end
    end
  end
end
