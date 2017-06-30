module Openapi
  class RequestBodyObject < BaseObject
    include Referable

    def description
      data["description"]
    end

    def content
      build_object_map(:content, MediaTypeObject)
    end

    def required
      data["required"]
    end
  end
end
