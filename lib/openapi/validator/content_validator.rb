module Openapi
  class ContentValidator
    attr_reader :response, :specs

    def initialize(response, specs = nil)
      @response = response
      @specs = specs
    end

    def self.validate!(response, specs)
      new(response).validate!(specs)
    end

    def validate!
    end

    def validate
      specs.map do |key, value|

      end
    end
  end
end
