module Level2Cards
	path = './images/level2/'

	cards = [
			{
				level: 2,
				image: path + 'IMG_0001.jpg',
				color: 'brown',
				points: 2,
				cost: {
					white: 5
				}
			},
			{
				level: 2,
				image: path + 'IMG_0002.jpg',
				color: 'brown',
				points: 2,
				cost: {
					blue: 1,
					green: 4,
					red: 2
				}
			},
			{
				level: 2,
				image: path + 'IMG_0003.jpg',
				color: 'blue',
				points: 1,
				cost: {
					blue: 2,
					green: 3,
					brown: 3
				}
			},
			{
				level: 2,
				image: path + 'IMG_0004.jpg',
				color: 'brown',
				points: 1,
				cost: {
					white: 3,
					blue: 2,
					green: 2
				}
			},
			{
				level: 2,
				image: path + 'IMG_0005.jpg',
				color: 'white',
				points: 2,
				cost: {
					red: 5,
					brown: 3
				}
			},
			{
				level: 2,
				image: path + 'IMG_0006.jpg',
				color: 'blue',
				points: 2,
				cost: {
					blue: 5
				}
			},
			{
				level: 2,
				image: path + 'IMG_0007.jpg',
				color: 'white',
				points: 2,
				cost: {
					red: 5
				}
			},
			{
				level: 2,
				image: path + 'IMG_0008.jpg',
				color: 'green',
				points: 2,
				cost: {
					white: 4,
					blue: 2,
					brown: 1
				}
			},
			{
				level: 2,
				image: path + 'IMG_0009.jpg',
				color: 'white',
				points: 3,
				cost: {
					white: 6
				}
			},
			{
				level: 2,
				image: path + 'IMG_0010.jpg',
				color: 'red',
				points: 1,
				cost: {
					blue: 3,
					red: 2,
					brown: 3
				}
			},
			{
				level: 2,
				image: path + 'IMG_0011.jpg',
				color: 'green',
				points: 1,
				cost: {
					white: 3,
					green: 2,
					red: 3
				}
			},
			{
				level: 2,
				image: path + 'IMG_0012.jpg',
				color: 'white',
				points: 2,
				cost: {
					green: 1,
					red: 4,
					brown: 2
				}
			},
			{
				level: 2,
				image: path + 'IMG_0013.jpg',
				color: 'white',
				points: 1,
				cost: {
					green: 3,
					red: 2,
					brown: 2
				}
			},
			{
				level: 2,
				image: path + 'IMG_0014.jpg',
				color: 'red',
				points: 2,
				cost: {
					brown: 5
				}
			},
			{
				level: 2,
				image: path + 'IMG_0015.jpg',
				color: 'brown',
				points: 2,
				cost: {
					green: 5,
					red: 3
				}
			},
			{
				level: 2,
				image: path + 'IMG_0016.jpg',
				color: 'green',
				points: 2,
				cost: {
					blue: 5,
					green: 3
				}
			},
			{
				level: 2,
				image: path + 'IMG_0017.jpg',
				color: 'red',
				points: 1,
				cost: {
					white: 2,
					red: 2,
					brown: 3
				}
			},
			{
				level: 2,
				image: path + 'IMG_0018.jpg',
				color: 'brown',
				points: 3,
				cost: {
					brown: 6
				}
			},
			{
				level: 2,
				image: path + 'IMG_0019.jpg',
				color: 'red',
				points: 2,
				cost: {
					white: 3,
					brown: 5
				}
			},
			{
				level: 2,
				image: path + 'IMG_0020.jpg',
				color: 'green',
				points: 2,
				cost: {
					green: 5
				}
			},
			{
				level: 2,
				image: path + 'IMG_0021.jpg',
				color: 'blue',
				points: 2,
				cost: {
					white: 2,
					red: 1,
					brown: 4
				}
			},
			{
				level: 2,
				image: path + 'IMG_0022.jpg',
				color: 'white',
				points: 1,
				cost: {
					white: 2,
					blue: 3,
					red: 3
				}
			},
			{
				level: 2,
				image: path + 'IMG_0023.jpg',
				color: 'blue',
				points: 3,
				cost: {
					blue: 6
				}
			},
			{
				level: 2,
				image: path + 'IMG_0024.jpg',
				color: 'green',
				points: 3,
				cost: {
					green: 6
				}
			},
			{
				level: 2,
				image: path + 'IMG_0025.jpg',
				color: 'red',
				points: 2,
				cost: {
					white: 1,
					blue: 4,
					green: 2
				}
			},
			{
				level: 2,
				image: path + 'IMG_0026.jpg',
				color: 'red',
				points: 3,
				cost: {
					red: 6
				}
			},
			{
				level: 2,
				image: path + 'IMG_0027.jpg',
				color: 'blue',
				points: 2,
				cost: {
					white: 5,
					blue: 3
				}
			},
			{
				level: 2,
				image: path + 'IMG_0028.jpg',
				color: 'brown',
				points: 1,
				cost: {
					white: 3,
					green: 3,
					brown: 2
				}
			},
			{
				level: 2,
				image: path + 'IMG_0029.jpg',
				color: 'blue',
				points: 1,
				cost: {
					blue: 2,
					green: 2,
					red: 3
				}
			},
			{
				level: 2,
				image: path + 'IMG_0030.jpg',
				color: 'green',
				points: 1,
				cost: {
					white: 2,
					blue: 3,
					brown: 2
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