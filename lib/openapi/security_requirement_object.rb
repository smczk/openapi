require "openapi/enumerable_object"

module Openapi
  class SecurityRequirementObject < EnumerableObject
    def build_element(key)
      data[key]
    end
  end
end
