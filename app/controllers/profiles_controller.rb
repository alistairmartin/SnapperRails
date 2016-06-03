class ProfilesController < ApplicationController

  def show
    redirect_to '/login' unless  logged_in?
    @user = current_user


    @user_photos = Photo.where(user: current_user)



  end
end
