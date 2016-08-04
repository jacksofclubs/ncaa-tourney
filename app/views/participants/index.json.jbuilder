json.array!(@participants) do |participant|
  json.extract! participant, :id, :first_name, :last_name, :short_name, :phone_number, :email, :image_file, :points, :ranking, :playing
  json.url participant_url(participant, format: :json)
end
