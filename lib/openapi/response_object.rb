require "openapi/referable"

module Openapi
  class ResponseObject < BaseObject
    include Referable

    def content
      build_object_map(:content, MediaTypeObject)
    end

    def description
      data["description"]
    end

    def headers
      build_object_map(:headers, HeaderObject)
    end

    def links
      build_object_map(:links, LinkObject)
    end
  end

  class ResponseValidator
    def initialize(schema)
      @schema = schema
    end

    def self.validate(schema, env)
      new(schema).validate(data)
    end

    def validate(data)
      ContentValidator.validate(schema["content"], response)
      HeadersValidator.validate(schema["headers"], response)
    end

    private

    def response
      @response ||= Rack::Response.new(env)
    end

    class ContentValidator
      def initialize(schema, response)
        @schema = schema
        @response = response
      end

      def self.validate(schema, data)
        new(schema).validate(data)
      end

      def validate(data)

      end
    end

    class HeadersValidator
      def initialize(schema, response)
        @schema = schema
        @response = response
      end

      def self.validate(schema, data)
        new(schema).validate(data)
      end

      def validate(data)
      end
    end
  end
end
