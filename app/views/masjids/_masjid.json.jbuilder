json.extract! masjid, :id, :name, :city, :desc, :funding_goal, :amount_pledged, :end_date, :created_at, :updated_at
json.url masjid_url(masjid, format: :json)
