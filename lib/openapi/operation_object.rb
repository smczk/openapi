module Openapi
  class OperationObject < BaseObject
    def callbacks
      build_object_map(:callbacks, CallbackObject)
    end

    def deprecated
      data["deprecated"]
    end

    def description
      data["description"]
    end

    def external_docs
      ExternalDocumentationObject.new(source, pointer + "/externalDocs")
    end

    def operation_id
      data["operationId"]
    end

    def parameters
      build_object_list(:parameters, ParameterObject)
    end

    def request_body
      RequestBodyObject.new(source, pointer + "/requestBody")
    end

    def responses
      ResponsesObject.new(source, pointer + "/responses")
    end

    def security
      build_object_list(:security, SecurityRequirementObject)
    end

    def servers
      build_object_list(:servers, ServerObject)
    end

    def summary
      data["summary"]
    end

    def tags
      data["tags"]
    end
  end
end
