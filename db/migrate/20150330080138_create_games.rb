class CreateGames < ActiveRecord::Migration
  def change
  	create_table :games do |g|
  		g.float :time
  		g.boolean :done, default: false
  		g.timestamps null:false
  	end
  end
end
