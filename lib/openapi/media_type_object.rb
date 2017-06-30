module Openapi
  class MediaTypeObject < BaseObject
    def encoding
      build_object_map(:encoding, EncodingObject)
    end

    def example
      data["example"]
    end

    def examples
      build_object_map(:examples, ExampleObject)
    end

    def schema
      SchemaObject.new(source, pointer + "/schema")
    end
  end
end
