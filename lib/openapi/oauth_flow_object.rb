module Openapi
  class OauthFlowObject < BaseObject
    def authorization_url
      data["authorizationUrl"]
    end

    def token_url
      data["tokenUrl"]
    end

    def refresh_url
      data["refreshUrl"]
    end

    def scopes
      data["scopes"]
    end
  end
end
