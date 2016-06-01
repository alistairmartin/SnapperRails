class Photo < ActiveRecord::Base
    has_many :likes
  end
