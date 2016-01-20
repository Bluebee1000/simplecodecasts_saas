class ProfilesController < ApplicationController
	def new
		# form for each user to fill out there own profile.
		@user = User.find( params[:user_id] )
		@profile = @user.build_profile
	end
	
	def create
		@user = User.find( params[:user_id] )
		@profile = @user.build_profile(profile_params)
		if @profile.save
			flash[:success] = "Profile updated successfully!"
			redirect_to user_path( params[User_id] )	
		else
			
		end
	end
	
	private
		def profile_params
			params.require(:profile).permit(:first_name, :last_name, :job_title, :phone_number, :contact_email, :description)
		end
end