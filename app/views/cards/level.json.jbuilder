json.array!(@cards) do |card|
  json.extract! card, :id, :level, :color, :points, :image
  json.cost do
	unless card.cost_white.nil? 
		json.white card.cost_white
	end
	unless card.cost_blue.nil? 
		json.blue card.cost_blue
	end
	unless card.cost_green.nil? 
		json.green card.cost_green
	end
	unless card.cost_red.nil? 
		json.red card.cost_red
	end
	unless card.cost_brown.nil? 
		json.brown card.cost_brown
	end
  end
  json.url card_url(card, format: :json)
end
