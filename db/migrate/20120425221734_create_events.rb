class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :brand_name
      t.string :picture1
      t.string :picture2
      t.string :picture3
      t.string :picture4
      t.string :picture5
      t.text :description
      t.date :start
      t.date :end
      t.text :open
      t.text :address
      t.string :tag1
      t.string :website
      t.string :facebook

      t.timestamps
    end
  end
end
