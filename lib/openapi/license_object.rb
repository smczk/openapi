module Openapi
  class LicenseObject < BaseObject
    def name
      data["name"]
    end

    def url
      data["url"]
    end
  end
end
