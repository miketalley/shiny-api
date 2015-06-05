class Card < ActiveRecord::Base
	serialize :cost

	LEVELS = [
		'1',
		'2',
		'3',
		'noble'
	]

	COLORS = [
		'white',
		'blue',
		'green',
		'red',
		'brown'
	]

	POINT_VALUES = Array(0..5)

	COST_VALUES = Array(0..7)

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
