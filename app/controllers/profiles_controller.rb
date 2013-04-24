class ProfilesController < ApplicationController
  def show
  	@user = User.find_by_profile_name(params[:id])
  	if @user
  		@posts = Post.all
  		render action: :show
  	else
  		
  
  	render file: 'public/404', post: 404, formats: [:html]
    end
  end
end
