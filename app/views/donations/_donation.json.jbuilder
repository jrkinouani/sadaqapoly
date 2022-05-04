json.extract! donation, :id, :price, :pack_id, :created_at, :updated_at
json.url donation_url(donation, format: :json)
