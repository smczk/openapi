module Openapi
  class ComponentsObject < BaseObject
    def callbacks
      build_object_map(:callbacks, CallbackObject)
    end

    def examples
      build_object_map(:examples, ExampleObject)
    end

    def headers
      build_object_map(:headers, HeaderObject)
    end

    def links
      build_object_map(:links, LinkObject)
    end

    def parameters
      build_object_map(:parameters, ParameterObject)
    end

    def request_bodies
      build_object_map(:requestBodies, ParameterObject)
    end

    def responses
      build_object_map(:responses, ResponseObject)
    end

    def schemas
      build_object_map(:schemas, SchemaObject)
    end

    def security_schemes
      build_object_map(:securitySchemes, SecuritySchemaObject)
    end
  end
end
