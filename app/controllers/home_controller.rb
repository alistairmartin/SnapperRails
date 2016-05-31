class HomeController < ApplicationController
  def index
    shuffled = Photo.all.shuffle
    @shuffledphotos_6 = shuffled.slice(0..5)
    @shuffledphotos_4 = shuffled.slice(6..9)
    @shuffledphotos_3 = shuffled.slice(10..12)
    @shuffledphotos_2 = shuffled.slice(14..15)
    @shuffledphotos_6_2 = shuffled.slice(16..21)
    @shuffledphotos_4_2 = shuffled.slice(22..25)
    @shuffledphotos_3_2 = shuffled.slice(26..28)
    @shuffledphotos_2_2 = shuffled.slice(29..30)
  end

  def contact
  end
end
