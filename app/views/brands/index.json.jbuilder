json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :websites, :email, :description, :phone, :user_id
  json.url brand_url(brand, format: :json)
end
