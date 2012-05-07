class TryThisChangeAgain < ActiveRecord::Migration
	def change
    change_table(:events) do |t|
      t.remove :facebook
      t.text :facebook
     
    end
	end
  
end
