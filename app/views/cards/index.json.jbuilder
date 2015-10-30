json.array!(@cards) do |card|
  json.extract! card, :id, :name, :price, :revenue, :owner, :set_size, :group
  json.url card_url(card, format: :json)
end
