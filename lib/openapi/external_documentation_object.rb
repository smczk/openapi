module Openapi
  class ExternalDocumentationObject < BaseObject
    def description
      data["description"]
    end

    def url
      data["url"]
    end    
  end
end
