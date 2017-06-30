module Openapi
  class ServerObject < BaseObject
    def url
      data["url"]
    end

    def description
      data["description"]
    end

    def variables
      build_object_map(:variables, ServerVariableObject)
    end
  end
end
