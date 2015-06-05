class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
    	t.text :level
    	t.text :color
    	t.integer :points
    	t.text :cost

      	t.timestamps null: false
    end
  end
end
