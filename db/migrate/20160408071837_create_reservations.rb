class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.string :listing_id
      t.integer :price
      t.string :location
      t.integer :no_of_guest
      t.string :home_type
      t.string :room_type
      t.integer :no_of_bed
      t.integer :no_of_room
      t.integer :no_of_bathroom
      t.date :check_in
      t.date :check_out
    end
  end
end
