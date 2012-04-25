class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :city
      t.string :name
      t.string :facebook_id
      t.string :token
      t.string :referral_campaign
      t.string :referral_source

      t.timestamps
    end
  end
end
