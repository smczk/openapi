require "openapi/enumerable_object"

module Openapi
  class PathsObject < EnumerableObject
    def element_class
      PathItemObject
    end
  end
end
