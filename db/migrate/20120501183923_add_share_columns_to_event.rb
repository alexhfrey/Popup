class AddShareColumnsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :share_1, :text
    add_column :events, :share_2, :text
    add_column :events, :share_3, :text
    add_column :events, :share_4, :text
    add_column :events, :share_5, :text
    add_column :events, :share_tags, :text
  end
end
