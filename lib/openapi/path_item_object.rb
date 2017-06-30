require "openapi/referable"

module Openapi
  class PathItemObject < BaseObject
    include Referable

    HTTP_METHODS = %w(get put post delete options patch head trace)

    def delete
      OperationObject.new(source, pointer + "/delete")
    end

    def description
      data["description"]
    end

    def get
      OperationObject.new(source, pointer + "/get")
    end

    def head
      OperationObject.new(source, pointer + "/head")
    end

    def operation_names
      data.keys & HTTP_METHODS
    end

    def operations
      operation_names.inject({}) do |hash, key|
        hash[key] = send(key)
        hash
      end
    end

    def options
      OperationObject.new(source, pointer + "/options")
    end

    def parameters
      build_object_list(:parameters, ParameterObject)
    end

    def patch
      OperationObject.new(source, pointer + "/patch")
    end

    def post
      OperationObject.new(source, pointer + "/post")
    end

    def put
      OperationObject.new(source, pointer + "/put")
    end

    def servers
      build_object_list(:servers, ServerObject)
    end

    def summary
      data["summary"]
    end

    def trace
      OperationObject.new(source, pointer + "/trace")
    end
  end
end
