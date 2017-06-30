require "json_schema"
require "openapi/version"
require "openapi/base_object"
require "openapi/components_object"
require "openapi/contact_object"
require "openapi/discriminator_object"
require "openapi/encoding_object"
require "openapi/example_object"
require "openapi/external_documentation_object"
require "openapi/header_object"
require "openapi/info_object"
require "openapi/license_object"
require "openapi/link_object"
require "openapi/media_type_object"
require "openapi/oauth_flow_object"
require "openapi/oauth_flows_object"
require "openapi/openapi_object"
require "openapi/operation_object"
require "openapi/parameter_object"
require "openapi/path_item_object"
require "openapi/paths_object"
require "openapi/request_body_object"
require "openapi/response_object"
require "openapi/responses_object"
require "openapi/schema_object"
require "openapi/security_requirement_object"
require "openapi/security_schema_object"
require "openapi/server_object"
require "openapi/server_variable_object"
require "openapi/tag_object"
require "openapi/xml_object"

module Openapi
  def self.parse(sorce)
    OpenapiObject.new(source, "#")
  end
end