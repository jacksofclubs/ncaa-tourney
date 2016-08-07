class AddParticipantIdToTeams < ActiveRecord::Migration[5.0]
  def change
  	# adds column participant_id, which will be used as a foreign key
    add_column :teams, :participant_id, :integer
  end
end
