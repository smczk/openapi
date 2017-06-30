require "openapi/referable"

module Openapi
  class ExampleObject < BaseObject
    include Referable

    def summary
      data["summary"]
    end

    def description
      data["description"]
    end

    def value
      data["value"]
    end

    def external_value
      data["externalValue"]
    end
  end
end
