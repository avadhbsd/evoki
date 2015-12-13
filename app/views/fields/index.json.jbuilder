json.array!(@fields) do |field|
  json.extract! field, :id, :name, :type, :customer_id, :active, :position
  json.url field_url(field, format: :json)
end
