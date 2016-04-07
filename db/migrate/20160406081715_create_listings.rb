class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.string :user_address
      t.integer :price
      t.string :location
      t.text :description
      t.integer :no_of_guest
      t.string :home_type
      t.string :room_type
      t.string :no_of_bed
      t.string :no_of_bathroom
      t.date :availability
      t.date :available_until
    end
  end
end
