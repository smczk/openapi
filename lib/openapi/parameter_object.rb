module Openapi
  class ParameterObject < BaseObject
    include Referable

    def allowEmptyValu
      data["allow_empty_value"]
    end

    def allowReserved
      data["allow_reserved"]
    end

    def content
      build_object_map(:content, MediaTypeObject)
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
      build_object_map(:examples, ExampleObject)
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

    def in_cookie?
      self.in == "cookie"
    end

    def in_header?
      self.in == "header"
    end

    def in_path?
      self.in == "path"
    end

    def in_query?
      self.in == "query"
    end
  end
end
