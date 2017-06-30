require "openapi/enumerable_object"

module Openapi
  class OauthFlowsObject < EnumerableObject
    def element_class
      OauthFlowObject
    end
  end
end
