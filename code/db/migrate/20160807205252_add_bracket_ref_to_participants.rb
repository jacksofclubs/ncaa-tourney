class AddBracketRefToParticipants < ActiveRecord::Migration[5.0]
  def change
  	# sets bracket_id as a foreign key
  	add_foreign_key :participants, :brackets
  end
end
