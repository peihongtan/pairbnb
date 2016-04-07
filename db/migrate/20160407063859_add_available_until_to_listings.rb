class AddAvailableUntilToListings < ActiveRecord::Migration
  def change
    add_column :listings, :available_until, :date
  end
end
