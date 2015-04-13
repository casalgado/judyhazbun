class Section < ActiveRecord::Base

	# Associations

	has_many :graphics

	# Virtual Attributes

	attr_accessor :swap_1, :swap_2

	# Methods



end
