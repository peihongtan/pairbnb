class ListingsController < ApplicationController
	def new
		@listing = Listing.new
	end 

	def index
		@listings = current_user.listings 
	end 

	def create
	# byebug
	@user = current_user
    @listing = @user.listings.new(listing_params)
    # byebug
    	if @listing.save
        	redirect_to root_path
        else
        	render :new
      end
	end 

	def edit
		@listing = current_user.listings.find(params[:id])
	end

	def update 
		@listing = Listing.find(params[:id])
		# byebug
		# num_of_photos = params[:listing][:photos].count
		# counter = 0
		# while counter < num_of_photos
		# 	@listing.photos << params[:listing][:photos][counter]
			
		# 	counter += 1
		# end
		# byebug
		# @listing = Listing.update(listing_params)
		@listing.photos = params[:listing][:photos]
		if @listing.update(listing_params)
		# byebug
			redirect_to root_path
		else 
			render :edit
		end
	end 

	def show
		@listing = Listing.find(params[:id])
	end 

  private
	def listing_params
		params.require(:listing).permit(:user_address, :price, :location, :description, :no_of_guest, :home_type, :room_type, :no_of_bed, :no_of_bathroom, :availability, :available_until, {photos: []})
	end
end

