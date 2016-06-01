class LikesController < ApplicationController

    def create
      @Photo = Photo.find(params[:photo_id])

      # binding.pry

      @like = Like.new
      @like.user_id = User.first.id
      @like.dish_id = @dish.id
      @like.save

      data = { like_count: @dish.like_count }

      render json: data, status: 201
    end

  end
