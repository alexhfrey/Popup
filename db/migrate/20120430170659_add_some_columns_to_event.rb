class AddSomeColumnsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :product1_info, :text
    add_column :events, :product2_info, :text
    add_column :events, :product1, :string
    add_column :events, :product2, :string
    add_column :events, :city, :string
    add_column :events, :twitter, :text
    add_column :events, :map, :text
  end
end
