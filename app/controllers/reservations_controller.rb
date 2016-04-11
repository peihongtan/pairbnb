class ReservationsController < ApplicationController
	def new
		@reservation = Reservation.new
	end 

	def index
		@reservations = current_user.reservations 
	end 

	def create
	# byebug
	@user = current_user
	@listing_id = params.find(:listing_id)
    @reservation = @user.reservations.new(reservation_params)
    # byebug
    	if @reservation.save
        	redirect_to root_path
        else
        	render :new
      end
	end 

	def edit
		@reservation = current_user.reservations.find(params[:id])
	end

	def update 
		@reservation = Reservation.find(params[:id])
		# byebug
		# num_of_photos = params[:listing][:photos].count
		# counter = 0
		# while counter < num_of_photos
		# 	@listing.photos << params[:listing][:photos][counter]
			
		# 	counter += 1
		# end
		# byebug
		# @listing = Listing.update(listing_params)
		# @listing.photos = params[:listing][:photos]
		if @reservation.update(reservation_params)
		# byebug
			redirect_to root_path
		else 
			render :edit
		end
	end 

	def show
		@reservation = Reservation.find(params[:id])
	end 

	private
	def reservation_params
		params.require(:reservation).permit(:check_in, :check_out)
	end
end

