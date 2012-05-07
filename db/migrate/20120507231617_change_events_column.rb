class ChangeEventsColumn < ActiveRecord::Migration
  class CreateEvents < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.drop :facebook
      t.text :facebook
     
    end
  end
end

end
