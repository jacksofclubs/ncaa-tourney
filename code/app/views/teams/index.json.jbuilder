json.array!(@teams) do |team|
  json.extract! team, :id, :school_name, :short_name, :image_file, :conference, :mascot, :belongs_to_participant, :seed, :division, :playing
  json.url team_url(team, format: :json)
end
