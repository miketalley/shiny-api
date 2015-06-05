class AddColorCostsToCards < ActiveRecord::Migration
  def change
    change_table :cards do |t|
      t.integer :cost_white
      t.integer :cost_blue
      t.integer :cost_green
      t.integer :cost_red
      t.integer :cost_brown
    end
  end
end
