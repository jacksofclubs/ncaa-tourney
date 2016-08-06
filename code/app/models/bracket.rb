class Bracket < ApplicationRecord
	# each bracket will own 8 participants
	has_many :participants
end
