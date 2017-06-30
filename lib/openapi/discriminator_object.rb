module Openapi
  class DiscriminatorObject < BaseObject
    def property_name
      data["propertyName"]
    end

    def mapping
      data["mapping"]
    end
  end
end
