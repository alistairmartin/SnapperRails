class PhotosController < ApplicationController
  def index

  end
  def create
    photo=Photo.new
    photo.name = params[:name]
    photo.image_url = params[:image_url]
    photo.description = params[:description]
    # photo.user_id = current_user.id
    photo.save
    if photo.save
      redirect_to '/'
    else
      redirect_to '/'
    end
  end
end
