# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

   User.destroy_all
   User.create(name: 'Ali', email: "ali@ali.com", password: "123")
   User.create(name: 'Ali2', email: "ali2@ali.com", password: "123")

   Photo.destroy_all
   Photo.create(name: 'Boaty', image_url: "http://www.alistairmartinphotography.com/images/img_6004.jpg", description: "123", user: "1")
   Photo.create(name: 'Churchy', image_url: "http://www.alistairmartinphotography.com/images/img_2581%20(2).jpg", description: "123", user: "2")

   u_first = User.first
   p_first = Photo.first
   u_last = User.last
   p_last = Photo.last

   Like.destroy_all
   Like.create(user_id: u_first.id, photo_id: p_first.id)
   Like.create(user_id: u_last.id, photo_id: p_first.id)
   Like.create(user_id: u_first.id, photo_id: p_first.id)
