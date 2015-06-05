module NoblesCards
	path = './images/nobles/'

	cards = [
      {
        level: 4,
        image: path + 'IMG_0001.jpg',
        points: 3,
        cost: {
            red: 4,
            brown: 4
        }
      },
      {
        level: 4,
        image: path + 'IMG_0002.jpg',
        points: 3,
        cost: {
            green: 3,
            red: 3,
            brown: 3
        }
      },
      {
        level: 4,
        image: path + 'IMG_0003.jpg',
        points: 3,
        cost: {
            white: 3,
            red: 3,
            brown: 3
        }
      },
      {
        level: 4,
        image: path + 'IMG_0004.jpg',
        points: 3,
        cost: {
            white: 4,
            blue: 4
        }
      },
      {
        level: 4,
        image: path + 'IMG_0005.jpg',
        points: 3,
        cost: {
            white: 3,
            blue: 3,
            green: 3
        }
      },
      {
        level: 4,
        image: path + 'IMG_0006.jpg',
        points: 3,
        cost: {
            blue: 4,
            green: 4
        }
      },
      {
        level: 4,
        image: path + 'IMG_0007.jpg',
        points: 3,
        cost: {
            white: 3,
            blue: 3,
            brown: 3
        }
      },
      {
        level: 4,
        image: path + 'IMG_0008.jpg',
        points: 3,
        cost: {
            white: 4,
            brown: 4
        }
      },
      {
        level: 4,
        image: path + 'IMG_0009.jpg',
        points: 3,
        cost: {
            green: 4,
            red: 4
        }
      },
      {
        level: 4,
        image: path + 'IMG_0010.jpg',
        points: 3,
        cost: {
            blue: 3,
            green: 3,
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