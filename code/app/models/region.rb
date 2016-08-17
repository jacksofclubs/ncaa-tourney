class Region < ApplicationRecord
	# each region contains many teams
	has_many :teams
end
