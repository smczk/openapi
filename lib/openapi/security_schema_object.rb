module Openapi
  class SecuritySchemaObject < BaseObject
    include Referable

    def type
      data["type"]
    end

    def description
      data["description"]
    end

    def name
      data["name"]
    end

    def in
      data["in"]
    end

    def scheme
      data["scheme"]
    end

    def bearer_format
      data["bearerFormat"]
    end

    def flows
      OauthFlowsObject.new(source, pointer + "/flows")
    end

    def open_id_connect_url
      data["openIdConnectUrl"]
    end
  end
end
