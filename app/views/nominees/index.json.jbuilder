json.array!(@nominees) do |nominee|
  json.extract! nominee, :id, :photo, :name, :number, :votes
  json.url nominee_url(nominee, format: :json)
end
