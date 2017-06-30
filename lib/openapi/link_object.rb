module Openapi
  class LinkObject < BaseObject
    include Referable

    def operation_ref
      data["operationRef"]
    end

    def operation_id
      data["operationId"]
    end

    def parameters
      data["parameters"]
    end

    def request_body
      data["requestBody"]
    end

    def description
      data["description"]
    end

    def server
      ServerObject.new(source, pointer + "/server")
    end
  end
end
