class Tweet < ApplicationRecord
	#validates_presence_of :status, ;
	belongs_to :zombie;

end
