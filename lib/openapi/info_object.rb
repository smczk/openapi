module Openapi
  class InfoObject < BaseObject
    def title
      data["title"]
    end

    def description
      data["description"]
    end

    def terms_of_service
      data["termsOfService"]
    end

    def contact
      ContactObject.new(source, pointer + "/contact")
    end

    def license
      LicenseObject.new(source, pointer + "/license")
    end

    def version
      data["version"]
    end
  end
end
