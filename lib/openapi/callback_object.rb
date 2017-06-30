require "openapi/enumerable_object"

module Openapi
  class CallbackObject < EnumerableObject
    include Referable

    def element_class
      PathItemObject
    end
  end
end
