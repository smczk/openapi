module Openapi
  class ServerVariableObject < BaseObject
    def enum
      data["enum"]
    end

    def default
      data["default"]
    end

    def description
      data["description"]
    end
  end
end
