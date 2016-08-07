class AddParticipantRefToTeams < ActiveRecord::Migration[5.0]
  def change
  	# sets participant_id as a foreign key
  	add_foreign_key :teams, :participants
  end
end
