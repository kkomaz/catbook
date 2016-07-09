# Serailize data to JSON API format
ActiveModelSerializers.config.adapter = :json_api

# JSON API mime type when receiving data (client POST to the server)
api_mime_types = %W(
  application/vnd.api+json
  text/x-json
  application/json
)
Mime::Type.register 'application/vnd.api+json', :json, api_mime_types  
