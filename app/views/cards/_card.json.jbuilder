json.extract! card, :id, :title, :content, :created_at, :updated_at
json.url card_url(card, format: :json)
