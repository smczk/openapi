require "openapi/enumerable_object"

module Openapi
  class ResponsesObject < EnumerableObject
    def element_class
      ResponseObject
    end
  end
end
