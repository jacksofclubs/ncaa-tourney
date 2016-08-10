class AddBracketIdToParticipants < ActiveRecord::Migration[5.0]
  def change
  	# adds column bracket_id, which will be used as a foreign key
    add_column :participants, :bracket_id, :integer  	
  end
end
