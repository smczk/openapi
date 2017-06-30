module Openapi
  module Referable
    def initialize(source, pointer)
      super
      @pointer = data["$ref"] if data.key?("$ref")
    end

    private

    def ref
      data["$ref"]
    end
  end
end
