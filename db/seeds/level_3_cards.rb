module Level3Cards
	path = './images/level3/'

	cards = [
			{
				level: 3,
				image: path + 'IMG_0001.jpg',
				color: 'white',
				points: 4,
				cost: {
					white: 3,
					red: 3,
					brown: 6
				}
			},
			{
				level: 3,
				image: path + 'IMG_0002.jpg',
				color: 'red',
				points: 4,
				cost: {
					blue: 3,
					green: 6,
					red: 3
				}
			},
			{
				level: 3,
				image: path + 'IMG_0003.jpg',
				color: 'red',
				points: 3,
				cost: {
					white: 3,
					blue: 5,
					green: 3,
					brown: 3
				}
			},
			{
				level: 3,
				image: path + 'IMG_0004.jpg',
				color: 'green',
				points: 4,
				cost: {
					blue: 7
				}
			},
			{
				level: 3,
				image: path + 'IMG_0005.jpg',
				color: 'green',
				points: 5,
				cost: {
					blue: 7,
					green: 3
				}
			},
			{
				level: 3,
				image: path + 'IMG_0006.jpg',
				color: 'blue',
				points: 4,
				cost: {
					white: 6,
					blue: 3,
					brown: 3
				}
			},
			{
				level: 3,
				image: path + 'IMG_0007.jpg',
				color: 'blue',
				points: 5,
				cost: {
					white: 7,
					blue: 3
				}
			},
			{
				level: 3,
				image: path + 'IMG_0008.jpg',
				color: 'green',
				points: 3,
				cost: {
					white: 5,
					blue: 3,
					red: 3,
					brown: 3
				}
			},
			{
				level: 3,
				image: path + 'IMG_0009.jpg',
				color: 'blue',
				points: 4,
				cost: {
					white: 7
				}
			},
			{
				level: 3,
				image: path + 'IMG_0010.jpg',
				color: 'red',
				points: 0,
				cost: {
					green: 7
				}
			},
			{
				level: 3,
				image: path + 'IMG_0011.jpg',
				color: 'brown',
				points: 3,
				cost: {
					white: 3,
					blue: 3,
					green: 5,
					red: 3
				}
			},
			{
				level: 3,
				image: path + 'IMG_0012.jpg',
				color: 'white',
				points: 4,
				cost: {
					red: 7
				}
			},
			{
				level: 3,
				image: path + 'IMG_0013.jpg',
				color: 'white',
				points: 5,
				cost: {
					white: 3,
					brown: 7
				}
			},
			{
				level: 3,
				image: path + 'IMG_0014.jpg',
				color: 'green',
				points: 4,
				cost: {
					white: 3,
					blue: 6,
					green: 3
				}
			},
			{
				level: 3,
				image: path + 'IMG_0015.jpg',
				color: 'brown',
				points: 4,
				cost: {
					green: 3,
					red: 6,
					brown: 3
				}
			},
			{
				level: 3,
				image: path + 'IMG_0016.jpg',
				color: 'white',
				points: 3,
				cost: {
					blue: 3,
					green: 3,
					red: 5,
					brown: 3
				}
			},
			{
				level: 3,
				image: path + 'IMG_0017.jpg',
				color: 'brown',
				points: 5,
				cost: {
					red: 7,
					brown: 3
				}
			},
			{
				level: 3,
				image: path + 'IMG_0018.jpg',
				color: 'white',
				points: 4,
				cost: {
					brown: 7
				}
			},
			{
				level: 3,
				image: path + 'IMG_0019.jpg',
				color: 'blue',
				points: 3,
				cost: {
					white: 3,
					green: 3,
					red: 3,
					brown: 5
				}
			},
			{
				level: 3,
				image: path + 'IMG_0020.jpg',
				color: 'red',
				points: 5,
				cost: {
					green: 7,
					red: 3
				}
			}
		];

	# puts Dir.pwd
	# Changes to current directory to use relative path
	Dir.chdir(File.dirname(__FILE__))


	cards.each { |card| 

		new_card = Card.new({
			:level => card[:level],
    		:color => card[:color],
    		:points => card[:points],
			:cost_white => card[:cost][:white],
    		:cost_blue => card[:cost][:blue],
    		:cost_green => card[:cost][:green],
    		:cost_red => card[:cost][:red],
    		:cost_brown => card[:cost][:brown],
    		:image => File.open(card[:image])
		})

		new_card.save! 
	}
end