class ProfileController < ApplicationController

  def show
    redirect_to '/login' unless  logged_in?


    @user = current_user


  end
end
