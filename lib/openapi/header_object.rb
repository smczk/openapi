require "openapi/referable"

module Openapi
  class HeaderObject < BaseObject
    include Referable

    def allow_empty_value
      data["allow_empty_value"]
    end

    def allow_reserved
      data["allow_reserved"]
    end

    def content
      data["content"]
    end

    def deprecated
      data["deprecated"]
    end

    def description
      data["description"]
    end

    def example
      data["example"]
    end

    def examples
      data["examples"]
    end

    def explode
      data["explode"]
    end

    def in
      data["in"]
    end

    def name
      data["name"]
    end

    def required
      data["required"]
    end

    def schema
      SchemaObject.new(source, pointer + "/schema")
    end

    def style
      data["style"]
    end

    def required?
      !!required
    end

    def has_schema?
      !!schema
    end
  end
end
