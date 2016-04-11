class UsersController < Clearance::SessionsController

	def edit
		@user = current_user
	end

	def update 
		@user = current_user 
		# byebug
		@user.avatar = params[:user][:avatar]
		if @user.save
			redirect_to root_path
		else 
			render :edit
		end
	end 

	def index
		@listings = Listing.all
	end 

	def show
	end 
end