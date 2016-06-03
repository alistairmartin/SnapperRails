class Photo < ActiveRecord::Base
    has_many :likes


    def liked_by?(user)
      !user.likes.where(photo_id: self.id).empty?
    end

end
