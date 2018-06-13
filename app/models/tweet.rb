class Tweet < ApplicationRecord
	belongs_to :zombie
	validates_presence_of :zombie_id
end
