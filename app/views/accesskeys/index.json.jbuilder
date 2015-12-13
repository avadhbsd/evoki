json.array!(@accesskeys) do |accesskey|
  json.extract! accesskey, :id, :key, :location_id, :expire_at, :active
  json.url accesskey_url(accesskey, format: :json)
end
