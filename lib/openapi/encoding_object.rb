module Openapi
  class EncodingObject < BaseObject
    def content_type
      data["contentType"]
    end

    def headers
      build_object_map(:headers, HeaderObject)
    end

    def style
      data["style"]
    end

    def explode
      data["explode"]
    end

    def allow_reserved
      data["allowReserved"]
    end
  end
end
