json.extract! datum, :id, :author_id, :name, :amount, :created_at, :updated_at
json.url datum_url(datum, format: :json)
