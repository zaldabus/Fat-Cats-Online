class CreateVotes < ActiveRecord::Migration
  def change
  	create_table :votes do |f|
  		f.integer :post_id
  		f.string :direction
  		f.timestamps
  	end
  end
end
