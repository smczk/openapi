module Openapi
  class HeadersValidator
    attr_reader :response, :specs

    def initialize(response)
      @response = response
    end

    def self.validate!(response, specs)
      new(headers).validate!(specs)
    end

    def validate!
    end

    def validate
    end
  end
end
