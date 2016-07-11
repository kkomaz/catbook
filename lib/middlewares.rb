class JsonApiDeserializer
  def initialize(app)
    @app = app
  end
  def call(env)
    params = env["action_dispatch.request.request_parameters"]
    attributes = ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    resource = params.dig('data').delete('type').singularize
    params.dig('data').delete('attributes')
    result = params.dig('data').each_with_object({resource: attributes}) do |(relationship, attrs), result|
      result["#{relationship}_attributes"] = attrs.map {|attr| attr.dig('data', 'attributes')}
    end
    env["action_dispatch.request.request_parameters"] = result
    @app.call(env)
  end
end
