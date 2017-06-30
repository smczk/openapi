module Openapi
  class ResponseValidator
    attr_reader :response, :schema

    def initialize(response, schema)
      @errors = []
      @response = response
      @schema = schema
    end

    def validate!

    end

    def validate_headers
      schema.headers.map do |name, header|
        if value = response.headers[name]
          if header.has_schema? && !value.is_a?(Integer)
            [false, "Invalid response headers. '#{name}' must be integer value."]
          else
            [true, ""]
          end
        else
          if header.required?
            [false, "Invalid response headers. '#{name}' header is required."]
          else
            [true, ""]
          end
        end
      end
    end

    def validate_headers!
      if validate_headers.all?(&:first)
        true
      else
      end
    end

    def validate_content
    end

    def validate_content!
    end
  end
end
