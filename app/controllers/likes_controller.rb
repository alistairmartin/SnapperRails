class LikesController < ApplicationController

    def create

      

      @photo = Photo.find(params[:photo_id])

      # binding.pry

      @like = Like.new
      @like.user_id = current_user.id
      @like.photo_id = @photo.id


      if @like.save

        # data = { like_count: @photo.like_count }
        data = { message: 'yo' }
        render json: data, status: 201
      else
        data = { message: 'nope' }
        render json: data, status: 201
      end
    end

  end
