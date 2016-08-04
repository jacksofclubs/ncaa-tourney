json.array!(@brackets) do |bracket|
  json.extract! bracket, :id, :round_of_tourny, :active
  json.url bracket_url(bracket, format: :json)
end
