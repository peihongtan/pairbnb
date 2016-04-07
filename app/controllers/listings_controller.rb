class ListingsController < ApplicationController
	def new
		@listing = Listing.new
	end 

	def form 
	end 

	def create
	# byebug
    @listing = Listing.new(listing_params)
    	if @listing.save
        	redirect_to root_path
        else
        	render :new
      end
	end 

  private
	def listing_params
		params.require(:listing).permit(:user_address, :price, :location, :description, :no_of_guest, :home_type, :room_type, :no_of_bed, :no_of_bathroom, :availability, :available_until).merge(user_id: current_user.id)
	end 
end

