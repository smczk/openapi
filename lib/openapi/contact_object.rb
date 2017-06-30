module Openapi
  class ContactObject < BaseObject
    def name
      data["name"]
    end

    def url
      data["url"]
    end

    def email
      data["email"]
    end
  end
end
