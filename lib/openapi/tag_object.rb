module Openapi
  class TagObject < BaseObject
    def name
      data["name"]
    end

    def description
      data["description"]
    end

    def external_docs
      ExternalDocumentationObject.new(source, pointer + "/externalDocs")
    end
  end
end
