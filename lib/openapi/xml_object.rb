module Openapi
  class ComponentsObject < BaseObject
    def name
      data["name"]
    end

    def namespace
      data["namespace"]
    end

    def prefix
      data["prefix"]
    end

    def attribute
      data["attribute"]
    end

    def wrapped
      data["wrapped"]
    end
  end
end
