class RemoveBelongsToParticipantFromTeams < ActiveRecord::Migration[5.0]
  def change
  	remove_column :teams, :belongs_to_participant, :integer
  end
end
