require "openapi/referable"

module Openapi
  class SchemaObject < BaseObject
    include Referable

    def additional_properties
      data["additionalProperties"]
    end

    def all_of
      data["allOf"]
    end

    def any_of
      data["anyOf"]
    end

    def default
      data["default"]
    end

    def deprecated
      data["deprecated"]
    end

    def description
      data["description"]
    end

    def discriminator
      data["discriminator"]
    end

    def enum
      data["enum"]
    end

    def example
      data["example"]
    end

    def exclusive_maximum
      data["exclusiveMaximum"]
    end

    def exclusive_minimum
      data["exclusiveMinimum"]
    end

    def external_docs
      ExternalDocumentationObject.new(source, pointer + "/externalDocs")
    end

    def format
      data["format"]
    end

    def items
      SchemaObject.new(source, pointer + "/items") if data["items"]
    end

    def max_items
      data["maxItems"]
    end

    def max_length
      data["maxLength"]
    end

    def max_properties
      data["maxProperties"]
    end

    def maximum
      data["maximum"]
    end

    def min_items
      data["minItems"]
    end

    def min_length
      data["minLength"]
    end

    def min_properties
      data["minProperties"]
    end

    def minimum
      data["minimum"]
    end

    def multiple_of
      data["multipleOf"]
    end

    def not
      data["not"]
    end

    def nullable
      data["nullable"]
    end

    def one_of
      data["oneOf"]
    end

    def pattern
      data["pattern"]
    end

    def properties
      data["properties"].inject({}) do |hash, (key, value)|
        hash[key] = SchemaObject.new(source, pointer + "/properties/#{key}")
        hash
      end
    end

    def read_only
      data["readOnly"]
    end

    def required
      data["required"]
    end

    def title
      data["title"]
    end

    def type
      data["type"]
    end

    def unique_items
      data["uniqueItems"]
    end

    def write_only
      data["writeOnly"]
    end

    def xml
      XmlObject.new(source, pointer + "/xml")
    end

    def example_body
      body = case type
        when "array"
          example_array_body
        when "object"
          example_object_body
        end

      JSON.pretty_generate(body)
    end

    private

    def example_array_body
      item = items.properties.inject({}) do |hash, (key, schema)|
        hash[key] = schema.example || schema.example_body
        hash
      end

      [item]
    end

    def example_object_body
      properties.inject({}) do |hash, (key, schema)|
        hash[key] = schema.example || schema.example_body
        hash
      end
    end
  end
end
