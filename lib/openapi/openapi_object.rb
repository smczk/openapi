module Openapi
  class OpenapiObject < BaseObject
    def openapi
      data["openapi"]
    end

    def info
      InfoObject.new(source, pointer + "/info")
    end

    def servers
      build_object_list(:servers, ServerObject)
    end

    def paths
      PathsObject.new(source, pointer + "/paths")
    end

    def components
      ComponentsObject.new(source, pointer + "/components")
    end

    def security
      build_object_list(:security, SecurityRequirementObject)
    end

    def tags
      build_object_list(:tags, TagObject)
    end

    def external_doc
      ExternalDocumentationObject.new(source, pointer + "/externalDoc")
    end
  end
end
