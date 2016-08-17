class Team < ApplicationRecord
	# team belongs to participant, but not required
	# this will allow teams to exist without forcing
	# them to be assigned to participants
	belongs_to :participant, required: false
	# each team belongs to a region
	belongs_to :region, required: false
end
