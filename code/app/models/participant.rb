class Participant < ApplicationRecord
	# each participant can own many teams, at least 8 or 9
	has_many :teams
	# the bracket will contain 8 active participants
	belongs_to :bracket, required: false
end
