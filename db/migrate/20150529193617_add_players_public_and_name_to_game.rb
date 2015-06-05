class AddPlayersPublicAndNameToGame < ActiveRecord::Migration
  def change
  	change_table :games do |t|
  		t.string :name
  		t.string :privacy
  		t.integer :num_players
  		t.string :player1
  		t.string :player2
  		t.string :player3
  		t.string :player4
  		t.string :status
  		t.string :whose_turn
  		t.string :game_state
  	end
  end
end
